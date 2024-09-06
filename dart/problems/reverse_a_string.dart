import 'package:test/test.dart';

void main() {
  group(
    'sortedSquares',
    () {
      test(
        'case 1',
        () => expect(
          ['o', 'l', 'l', 'e', 'h'],
          reverseString(['h', 'e', 'l', 'l', 'o']),
        ),
      );

      test(
        'case 2',
        () => expect(
          ['h', 'a', 'n', 'n', 'a', 'H'],
          reverseString(['H', 'a', 'n', 'n', 'a', 'h']),
        ),
      );
    },
  );
}

List<String> reverseString(List<String> s) {
  return s.reversed.toList();
}
