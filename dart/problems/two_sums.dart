import 'package:test/test.dart';

void main() {
  // You may assume that each input would have exactly one solution, and you may not use the same element twice.

  group(
    'maxNumberOfBalloons',
    () {
      test('case 1', () => expect([0, 1], twoSum([2, 7, 11, 15], 9)));
      test('case 2', () => expect([1, 2], twoSum([3, 2, 4], 6)));
      test('case 3', () => expect([0, 1], twoSum([3, 3], 6)));
    },
  );
}

/// O(n) hashmap
List<int> twoSum(List<int> nums, int target) {
  if (nums.length == 2) return [0, 1];
  final temp = <int, int>{};
  for (var i = 0; i < nums.length; i++) {
    final diff = target - nums[i];
    if (temp.containsKey(diff)) {
      return [temp[diff]!, i];
    }
    temp[nums[i]] = i;
  }
  return [];
}

/// O(n^2) two pointers solution
List<int> twoSumPointer(List<int> nums, int target) {
  if (nums.length == 2) return [0, 1];

  var fp = 0;
  var sp = 1;

  if (nums[fp] + nums[sp] == target) return [fp, sp];

  while (nums[fp] + nums[sp] != target) {
    if (sp < nums.length - 1) {
      sp++;
    } else {
      fp++;
      sp = fp + 1;
    }
  }

  return [fp, sp];
}

/// O(n^2) nested for loops solution
List<int> twoSumNested(List<int> nums, int target) {
  if (nums.length == 2) return [0, 1];
  for (var i = 0; i < nums.length; i++) {
    for (var j = i + 1; j < nums.length; j++) {
      if (nums[i] + nums[j] == target) {
        return [i, j];
      }
    }
  }

  return [];
}
