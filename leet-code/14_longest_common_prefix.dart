class Solution {
  String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) return "";

    String prefix = strs[0];

    for (String str in strs) {
      while (!str.startsWith(prefix)) {
        if (prefix.isEmpty) return "";
        prefix = prefix.substring(0, prefix.length - 1);
      }
    }

    return prefix;
  }
}

void main() {
  Solution solution = Solution();

  print(solution.longestCommonPrefix(["flower", "flow", "flight"]));
  print(solution.longestCommonPrefix(["dog", "racecar", "car"]));
  print(solution
      .longestCommonPrefix(["interspecies", "interstellar", "interstate"]));
  print(solution.longestCommonPrefix([""]));
  print(solution.longestCommonPrefix([]));
}
