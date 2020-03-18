import java.io.*;
class FileHandling{
public static void main(String a[]) throws Exception{
File f=new File("demo.txt");
FileOutputStream fos=new FileOutputStream(f);
DataOutputStream dos=new DataOutputStream(fos);
dos.writeUTF("uma");
FileInputStream fis=new FileInputStream(f);
DataInputStream dis=new DataInputStream(fis);
String str=dis.readUTF();
System.out.println(str);
}
}