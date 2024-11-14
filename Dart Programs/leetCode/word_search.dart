import 'dart:io';

class WordSearch {
  late List<List<String>> board;
  late String word;
  List result = [];
  int currentCharPosition = 0;

  // METHOD TO CHECK BOARD FOR GIVEN WORD
  bool isWordExist(List<List<String>> board, String word) {
    displayBoard();

    for (int i = 0; i < board.length; i++) {
      for (int j = 0; j < board[i].length; j++) {
        if (word[currentCharPosition] == board[i][j]) {
          result.add([i, j]);

          while (checkNeighbour(result[currentCharPosition])) {
            currentCharPosition++;
          }
        } else {
          result.clear();
          currentCharPosition = 0;
        }
      }
    }

    print(result);

    return false;
  }

  bool checkNeighbour(List position) {
    int i = position[0];
    int j = position[1];
    bool isFound = false;

    if (i == 0 && (i + 1) <= (board.length - 1)) {
      if (j == 0 && (j + 1) <= (board[i].length - 1)) {
        isFound = board[i][j + 1] == word[currentCharPosition];
        if (isFound) {
          result.add([i, j + 1]);
        }

        if (result == false) {
          isFound = board[i + 1][j] == word[currentCharPosition];
        }
        if (isFound) {
          result.add([i + 1, j]);
        }

        return isFound;
      } else if (j == board[i].length - 1 && (j - 1) >= 0) {
        isFound = board[i + 1][j] == word[currentCharPosition];

        if (isFound) {
          result.add([i + 1, j]);
        }

        if (result == false) {
          isFound = board[i][j - 1] == word[currentCharPosition];
        }
        if (isFound) {
          result.add([i, j - 1]);
        }

        return isFound;
      } else {
        isFound = board[i][j + 1] == word[currentCharPosition];

        if (isFound == false) {
          isFound = board[i][j - 1] == word[currentCharPosition];
        }

        if (isFound == false) {
          isFound = board[i + 1][j] == word[currentCharPosition];
        }

        return isFound;
      }
    } else if (i == (board.length - 1) && (i - 1) >= 0) {}

    return isFound;
  }

  // DISPLAY BOARD
  void displayBoard() {
    print("-----------------");
    for (int i = 0; i < board.length; i++) {
      for (String j in board[i]) {
        stdout.write("$j ");
      }
      print("");
    }
    print("-----------------");
  }
}

void main() {
  WordSearch wordSearch = WordSearch();

  List<List<String>> board = [
    ["A", "B", "C", "E"],
    ["S", "F", "C", "S"],
    ["A", "D", "E", "E"],
  ];

  String word = "SEE";

  bool result = wordSearch.isWordExist(board, word);

  // print("Result: $result");
}
