import 'package:test/test.dart';

void main() {
  group(
    'isPalindrome',
    () {
      test(
        'case 1',
        () => expect(
          true,
          isPalindrome('A man, a plan, a canal: Panama'),
        ),
      );

      test(
        'case 2',
        () => expect(
          false,
          isPalindrome('race a car'),
        ),
      );
    },
  );
}

bool isPalindrome(String t) {
  final s = t.replaceAll(RegExp('[^a-zA-Z0-9]'), '').toLowerCase();
  var l = 0;
  var r = s.length - 1;
  for (var i = 0; i < s.length; i++) {
    if (r == l) return true;
    if (s[l] != s[r]) return false;
    l++;
    r--;
  }
  return true;
}
