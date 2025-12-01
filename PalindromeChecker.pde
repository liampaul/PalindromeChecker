public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String str)
{
  String s = "";
  for(int i = 0; i < str.length(); i++) if(str.charAt(i) != str.charAt(str.length()-i-1)) return false;
  return true;
}
public String reverse(String str)
{
  String s = "";
  for(int i = str.length()-1; i>-1; i--) s += str.charAt(i)+"";
  return s;
}
