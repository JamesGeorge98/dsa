import 'package:test/test.dart';

void main() {
  group(
    'isPalindrome',
    () {
      test(
        'case 1',
        () => expect(
          30,
          calPoints(['5', '2', 'C', 'D', '+']),
        ),
      );

      test(
        'case 2',
        () => expect(
          27,
          calPoints(['5', '-2', '4', 'C', 'D', '9', '+', '+']),
        ),
      );
    },
  );
}

int calPoints(List<String> operations) {
  final temp = <int>[];

  for (final operation in operations) {
    switch (operation) {
      case 'C':
        temp.removeLast();
      case 'D':
        temp.add(temp.last * 2);
      case '+':
        if (temp.length >= 2) {
          temp.add(temp[temp.length - 2] + temp.last);
        }
      default:
        temp.add(int.parse(operation));
    }
  }

  var count = 0;

  for (final element in temp) {
    count += element;
  }

  return count;
}
