class Tower:
    def __init__(self, color, cords):
        self.color = color
        self.cords = cords
        self.isKing = False

        if color == "white":
            self.display = "♖"
        else:
            self.display = "♜"

    king = None

    def possibleMoves(self, board):
        return towerLogic(self, board)

    def createSelf(self):
        return Tower(self.color, self.cords)

class Knight:
    def __init__(self, color, cords):
        self.color = color
        self.cords = cords
        self.isKing = False

        if color == "white":
            self.display = "♘"
        else:
            self.display = "♞"

    king = None

    def possibleMoves(self, board):
        result = []
        movBehaviour = [[2, 1], [2, -1], [1, 2], [-1, 2], [-2, 1], [-2, -1], [1, -2], [-1, -2]]
        for i in movBehaviour:
            temp = [self.cords[0] + i[0], self.cords[1] + i[1]]
            if 0 <= temp[0] < 8 and 0 <= temp[1] < 8:
                if self.color != board[temp[0]][temp[1]].color:
                    result.append(temp)
        return result

    def createSelf(self):
        return Knight(self.color, self.cords)

class Bishop:
    def __init__(self, color, cords):
        self.color = color
        self.cords = cords
        self.isKing = False


        if color == "white":
            self.display = "♗"
        else:
            self.display = "♝"

    king = None

    def possibleMoves(self, board):
        return bishopLogic(self, board)

    def createSelf(self):
        return Bishop(self.color, self.cords)

class Queen:
    def __init__(self, color, cords):
        self.color = color
        self.cords = cords
        self.isKing = False

        if color == "white":
            self.display = "♕"
        else:
            self.display = "♛"

    king = None

    def possibleMoves(self, board):
        result = towerLogic(self, board)
        bishop = bishopLogic(self, board)
        for i in bishop:
            if i not in result:
                result.append(i)
        return result

    def createSelf(self):
        return Queen(self.color, self.cords)

class King:
    def __init__(self, color, cords):
        self.color = color
        self.cords = cords
        self.isKing = True

        if color == "white":
            self.display = "♔"
        else:
            self.display = "♚"

    def inDanger(self, board):
        cords = getKing(self.color, board).cords
        for row in board:
            for j in row:
                if j.color != self.color and j.color is not None:
                    if cords in j.possibleMoves(board):
                        return True
        return False

    def possibleMoves(self, board):
        result = []
        for x in range(-1, 2):
            for y in range(-1, 2):
                if 0 <= self.cords[0] + x < 8 and 0 <= self.cords[1] + y < 8:
                    if self.color != board[self.cords[0] + x][self.cords[1] + y].color:
                        result.append([self.cords[0] + x, self.cords[1] + y])
        return result

    def updateArmy(self, board):
        for i in board:
            for j in i:
                if j.color == self.color:
                    j.king = self

    def createSelf(self):
        return King(self.color, self.cords)

class Pawn:
    def __init__(self, color, cords):
        self.color = color
        self.cords = cords
        self.isKing = False


        if color == "white":
            self.display = "♙"
        else:
            self.display = "♟"

    king = None

    def possibleMoves(self, board):
        result = []
        if 0 < self.cords[0] < 7:
            if self.color == "white":
                if board[self.cords[0] - 1][self.cords[1]].color is None:
                    result.append([self.cords[0] - 1, self.cords[1]])
                    if self.cords[0] == 6 and board[self.cords[0] - 2][self.cords[1]].color is None:
                        result.append([self.cords[0] - 2, self.cords[1]])
                for i in range(-1, 2, 2):
                    if 0 <= self.cords[1] + i < 8:
                        if board[self.cords[0] - 1][self.cords[1] + i].color == "black":
                            result.append([self.cords[0] - 1, self.cords[1] + i])
            else:
                if board[self.cords[0] + 1][self.cords[1]].color is None:
                    result.append([self.cords[0] + 1, self.cords[1]])
                    if self.cords[0] == 1 and board[self.cords[0] + 2][self.cords[1]].color is None:
                        result.append([self.cords[0] + 2, self.cords[1]])
                for i in range(-1, 2, 2):
                    if 0 <= self.cords[1] + i < 8:
                        if board[self.cords[0] + 1][self.cords[1] + i].color == "white":
                            result.append([self.cords[0] + 1, self.cords[1] + i])
        return result

    def createSelf(self):
        return Pawn(self.color, self.cords)

class Free:
    def __init__(self, color, cords):
        self.display = "  "
        self.color = color
        self.cords = cords
        self.isKing = False


    def createSelf(self):
        return Free(self.color, self.cords)


def tryMove(board, piece, move):
    sim = []
    for row in board:
        temp = []
        for i in row:
            temp.append(i.createSelf())
        sim.append(temp)

    sim[move[0]][move[1]] = sim[piece.cords[0]][piece.cords[1]]
    sim[piece.cords[0]][piece.cords[1]].cords = [move[0], move[1]]
    sim[piece.cords[0]][piece.cords[1]] = Free(None, [piece.cords[0], piece.cords[1]])
    return sim

def towerLogic(piece, board):
    result = []
    for i in range(piece.cords[0] + 1, 8):  # down
        if piece.color != board[i][piece.cords[1]].color:
            result.append([i, piece.cords[1]])
            if isEnemy(piece, board[i][piece.cords[1]]):
                break
        else:
            break
    for i in range(piece.cords[0] - 1, -1, -1):  # up
        if piece.color != board[i][piece.cords[1]].color:
            result.append([i, piece.cords[1]])
            if isEnemy(piece, board[i][piece.cords[1]]):
                break
        else:
            break
    for i in range(piece.cords[1] + 1, 8):  # right
        if piece.color != board[piece.cords[0]][i].color:
            result.append([piece.cords[0], i])
            if isEnemy(piece, board[piece.cords[0]][i]):
                break
        else:
            break
    for i in range(piece.cords[1] - 1, -1, -1):  # left
        if piece.color != board[piece.cords[0]][i].color:
            result.append([piece.cords[0], i])
            if isEnemy(piece, board[piece.cords[0]][i]):
                break
        else:
            break
    return result


def bishopLogic(piece, board):
    result = []
    x = piece.cords[0]
    y = piece.cords[1]
    while True:
        x += 1
        y += 1
        if x < 8 and y < 8:
            if piece.color != board[x][y].color:
                result.append([x, y])
                if isEnemy(piece, board[x][y]):
                    break
            else:
                break
        else:
            break

    x = piece.cords[0]
    y = piece.cords[1]
    while True:
        x -= 1
        y += 1
        if x >= 0 and y < 8:
            if piece.color != board[x][y].color:
                result.append([x, y])
                if isEnemy(piece, board[x][y]):
                    break
            else:
                break
        else:
            break

    x = piece.cords[0]
    y = piece.cords[1]
    while True:
        x += 1
        y -= 1
        if x < 8 and y >= 0:
            if piece.color != board[x][y].color:
                result.append([x, y])
                if isEnemy(piece, board[x][y]):
                    break
            else:
                break
        else:
            break

    x = piece.cords[0]
    y = piece.cords[1]
    while True:
        x -= 1
        y -= 1
        if x >= 0 and y >= 0:
            if piece.color != board[x][y].color:
                result.append([x, y])
                if isEnemy(piece, board[x][y]):
                    break
            else:
                break
        else:
            break

    return result


def isEnemy(piece, enemy):
    return piece.color != enemy.color and enemy.color is not None

def getKing(color, board):
    for i in board:
        for j in i:
            if j.isKing and j.color == color:
                return j

