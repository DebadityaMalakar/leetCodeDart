void main() {
  print(strStr("sadbutsad", "sad"));
}

int strStr(String haystack, String needle) {
  int addBy = needle.length;
  if (haystack.length < needle.length) {
    return -1;
  } else {
    for (var i = 0; i <= haystack.length - addBy; i++) {
      if (haystack.substring(i, i + addBy) == needle) {
        return i;
      }
    }
    return -1; // Needle not found
  }
}
