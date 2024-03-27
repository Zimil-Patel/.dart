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
  }

  //take position for input
  void _takeInput() {
    stdout.write('- Enter row position : ');
    int iIndex = int.parse(stdin.readLineSync()!);
    stdout.write('- Enter col position : ');
    int jIndex = int.parse(stdin.readLineSync()!);

    bool isEmpty =
        (_board[iIndex][jIndex] != ' X ' || _board[iIndex][jIndex] != ' O ')
            ? true
            : false;

    print('isEmpty : $isEmpty');

    if (isEmpty) {
      _oTurn ? _board[iIndex][jIndex] = ' O ' : _board[iIndex][jIndex] = ' X ';
      _counter++;
      _oTurn = !_oTurn;
      _showBoard();
    } else {
      print("\n-- Invalid postion! --\n");
      _showBoard();
      _nextMove();
    }
  }
}
