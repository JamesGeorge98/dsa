import 'package:test/test.dart';

void main() {
  group(
    'maxNumberOfBalloons',
    () {
      test('case 1', () => expect(1, maxNumberOfBalloons('nlaebolko')));
      test('case 2', () => expect(2, maxNumberOfBalloons('loonbalxballpoon')));
    },
  );
}

int maxNumberOfBalloons(String text) {
  final charCount = <String, int>{};
  for (final char in text.split('')) {
    if ('balon'.contains(char)) {
      charCount[char] = (charCount[char] ?? 0) + 1;
    }
  }

  charCount['l'] = (charCount['l'] ?? 0) ~/ 2;
  charCount['o'] = (charCount['o'] ?? 0) ~/ 2;

  return ['b', 'a', 'l', 'o', 'n']
      .map((char) => charCount[char] ?? 0)
      .reduce((a, b) => a < b ? a : b);
}
