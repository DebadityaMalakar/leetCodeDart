void main() {
  List<int> nums = [3, 2, 4];
  int target = 6;
  print(twoSum(nums, target));
}

List<int> twoSum(List<int> nums, int target) {
  List<int> output = [];
  Set<int> temp = {};
  for (int i = 0; i < nums.length; i++) {
    for (int j = 0; j < nums.length; j++) {
      if (!(i == j)) {
        if ((nums[i] + nums[j] == target)) {
          output.add(i);
          output.add(j);
        }
      }
    }
  }
  temp = output.toSet();
  output = temp.toList();

  return output;
}
