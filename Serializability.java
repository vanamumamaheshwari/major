import java.io.*;
class Serializability{
public static void main(String a[]) throws Exception{
Save s=new Save();
s.i=5;
File f=new File("pooja.txt");
FileOutputStream fos=new FileOutputStream(f);
ObjectOutputStream dos=new ObjectOutputStream(fos);
dos.writeObject(s);
FileInputStream fis=new FileInputStream(f);
ObjectInputStream dis=new ObjectInputStream(fis);
Save s1=(Save) dis.readObject();
System.out.println(s1.i);
}
}
class Save implements Serializable
{
int i;
}