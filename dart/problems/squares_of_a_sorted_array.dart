import 'package:test/test.dart';

void main() {
  group(
    'sortedSquares',
    () {
      test(
        'case 1',
        () => expect([0, 1, 9, 16, 100], sortedSquares([-4, -1, 0, 3, 10])),
      );

      test(
        'case 2',
        () => expect([4, 9, 9, 49, 121], sortedSquares([-7, -3, 2, 3, 11])),
      );
    },
  );
}

/// using two pointer
List<int> sortedSquares(List<int> nums) {
  final result = <int>[];
  var l = 0;
  var r = nums.length - 1;

  while (l <= r) {
    if (nums[l].abs() > nums[r].abs()) {
      result.add(nums[l] * nums[l]);
      l++;
    } else {
      result.add(nums[r] * nums[r]);
      r--;
    }
  }

  return result.reversed.toList();
}


/// using sort 

 List<int> sortedSquaresS(List<int> nums) {
      return nums.map((e) => e * e).toList()..sort();
  }
