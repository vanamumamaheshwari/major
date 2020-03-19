package QRGenerator;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import net.glxn.qrgen.QRCode;
import net.glxn.qrgen.image.ImageType;

public class QrCode{


	public static void main(String a[]) throws Exception
{
		String details="uma-website:github";
		ByteArrayOutputStream out=QRCode.from(details).to(ImageType.JPG).stream();
		File f=new File("C:\\Users\\EnnelaSangamithra\\jar\\MyQr.jpg");
		@SuppressWarnings("resource")
		FileOutputStream fos=new FileOutputStream(f);
		fos.write(out.toByteArray());
		fos.flush();
}

	}