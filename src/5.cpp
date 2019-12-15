class Solution
{
public:
    string longestPalindrome(string s)
    {
        int len = s.size();
        if (len == 0)
            return "";
        vector<vector<bool>> cs(len, vector<bool>(len));
        for (int i = 0; i < len; i++)
            cs[i][i] = 1;
        for (int i = 0; i < len - 1; i++)
            cs[i][i + 1] = s[i] == s[i + 1];
        for (int l = 3; l <= len; l++)
            for (int i = 0; i + l - 1 < len; i++)
            {
                int j = i + l - 1;
                cs[i][j] = s[i] == s[j] && cs[i + 1][j - 1];
            }
        for (int l = len; l >= 1; l--)
            for (int i = 0; i + l - 1 < len; i++)
            {
                int j = i + l - 1;
                if (cs[i][j])
                {
                    return s.substr(i, l);
                }
            }
        return "";
    }
};