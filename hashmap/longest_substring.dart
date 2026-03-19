import 'dart:collection';

void main() {
  String s = "aabbccabcd";
  print(lengthOfLongestSubstring(s));
}

HashSet<String> set = HashSet();

int lengthOfLongestSubstring(String s) {
  int maxLen = 0;
  for (int i = 0; i < s.length - 1; i++) {
    set.clear();
    set.add(s[i]);
    for (int j = i + 1; j < s.length; j++) {
      if (set.contains(s[j])) {
        break;
      } else {
        set.add(s[j]);
        if (j - i + 1 > maxLen) {
          maxLen = j - i + 1;
        }
      }
    }
  }
  return maxLen;
}
