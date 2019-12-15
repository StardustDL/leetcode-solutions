class Solution:
    def findMedianSortedArrays(self, nums1: List[int], nums2: List[int]) -> float:
        n, m = len(nums1), len(nums2)
        is2 = (n+m) % 2 == 0
        target = (n+m)//2 - (1 if is2 else 0)
        cur = 0
        i, j = 0, 0
        ans = 0
        while i < n or j < m:
            l = 10**10 if i >= n else nums1[i]
            r = 10**10 if j >= m else nums2[j]
            if l < r:
                if cur == target:
                    ans += l
                elif cur == target + 1 and is2:
                    ans += l
                cur += 1
                i += 1
            else:
                if cur == target:
                    ans += r
                elif cur == target + 1 and is2:
                    ans += r
                cur += 1
                j += 1

        return ans if not is2 else ans / 2
