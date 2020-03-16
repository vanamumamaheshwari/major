class Printer{
public void print(Paper p)
{
p.setText("get lost");
}
}
class Paper{
String text;
public void setText(String t)
{
text=t;
}
public String getText()
{
return text;
}
}
class New{
public static void main(String a[])
{
Paper p=new Paper();
p.setText("Hello World");
System.out.println(p.getText());
Printer pr=new Printer();
pr.print(p);
System.out.println(p.getText());
}
}