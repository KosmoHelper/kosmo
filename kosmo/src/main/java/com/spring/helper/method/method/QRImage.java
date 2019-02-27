package com.spring.helper.method.method;

import java.awt.image.BufferedImage;
import java.io.File;
import javax.imageio.ImageIO;
import org.springframework.stereotype.Component;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.Result;
import com.google.zxing.client.j2se.BufferedImageLuminanceSource;
import com.google.zxing.common.HybridBinarizer;

@Component
public class QRImage {

	// 이미지 경로 넘겨 받기
	public void cropImage(String filePath) throws Exception{
		BufferedImage originalImgage = ImageIO.read(new File(filePath));
		//x110 y110 부터 380x380픽셀 잘라내기
		BufferedImage SubImgage = originalImgage.getSubimage(110, 110, 380, 380);
		//잘라내고 난 이미지 경로
		File outputfile = new File("C:\\Users\\panga\\Desktop\\croppedQr.jpg");
		//위의 경로에 잘라낸 이미지 적용
		ImageIO.write(SubImgage, "jpg", outputfile);
	}

	//qr에서 경로 얻기
	public String readQRCode(String filePath) throws Exception {
		//이미지 경로 받기
		BinaryBitmap binaryBitmap = new BinaryBitmap(new HybridBinarizer(new BufferedImageLuminanceSource(ImageIO.read(new File(filePath)))));
		//qr 경로 리턴
		Result qrCodeResult = new MultiFormatReader().decode(binaryBitmap);
		return qrCodeResult.getText();
	}
}