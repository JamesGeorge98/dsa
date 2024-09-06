import 'package:test/test.dart';

void main() {
  group(
    'isValidSudoku',
    () {
      // test(
      //   'case 1',
      //   () => expect(
      //     true,
      //     isValidSudoku([
      //       ['5', '3', '.', '.', '7', '.', '.', '.', '.'],
      //       ['6', '.', '.', '1', '9', '5', '.', '.', '.'],
      //       ['.', '9', '8', '.', '.', '.', '.', '6', '.'],
      //       ['8', '.', '.', '.', '6', '.', '.', '.', '3'],
      //       ['4', '.', '.', '8', '.', '3', '.', '.', '1'],
      //       ['7', '.', '.', '.', '2', '.', '.', '.', '6'],
      //       ['.', '6', '.', '.', '.', '.', '2', '8', '.'],
      //       ['.', '.', '.', '4', '1', '9', '.', '.', '5'],
      //       ['.', '.', '.', '.', '8', '.', '.', '7', '9'],
      //     ]),
      //   ),
      // );
      test(
        'case 2',
        () => expect(
          false,
          isValidSudoku([
            ['5', '3', '.', '.', '7', '.', '.', '.', '.'],
            ['6', '8', '.', '1', '9', '5', '.', '.', '.'],
            ['.', '9', '8', '.', '.', '.', '.', '6', '.'],
            ['8', '.', '.', '.', '6', '.', '.', '.', '3'],
            ['4', '.', '.', '8', '.', '3', '.', '.', '1'],
            ['7', '.', '.', '.', '2', '.', '.', '.', '6'],
            ['.', '6', '.', '.', '.', '.', '2', '8', '.'],
            ['.', '.', '.', '4', '1', '9', '.', '.', '5'],
            ['.', '.', '.', '.', '8', '.', '.', '7', '9'],
          ]),
        ),
      );
    },
  );
}

bool isValidSudoku(List<List<String>> board) {
  for (final i in board) {
    final temp = <String>{};
    for (final j in i) {
      if (temp.contains(j)) return false;
      if (j != '.') temp.add(j);
    }
  }

  for (var i = 0; i < board.length; i++) {
    final temp = <String>{};
    for (var j = 0; j < board.length; j++) {
      final item = board[j][i];
      if (temp.contains(item)) return false;
      if (item != '.') temp.add(item);
    }
  }

  for (var i = 0; i < board.length; i++) {
    for (var j = 0; j < board.length; j++) {
      final gridj = j ~/ 3;
      final gridi = i ~/ 3;
      print([gridi , j]);
      print([gridj]);

    }
  }

  return true;
}
