/// The time complexity of the function in the worst case is `O(n * k)`,
/// where `n` is the length of the input list `strs` and `k` is the maximum length of
/// a string in `strs`. This is because the function iterates over each string in the
/// input list and counts the frequency of each character,
/// which takes `O(k)` time for each string.
///
/// The space complexity of the function is also `O(n * k)`, where `n` is
/// the length of the input list `strs` and `k` is the maximum length of a string in `strs`.
/// This is because the function uses a hash table to store the anagram groups, which
/// can have up to `n` keys and `k` values in the worst case.

class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    Map<String, List<String>> anagramGroups = {};

    for (String str in strs) {
      List<int> charCounts = List.filled(26, 0);
      for (int i = 0; i < str.length; i++) {
        charCounts[str.codeUnitAt(i) - 'a'.codeUnitAt(0)]++;
      }
      String key = charCounts.toString();
      if (!anagramGroups.containsKey(key)) {
        anagramGroups[key] = [];
      }
      anagramGroups[key]?.add(str);
    }

    return anagramGroups.values.toList();
  }
}

void main(List<String> args) {
  print(Solution().groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"]));
}

/// Another variant is to use sorting instead of counting the frequency of each character.
/// This is because two strings are anagrams if and only if their sorted strings are equal.
/// The time complexity of this variant is `O(n * k * log(k))`, where `n` is the length of
/// the input list `strs` and `k` is the maximum length of a string in `strs`.

List<List<String>> _groupAnagrams(List<String> strs) {
  Map<String, List<String>> anagramGroups = {};

  for (String str in strs) {
    String sortedStr = String.fromCharCodes(str.runes.toList()..sort());
    if (!anagramGroups.containsKey(sortedStr)) {
      anagramGroups[sortedStr] = [];
    }
    anagramGroups[sortedStr]?.add(str);
  }

  return anagramGroups.values.toList();
}

/// NB: The sorting variant is slower than counting the frequency of each character.
/// However, the second algorithm may be faster than the first algorithm for inputs 
/// where the strings are short and the number of strings is large. In this case, 
/// the overhead of counting characters for each string may be greater than the 
/// overhead of sorting each string.
