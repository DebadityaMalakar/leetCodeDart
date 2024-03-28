void main() {
  print(removeDuplicates([1, 2]));
}

int removeDuplicates(List<int> nums) {
  if (nums.isEmpty) return 0;

  int index = 0;
  for (int i = 1; i < nums.length; i++) {
    if (nums[i] != nums[index]) {
      index++;
      nums[index] = nums[i];
    }
  }

  return index + 1;
}
