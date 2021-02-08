#!/usr/bin/env python
# coding: utf-8

# <nav class="navbar navbar-default">
#   <div class="container-fluid">
#     <div class="navbar-header">
#       <a class="navbar-brand" href="_Oving7.ipynb">Øving 7</a>
#     </div>
#     <ul class="nav navbar-nav">
#     <li ><a href="Aksessering.ipynb">Aksessering av karakter</a></li>
#     <li ><a href="Strenger%20og%20konkatinering.ipynb">Konkatinering</a></li>
#     <li ><a href="Slicing.ipynb">Slicing</a></li>
#     <li ><a href="Tekstbehandling.ipynb">Tekstbehandling</a></li>
#     <li ><a href="Strenghandtering.ipynb">Strenghåndtering</a></li>
#     <li ><a href="Innebygde%20funksjoner.ipynb">Innebygde funksjoner og lister</a></li>
#     <li ><a href="Fjesboka.ipynb">Fjesboka</a></li>
#     <li ><a href="Akkorder%20og%20toner.ipynb">Akkorder og toner</a></li>
#     <li><a href="Ideel%20gasslov.ipynb">Ideel Gasslov</a></li>
#     <li><a href="Sammenhengende%20tallrekke.ipynb">Sammenhengende Tallrekke</a></li>
#     <li ><a href="Sortering.ipynb">Sortering</a></li>
#     <li ><a href="Strengmanipulasjon.ipynb">Strengmanipulasjon</a></li>
#     <li ><a href="Kryptering.ipynb">Kryptering</a></li>
#     <li class="active"><a href="Litt%20sjakk.ipynb">Litt Sjakk</a></li>
#     </ul>
#   </div>
# </nav>
# 
# # Litt sjakk
# 
# **Læringsmål:**
# 
# * 2d-lister
# 
# **Starting Out with Python:**
# 
# * Kap. 7.8: Two-Dimensional Lists 
# 
# I denne oppgaven skal det lages brettrepresentasjon og små deler av logikk til sjakk. Det vises kun en eksempelstilling, men husk at koden du lager skal fungere for alle mulige stillinger.

# ### a)

# Først trengs det en måte å representere brettet med brikkene i programmet. Dette skal gjøres vha 2d-lister, det vil si en liste som inneholder flere lister. Lag en funksjon `make_board(board_string)`, som tar inn en string-representasjon av brettet, og returnerer en 2d-liste. Inni denne listen skal det være *None* hvis det ikke er en brikke i ruten det er snakk om, og en enkel bokstav (string) for ulike brikker. Hvite brikker skal ha stor bokstav (blokkbokstav) og svarte skal ha små bokstaver. Brikke-bokstav-kombinasjoner er: (konge: k, dronning: q, tårn: r, løper: b, hest: n, og bonde: p).
# 
# board_string vil være én lang string, og har et punktum for tomme ruter, og ellers samme bokstav-koding for brikkene som breskrevet over (konge: k (svart), K (hvit), osv...). Legg merke til at de første fem tegnene i stringen skal være i den øverste raden på brettet, og de siste fem skal være i den nederste raden.
# 
# I dag skal vi leke med et litt mindre sjakkbrett, som kun er 5x5 ruter stort.
# 
# **Eksempel på kjøring:**
# >```python
# board_string_1 = 'rkn.r.p.....P..PP.PPB.K..'
# board = make_board(board_string_1)
# ```
# >```python
# board -> [['r', 'k', 'n', None, 'r'], [None, 'p', None, None, None], [None, None, 'P', None, None],  
# ['P', 'P', None, 'P', 'P'], ['B', None, 'K', None, None]]
# ```
# 
# Her er et bilde av brettet dette eksempelet skal representere:
# 
# ![i](./../../Resources/Images/litt-sjakk.png)
# 
# ***Skriv koden i kodeblokken under og test at den fungerer som den skal***

# In[1]:


import math

def makeBoard(boardString):
    dim = int(math.sqrt(len(boardString)))
    result = []
    for i in range(dim):
        curRow = boardString[dim*i:dim*(i+1)]
        temp = []
        for c in curRow:
            if c == ".":
                temp.append(None)
            else:
                temp.append(c)
        result.append(temp)
    return result


board_string_1 = 'rkn.r.p.....P..PP.PPB.K..'

board = makeBoard(board_string_1)
board


# ### b)

