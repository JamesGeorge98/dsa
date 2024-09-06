import 'dart:collection';

import 'package:test/test.dart';

void main() {
  group(
    'Majority Element',
    () {
      test('case 1', () => expect(3, majorityElement([3, 2, 3])));
      test('case 2', () => expect(2, majorityElement([2, 2, 1, 1, 1, 2, 2])));
    },
  );
}

//chat gpt
int majorityElement(List<int> nums) {
  final temp = HashMap<int, int>();
  var majorityElement = nums[0];
  var maxCount = 0;

  for (final element in nums) {
    temp[element] = (temp[element] ?? 0) + 1;
    if (temp[element]! > maxCount) {
      maxCount = temp[element]!;
      majorityElement = element;
    }
  }

  return majorityElement;
}

// my verison
int majorityElementMy(List<int> nums) {
  final temp = HashMap<int, int>();
  var count = 0;
  var index = 0;
  for (final element in nums) {
    final value = temp[element] ?? 0;
    temp[element] = value + 1;
  }

  for (final entry in temp.entries) {
    if (entry.value > count) {
      count = entry.value;
      index = entry.key;
    }
  }

  return index;
}
