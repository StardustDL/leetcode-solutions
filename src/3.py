class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        bg = {}
        i, ans = 0, 0
        for j in range(len(s)):
            if s[j] in bg:
                i = max(i, bg[s[j]]+1)
            ans = max(ans, j-i+1)
            bg[s[j]] = j
        return ans
