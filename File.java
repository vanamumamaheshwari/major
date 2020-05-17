package org.javabrains.in;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;

public class File  {

	public static void main(String[] args) throws Exception{
		// TODO Auto-generated method stub
File f=new File();
FileOutputStream fos=new FileOutputStream("demo.txt");
DataOutputStream dos=new DataOutputStream(fos);
dos.writeUTF("demo content");
FileInputStream fis=new FileInputStream("demo.txt");
DataInputStream dis=new DataInputStream(fis);
String s=dis.readUTF();
System.out.println(s);

	}

}
