import java.io.*;
import java.util.*;
class FileProperties{
public static void main(String a[]) throws Exception{
Properties p=new Properties();
OutputStream os=new FileOutputStream("uma.txt");
p.setProperty("Url","localhost:102//mydb");
p.setProperty("User","uma");
p.setProperty("Pswd","1111");
p.store(os,null);
InputStream is=new FileInputStream("uma.txt");
p.load(is);
System.out.println(p.getProperty("User"));
p.list(System.out);
}
}