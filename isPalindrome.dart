void main() {
  print(isPalindrome(121));
}

bool isPalindrome(int num) {
  if (num < 0) {
    return false;
  }

  int reversed = 0;
  int original = num;

  while (num > 0) {
    int digit = num % 10;
    reversed = reversed * 10 + digit;
    num = num ~/ 10;
  }

  return original == reversed;
}
