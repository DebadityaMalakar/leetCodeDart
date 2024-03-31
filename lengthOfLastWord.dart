void main() {
  print(lengthOfLastWord("Hello World"));
}

int lengthOfLastWord(String s) {
  String tg = "";
  s.split(" ").forEach((element) {
    if (element == " ") {
    } else if (element == "") {
    } else {
      tg = element;
    }
  });
  return tg.length;
}
