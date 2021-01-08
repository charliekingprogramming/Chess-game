import processing.net.*;

Client myClient;

boolean qkey, rkey, kkey, bkey, zkey;

color lightbrown = #FFFFC3;
color darkbrown  = #D8864E;
PImage wrook, wbishop, wknight, wqueen, wking, wpawn;
PImage brook, bbishop, bknight, bqueen, bking, bpawn;
boolean firstClick;
int row1, col1, row2, col2;
boolean itsMyTurn = false;
boolean ROld, BOld, NOld, QOld, KOld, POld, pOld, rOld, bOld, nOld, qOld, kOld, spaceOld = false;
boolean ROld1, BOld1, NOld1, QOld1, KOld1, POld1, pOld1, rOld1, bOld1, nOld1, qOld1, kOld1, spaceOld1 = false;
int id;


char grid[][] = {
  {'R', 'B', 'N', 'Q', 'K', 'N', 'B', 'R'}, 
  {'P', 'P', 'P', 'P', 'P', 'P', 'P', 'P'}, 
  {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}, 
  {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}, 
  {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}, 
  {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}, 
  {'p', 'p', 'p', 'p', 'p', 'p', 'p', 'p'}, 
  {'r', 'b', 'n', 'q', 'k', 'n', 'b', 'r'}
};

void setup() {
  size(800, 800);
  id = 0;
  myClient = new Client(this, "127.0.0.1", 1234);

  firstClick = true;

  qkey = rkey = kkey = bkey = zkey =false;

  brook = loadImage("blackRook.png");
  bbishop = loadImage("blackBishop.png");
  bknight = loadImage("blackKnight.png");
  bqueen = loadImage("blackQueen.png");
  bking = loadImage("blackKing.png");
  bpawn = loadImage("blackPawn.png");

  wrook = loadImage("whiteRook.png");
  wbishop = loadImage("whiteBishop.png");
  wknight = loadImage("whiteKnight.png");
  wqueen = loadImage("whiteQueen.png");
  wking = loadImage("whiteKing.png");
  wpawn = loadImage("whitePawn.png");
}

void draw() {
  drawBoard();
  drawPieces();
  receiveMove();
}

void receiveMove() {
  if (myClient.available() > 0) {
    String incoming = myClient.readString();
    int r1 = int(incoming.substring(0, 1));
    int c1 = int(incoming.substring(2, 3));
    int r2 = int(incoming.substring(4, 5));
    int c2 = int(incoming.substring(6, 7));
    int id = int(incoming.substring(8, 9));
    //int redo= int(incoming.substring(0, 1));
    if (id == 0) {
      grid[r2][c2] = grid[r1][c1];
      grid[r1][c1] = ' ';
      itsMyTurn = true;
    } else if (id == 1) {
      grid[r2][c2] = 'q';
      grid[r1][c1] = ' ';
      itsMyTurn = true;
      id = 0;
    } else if (id == 2) {
      grid[r2][c2] = 'r';
      grid[r1][c1] = ' ';
      itsMyTurn = true;
      id = 0;
    } else if (id == 3) {
      grid[r2][c2] = 'n';
      grid[r1][c1] = ' ';
      itsMyTurn = true;
      id = 0;
    } else if (id == 4) {
      grid[r2][c2] = 'b';
      grid[r1][c1] = ' ';
      itsMyTurn = true;
      id = 0;
    } else if (id == 5) {
      //grid[r1][c1] = grid[r1][c1];
      //grid[r2][c2] = grid[r2][c2];
      itsMyTurn = false;
      id = 0;
    }
  }
}







void mouseReleased() {
  if (itsMyTurn) {
    if (firstClick) {
      row1 = mouseY/100;
      col1 = mouseX/100;
      
            if (grid[row1][col1] == 'R') {
        ROld1 = true;
      } else if (grid[row1][col1] == 'B') {
        BOld1 = true;
      }else if (grid[row1][col1] == 'N') {
        NOld1 = true;
      }else if (grid[row1][col1] == 'Q') {
        QOld1 = true;
      }else if (grid[row1][col1] == 'K') {
        KOld1 = true;
      }else if (grid[row1][col1] == 'P') {
        POld1 = true;
      }else if (grid[row1][col1] == 'p') {
       pOld1 = true;
      }else if (grid[row1][col1] == 'r') {
        rOld1 = true;
      }else if (grid[row1][col1] == 'b') {
        bOld1 = true;
      }else if (grid[row1][col1] == 'n') {
        nOld1 = true;
      }else if (grid[row1][col1] == 'q') {
        qOld1 = true;
      }else if (grid[row1][col1] == 'k') {
        kOld1 = true;
      }else if (grid[row1][col1] == ' ') {
        spaceOld1 = true;
      }
      
      
      firstClick = false;
    } else {
      row2 = mouseY/100;
      col2 = mouseX/100;
      
            if (grid[row2][col2] == 'R') {
        ROld = true;
      } else if (grid[row2][col2] == 'B') {
        BOld = true;
      }else if (grid[row2][col2] == 'N') {
        NOld = true;
      }else if (grid[row2][col2] == 'Q') {
        QOld = true;
      }else if (grid[row2][col2] == 'K') {
        KOld = true;
      }else if (grid[row2][col2] == 'P') {
        POld = true;
      }else if (grid[row2][col2] == 'p') {
       pOld = true;
      }else if (grid[row2][col2] == 'r') {
        rOld = true;
      }else if (grid[row2][col2] == 'b') {
        bOld = true;
      }else if (grid[row2][col2] == 'n') {
        nOld = true;
      }else if (grid[row2][col2] == 'q') {
        qOld = true;
      }else if (grid[row2][col2] == 'k') {
        kOld = true;
      }else if (grid[row2][col2] == ' ') {
        spaceOld = true;
      }
      
      
      if (!(row2 == row1 && col2 == col1)) {
        grid[row2][col2] = grid[row1][col1];
        grid[row1][col1] = ' ';
        myClient.write(row1 + "," + col1 + "," + row2 + "," + col2 + "," + 0);
        firstClick = true;
        itsMyTurn = false;
      }
    }
  }
}