# Lag en funksjon `get_piece(board, x, y)` som returnerer brikken i ruten x, y, fra 2d-listen **board**, hvor x er kolonne og y er rad. Dersom det ikke er en brikke i ruten, skal funksjonen returnere *None*. Ellers skal den returnere strengen som representerer brikken (dvs. det som befinner seg i board).
# 
# Radene og kolonnene skal være 1-indekserte, det vil si rader og kolonner går fra 1 til 5. Nederste rad skal være rad 1, og venstre kolonne skal være kolonne 1.  
# Altså skal `get_piece(board, 1, 1)` returnere innholdet i nederste venstre hjørne, og `get_piece(board, 5, 5)` skal returnere innholdet i øverste høyre hjørne.
# 
# **Eksempel på kjøring: (samme brett og stilling som eksempelet i oppgave a)**
# >```python
# board_string_1 = 'rkn.r.p.....P..PP.PPB.K..'
# board = make_board(board_string_1)
# ```
# ```python
# get_piece(board, 2, 1)
# -> None
#   ```
#   ```python
# get_piece(board, 5, 2)
# -> 'P'
#   ```
#   
# ***Skriv koden i kodeblokken under og test at den fungerer som den skal***

# In[2]:


def getPiece(board, x, y):
    return board[len(board)-y][x-1]

print(getPiece(board, 5, 2))


# ### c)

# Nå skal det lages logikk for å sjekke hvilke trekk som kan gjøres av visse brikker. **I denne oppgaven ser vi kun på bonden**. For å få illustrert faktiske sjakk-regler anbefales et raskt Google-søk.
# 
# Reglene du skal implementere er:
# 
# * Bonden kan alltid gå ett skritt framover, med mindre det står noe i veien (på ruten foran).
# * Hvis det står en motstanders brikke i en av de to rutene skrått fremover, kan bonden slå disse.
# * Hvis bonden står i sin start-posisjon (med vårt brett, rad 2 for hvit og rad 4 for svart), kan den gå to skritt framover.
# * *Du trenger ikke å implementere "forvandling" som skjer når bonden har gått helt over til andre siden.*
# * *Du trenger heller ikke implementere "en passant". Hvis du ikke vet hva dette er, kan du ignorere dette.*
# 
# Lag en funksjon `get_legal_moves(board, x, y)` som returnerer en liste med (x, y)-tupler som er gyldige trekk. Hvis funksjonen kalles med parametre som er en tom rute eller ruten inneholder noe annet enn en bonde, skal en tom liste returneres. board er en 2D-liste, og x og y er heltall. Her er det lurt å bruke `get_piece`-funksjonen du har laget underveis.
# 
# Her må det tas hensyn til om brikken er hvit eller svart, da de går i motsatte retninger (hint: funksjonen ord(c) kan brukes til å få tak i ASCII-verdien til bokstaven c. Dette kan brukes til å enkelt skille mellom svarte og hvite brikker)
# 
# **Eksempel på kjøring: (samme brett og stilling som eksempelet i oppgave a)**
# >```python
# board_string_1 = 'rkn.r.p.....P..PP.PPB.K..'
# board = make_board(board_string_1)
# ```
# ``` python
# get_legal_moves(board, 4, 2)
#   -> [(4, 3), (4, 4)]
#  ```
#  ```python
# get_legal_moves(board, 2, 4)
#    -> [(2, 3), (3, 3)] 
#   ```
#   
# ***Skriv koden i kodeblokken under og test at den fungerer som den skal***

# In[3]:


def getLegalMoves(board, x, y):
    piece = getPiece(board, x, y)
    sideCheck = ord("c")
    if (piece == "p" or piece == "P"):
        result = []
        if ord(piece) < sideCheck:
            if y < len(board):
                if getPiece(board, x, y + 1) == None:
                    result.append((x, y + 1))
                    if y == 2 and getPiece(board, x, y + 2) == None:
                        result.append((x, y + 2))
                for i in range(-1, 2, 2):
                    tempPiece = getPiece(board, x + i, y + 1)
                    if tempPiece != None:
                        if ord(tempPiece) > sideCheck:
                            result.append((x + i, y + 1))
        else:
            if y > 0:
                if getPiece(board, x, y - 1) == None:
                    result.append((x, y - 1))
                    if y == 4 and getPiece(board, x, y - 2) == None:
                        result.append((x, y - 2))
                for i in range(-1, 2, 2):
                    tempPiece = getPiece(board, x + i, y - 1)
                    if tempPiece != None:
                        if ord(tempPiece) < sideCheck:
                            result.append((x + i, y - 1))
        return result
    else:
        return []
    
getLegalMoves(board, 4, 2)

