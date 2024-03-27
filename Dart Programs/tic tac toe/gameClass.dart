import 'dart:io';

class TicTacToe {
  //board
  dynamic _board = [
    [' - ', ' - ', ' - '],
    [' - ', ' - ', ' - '],
    [' - ', ' - ', ' - '],
  ];

  //o's and x's turn
  bool _oTurn = true;
  bool _isWon = false;

  //moves counter
  int _counter = 0;

  TicTacToe.startGame() {
    _showBoard();
  }

  //show current board
  void _showBoard() {
    print('*********');
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        stdout.write(_board[i][j]);
      }
      print("");
    }
    print('*********');

    _nextMove();
  }

  //next move input
  void _nextMove() {
    if (_counter < 9 && _isWon == false) {
      //if it o's turn
      if (_oTurn) {
        print('\n-- It\'s O\'s Turn --\n');
        _takeInput();
      }
      //if it's x's turn
      else {
        print('\n-- It\'s X\'s Turn --\n');
        _takeInput();
      }
    } else {
      _showWinner();
      //exit(0);
    }
  }

  //take position for input
  void _takeInput() {
    stdout.write('- Enter row position : ');
    int iIndex = int.parse(stdin.readLineSync()!);
    stdout.write('- Enter col position : ');
    int jIndex = int.parse(stdin.readLineSync()!);

    bool isEmpty =
        (_board[iIndex][jIndex] == ' X ' || _board[iIndex][jIndex] == ' O ')
            ? false
            : true;

    if (isEmpty) {
      _oTurn ? _board[iIndex][jIndex] = ' O ' : _board[iIndex][jIndex] = ' X ';
      _counter++;
      _oTurn = !_oTurn;
      _isWon = _checkWinner();
      if (_isWon) {
        _showBoard();
      } else {
        _showBoard();
      }
    } else {
      print("\n-- Invalid postion! --\n");
      _nextMove();
    }
  }

  //check for winner
  bool _checkWinner() {
    //row check
    //row = 1
    if (_board[0][0] == _board[0][1] &&
        _board[0][1] == _board[0][2] &&
        _board[0][0] != ' - ') {
      return true;
    }
    //row = 2
    else if (_board[1][0] == _board[1][1] &&
        _board[1][1] == _board[1][2] &&
        _board[1][0] != ' - ') {
      return true;
    }
    //row = 3
    else if (_board[2][0] == _board[2][1] &&
        _board[2][1] == _board[2][2] &&
        _board[2][0] != ' - ') {
      return true;
    }
    //col = 1
    else if (_board[0][0] == _board[1][0] &&
        _board[1][0] == _board[2][0] &&
        _board[0][0] != ' - ') {
      return true;
    }
    //col = 2
    else if (_board[0][1] == _board[1][1] &&
        _board[1][1] == _board[2][1] &&
        _board[0][1] != ' - ') {
      return true;
    }
    //col = 3
    else if (_board[0][2] == _board[1][2] &&
        _board[1][2] == _board[2][2] &&
        _board[0][2] != ' - ') {
      return true;
    }
    //diagonal
    else if (_board[0][0] == _board[1][1] &&
        _board[1][1] == _board[2][2] &&
        _board[0][0] != ' - ') {
      return true;
    }
    //aniDiagonal
    else if (_board[0][2] == _board[1][1] &&
        _board[1][1] == _board[2][0] &&
        _board[0][2] != ' - ') {
      return true;
    } else {
      return false;
    }
  }

  void _showWinner() {
    if (_isWon) {
      if (_oTurn) {
        print('X won');
      } else {
        print('O won');
      }
    } else {
      print('OPPS!, It\'s draw!');
    }
  }
}
