import 'package:test/test.dart';

void main() {
  group('isValid', () {
    test('case 1', () => expect(true, isValid('()')));
    test('case 2', () => expect(true, isValid('()[]{}')));
    test('case 3', () => expect(false, isValid('(]')));
    test('case 3', () => expect(true, isValid('[()]')));
    test('case 3', () => expect(false, isValid(']]')));
    test('case 3', () => expect(false, isValid('{')));
    test('case 3', () => expect(false, isValid('[([]])')));
  });
}

/// chatgpt
bool isValid(String s) {
  final matchingBrackets = <String, String>{
    ')': '(',
    ']': '[',
    '}': '{',
  };

  final stack = <String>[];

  for (final char in s.split('')) {
    if (matchingBrackets.containsValue(char)) {
      stack.add(char);
    } else if (matchingBrackets.containsKey(char)) {
      if (stack.isEmpty || stack.removeLast() != matchingBrackets[char]) {
        return false;
      }
    }
  }
  return stack.isEmpty;
}

/// my version
bool isValidm(String s) {
  final paraMap = <String, String>{
    ')': '(',
    ']': '[',
    '}': '{',
  };

  final stack = <String>[];

  for (var i = 0; i < s.length; i++) {
    final char = s[i];
    final bracket = paraMap[char];
    if (bracket == null) {
      stack.add(s[i]);
      continue;
    }
    if (stack.isNotEmpty && stack.last == bracket) {
      stack.removeLast();
      continue;
    }
    return false;
  }
  return stack.isEmpty;
}
