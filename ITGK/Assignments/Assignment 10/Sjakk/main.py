import pieces as p

def createBoard():
    result = []
    #Black side
    blackKing = p.King("black", [0, 4])
    temp = [p.Tower("black", [0, 0]), p.Knight("black", [0, 1]),
            p.Bishop("black", [0, 2]), p.Queen("black", [0, 3]),
            blackKing, p.Bishop("black", [0, 5]),
            p.Knight("black", [0, 6]), p.Tower("black", [0, 7])]
    result.append(temp)
    temp = []
    for i in range(8):
        temp.append(p.Pawn("black", [1, i]))
    result.append(temp)

    #Free space
    for i in range(2, 6):
        temp = []
        for j in range(8):
            temp.append(p.Free(None, [i, j]))
        result.append(temp)

    #White side
    temp = []
    whiteKing = p.King("white", [7, 4])
    for i in range(8):
        temp.append(p.Pawn("white", [6, i]))
    result.append(temp)
    temp = [p.Tower("white", [7, 0]), p.Knight("white", [7, 1]),
            p.Bishop("white", [7, 2]), p.Queen("white", [7, 3]),
            whiteKing, p.Bishop("white", [7, 5]),
            p.Knight("white", [7, 6]), p.Tower("white", [7, 7])]
    result.append(temp)

    blackKing.updateArmy(result)
    whiteKing.updateArmy(result)

    return result


def displayBoard(board):
    for i in range(len(board)):
        temp = [f"{8-i} "] + ["[{}]".format(j.display) for j in board[i]]
        print("".join(temp))
    print("   " + "   ".join([i for i in "ABCDEFGH"]))
    # line = "-----------------------\n"
    # result = line
    # for i in range(len(board)):
    #     temp = f"{8-i} |"
    #     for j in range(len(board[i])):
    #         if type(board[i][j]) is not p.Free:
    #             temp += f"{board[i][j].display}|"
    #         else:
    #             if j == 0 or j == len(board[i])-1:
    #                 temp += f"{board[i][j].display}|"
    #             else:
    #                 temp += f"{board[i][j].display*2}|"
    #     temp += "\n"
    #     result += temp
    #     result += line
    # result += " A B  C  D   E  F  G H"
    # print(result)

def movePiece(piece, move, brd):
    brd[move[0]][move[1]] = piece
    brd[piece.cords[0]][piece.cords[1]] = p.Free(None, [piece.cords[0], piece.cords[1]])
    piece.cords = [move[0], move[1]]
    return brd

def possibleMoves(piece, brd):
    return [i for i in piece.possibleMoves(brd) if not piece.king.inDanger(p.tryMove(brd, piece, i))]

def checkForMate(king, brd):
    if king.inDanger(brd):
        for row in brd:
            for i in row:
                if i.color == king.color:
                    if len(possibleMoves(i, brd)) > 0:
                        return False
        return True

    else:
        return False

def translateCords(cords):
    xaxis = "abcdefgh"
    if type(cords) is str:
        return [8 - int(cords[1]), xaxis.find(cords[0])]
    else:
        return "".join([xaxis[cords[1]], str(8 - cords[0])]).upper()


def validateSelection(inp):
    inp = inp.lower()
    if  len(inp) != 2:
        return False

    xaxis = "abcdefgh"

    if inp[0] not in xaxis:
        return False

    try:
        test = int(inp[1])
    except:
        return False
    else:
        if test < 0 or test > 8:
            return False
        else:
            return True

def getPiece(cords, board):
    return board[cords[0]][cords[1]]

def chooseMove(board, color):
    inp = input("Select piece (e.g. A2): ")
    while not validateSelection(inp):
        inp = input("Some wrong syntax in input, try again (e.g. H1): ")

    if getPiece(translateCords(inp), board).color != color:
        print("You can only select your own pieces! You are", color)
        return chooseMove(board, color)

    selectedPiece = getPiece(translateCords(inp), board)
    posMoves = possibleMoves(selectedPiece, board)

    print("You have slected", selectedPiece.display, "at", translateCords(selectedPiece.cords))
    print(f"Possible moves: {' '.join([translateCords(i) for i in posMoves])} and unselect (u)")

    inp = input("Choose a move: ")
    unselect = ["u", "unselect", "deselect", "undo"]
    if inp.lower() in unselect:
        return chooseMove(board, color)
    while not validateSelection(inp):
        print("Invalid input!")
        print(f"Possible moves: {' '.join([translateCords(i) for i in posMoves])} and unselect (u)")
        inp = input("Choose a move: ")

    while translateCords(inp) not in posMoves:
        print("Impossible move!")
        print(f"Possible moves: {' '.join([translateCords(i) for i in posMoves])} and unselect (u)")
        inp = input("Choose a move: ")

    return [selectedPiece, translateCords(inp)]

def selectType(piece):
    white = "♖♘♗♕"
    black = "♜♞♝♛"
    print("Your pawn has reached the end of the table, \n"
          "choose one of the following to transform it.")
    if piece.color == "white":
        for i in range(len(white)):
            print(f"{i + 1}: {white[i]}")
    else:
        for i in range(len(black)):
            print(f"{i + 1}: {black[i]}")
    inp = input("Choose a number (1-4): ")
    while True:
        try:
            test = int(inp)
        except:
            inp = input("Wrong input, choose 1-4: ")
        else:
            if 0 < int(inp) < 5:
                inp = int(inp)
                break
            else:
                inp = input("Wrong input, choose 1-4: ")
    if inp == 1:
        return p.Tower(piece.color, piece.cords)
    elif inp == 2:
        return p.Knight(piece.color, piece.cords)
    elif inp == 3:
        return p.Bishop(piece.color, piece.cords)
    else:
        return p.Queen(piece.color, piece.cords)


def pawnTransormation(color, brd):
    if color == "white":
        for i in range(len(brd)):
            if type(brd[0][i]) is p.Pawn:
                brd[0][i] = selectType(brd[0][i])
                brd[0][i].king = p.getKing(color, brd)
    else:
        for i in range(len(brd)):
            if type(brd[7][i]) is p.Pawn:
                brd[7][i] = selectType(brd[7][i])
                brd[7][i].king = p.getKing(color, brd)


    return brd

def main():
    board = createBoard()
    playerTurn = "white"
    kings = {"white": board[7][4], "black": board[0][4]}
    winner = ""

    displayBoard(board)
    while True:
        if checkForMate(kings[playerTurn], board):
            if playerTurn == "white":
                winner = "black"
            else:
                winner = "white"

            print(f"{winner} checkmates {playerTurn}")
            break

        print(f"{playerTurn}'s turn!\n")

        temp = chooseMove(board, playerTurn)
        board = movePiece(temp[0], temp[1], board)
        board = pawnTransormation(playerTurn, board)


        if playerTurn == "white":
            playerTurn = "black"
            if kings[playerTurn].inDanger(board):
                print("White checks black!")
        else:
            playerTurn = "white"
            if kings[playerTurn].inDanger(board):
                print("Black checks white!")

        displayBoard(board)

    print(f"The winner is {winner}")

main()

