void main() {
  print(isValid("((()))")); // true
  print(isValid("({[]})")); // true
  print(isValid("({)}")); // false
}

bool isValid(String s) {
  Set<String> allowed = {"[", "{", "(", ")", "}", "]"};
  List<String> stack = [];

  for (String char in s.split('')) {
    if (allowed.contains(char)) {
      if (["(", "{", "["].contains(char)) {
        stack.add(char);
      } else if (char == ")" && stack.isNotEmpty && stack.last == "(") {
        stack.removeLast();
      } else if (char == "}" && stack.isNotEmpty && stack.last == "{") {
        stack.removeLast();
      } else if (char == "]" && stack.isNotEmpty && stack.last == "[") {
        stack.removeLast();
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  return stack.isEmpty;
}
