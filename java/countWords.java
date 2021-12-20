import java.util.*;
import java.io.*;

class countWords
{
static void CountWords(String filename, Map< String, Integer> words) throws FileNotFoundException
{ 

Scanner file=new Scanner (new File(filename));
while(file.hasNext()){
String word=file.next();
Integer count=words.get(word);
if(count!=null)
count++;
else
count=1;
words.put(word,count);
}
file.close();
}

public static void main(String[] args)
{
Map<String,Integer> words=new HashMap<String, Integer>();
try{
CountWords("word.txt",words);
for(Map.Entry<String,Integer> entry : words.entrySet())
System.out.println(entry.getKey() +":"+" "+ entry.getValue());
}
catch (FileNotFoundException ex)  {

}
}
}