class Solution
{
public:
    string convert(string s, int numRows)
    {
        if (numRows == 1)
            return s;
        int len = s.length();
        vector<string> lines(min(numRows, len));
        int curL = 0, isUp = 1;
        for (int i = 0; i < len; i++)
        {
            lines[curL] += s[i];
            if (isUp)
            {
                if (curL == numRows - 1)
                {
                    curL--;
                    isUp = 0;
                }
                else
                {
                    curL++;
                }
            }
            else
            {
                if (curL == 0)
                {
                    curL++;
                    isUp = 1;
                }
                else
                {
                    curL--;
                }
            }
        }
        string ans = "";
        for (auto t : lines)
            ans += t;
        return ans;
    }
};