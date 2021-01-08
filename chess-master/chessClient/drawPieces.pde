void drawPieces() {
  for (int r = 0; r < 8; r++) {
    for (int c = 0; c < 8; c++) {
      if (grid[r][c] == 'r') image (wrook, c*100, r*100, 100, 100);
      if (grid[r][c] == 'R') image (brook, c*100, r*100, 100, 100);
      if (grid[r][c] == 'b') image (wbishop, c*100, r*100, 100, 100);
      if (grid[r][c] == 'B') image (bbishop, c*100, r*100, 100, 100);
      if (grid[r][c] == 'n') image (wknight, c*100, r*100, 100, 100);
      if (grid[r][c] == 'N') image (bknight, c*100, r*100, 100, 100);
      if (grid[r][c] == 'q') image (wqueen, c*100, r*100, 100, 100);
      if (grid[r][c] == 'Q') image (bqueen, c*100, r*100, 100, 100);
      if (grid[r][c] == 'k') image (wking, c*100, r*100, 100, 100);
      if (grid[r][c] == 'K') image (bking, c*100, r*100, 100, 100);
      if (grid[r][c] == 'p') image (wpawn, c*100, r*100, 100, 100);
      if (grid[r][c] == 'P') image (bpawn, c*100, r*100, 100, 100);


      if (grid[7][c] == 'P') {

        //image (wbishop, c*100, 0*100, 100, 100);
        if (qkey) {
          grid[7][c] = 'Q';
          id = 1;
          myClient.write(row1 + "," + col1 + "," + 0 + "," + c + "," + id);
        } else if (rkey) {
          grid[7][c] = 'R';
          id = 2;
          myClient.write(row1 + "," + col1 + "," + 0 + "," + c + "," + id);
        } else if (kkey) {
          grid[7][c] = 'N';
          id = 3;
          myClient.write(row1 + "," + col1 + "," + 0 + "," + c + "," + id);
        } else if (bkey) {
          grid[7][c] = 'B';
          id = 4;
          myClient.write(row1 + "," + col1 + "," + 0 + "," + c + "," + id);
        } else if (zkey) {
          itsMyTurn = true;
          grid[row2][col2] = ' ';
          id = 5;
          myClient.write(row1 + "," + col1 + "," + 0 + "," + c + "," + id);
        }
        menu();
      }

      if (zkey) {
        id = 5;
        itsMyTurn = true;


        if (ROld1) {
          grid[row1][col1] = 'R';
          ROld1 = false;
        } else if (BOld1) {
          grid[row1][col1] = 'B';
          BOld1 = false;
        } else if (NOld1) {
          grid[row1][col1] = 'N';
          NOld1 = false;
        } else if (QOld1) {
          grid[row1][col1] = 'Q';
          QOld1 = false;
        } else if (KOld1) {
          grid[row1][col1] = 'K';
          KOld1 = false;
        } else if (POld1) {
          grid[row1][col1] = 'P';
          POld1 = false;
        } else if (pOld1) {
          grid[row1][col1] = 'p';
          pOld1 = false;
        } else if (rOld1) {
          grid[row1][col1] = 'r';
          rOld1 = false;
        } else if (bOld1) {
          grid[row1][col1] = 'b';
          bOld1 = false;
        } else if (nOld1) {
          grid[row1][col1] = 'n';
          nOld1 = false;
        } else if (qOld1) {
          grid[row1][col1] = 'q';
          qOld1 = false;
        } else if (kOld1) {
          grid[row1][col1] = 'k';
          kOld1 = false;
        } else if (spaceOld1) {
          grid[row1][col1] = ' ';
          spaceOld1 = false;
        }

        if (ROld) {
          grid[row2][col2] = 'R';
          ROld = false;
        } else if (BOld) {
          grid[row2][col2] = 'B';
          BOld = false;
        } else if (NOld) {
          grid[row2][col2] = 'N';
          NOld = false;
        } else if (QOld) {
          grid[row2][col2] = 'Q';
          QOld = false;
        } else if (KOld) {
          grid[row2][col2] = 'K';
          KOld = false;
        } else if (POld) {
          grid[row2][col2] = 'P';
          POld = false;
        } else if (pOld) {
          grid[row2][col2] = 'p';
          pOld = false;
        } else if (rOld) {
          grid[row2][col2] = 'r';
          rOld = false;
        } else if (bOld) {
          grid[row2][col2] = 'b';
          bOld = false;
        } else if (nOld) {
          grid[row2][col2] = 'n';
          nOld = false;
        } else if (qOld) {
          grid[row2][col2] = 'q';
          qOld = false;
        } else if (kOld) {
          grid[row2][col2] = 'k';
          kOld = false;
        } else if (spaceOld) {
          grid[row2][col2] = ' ';
          spaceOld = false;
        }


        myClient.write(row1 + "," + col1 + "," + 0 + "," + c + "," + id);
      }
    }
  }
}
