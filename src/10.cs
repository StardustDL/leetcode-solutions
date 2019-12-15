public class Solution
{
    public bool IsMatch(string s, string p)
    {
        bool[,] res = new bool[s.Length + 1, p.Length + 1];
        res[0, 0] = true;
        for (int i = 0; i <= s.Length; i++)
        {
            for (int j = 1; j <= p.Length; j++)
            {
                res[i, j] = (p[j - 1] == '*' && (res[i, j - 2]
                                 || (i > 0
                                     && res[i - 1, j]
                                     && (s[i - 1] == p[j - 2] || p[j - 2] == '.')))) 
                            || (i > 0 
                                && res[i - 1, j - 1] 
                                && (s[i - 1] == p[j - 1] || p[j - 1] == '.'));
            }
        }
        return res[s.Length, p.Length];
    }
}