package com.spring.helper.method.method;

import java.awt.image.BufferedImage;
import java.io.File;
import javax.imageio.ImageIO;
import org.springframework.stereotype.Component;

@Component
public class QRImage {

	// 이미지 경로 넘겨 받기
	public void cropImage(String filePath) throws Exception{
		BufferedImage originalImgage = ImageIO.read(new File(filePath));
		//x115 y115 부터 370x370픽셀 잘라내기
		BufferedImage SubImgage = originalImgage.getSubimage(115, 115, 370, 370);
		//잘라내고 난 이미지 경로
		File outputfile = new File("C:\\Users\\panga\\Desktop\\croppedQr.jpg");
		//위의 경로에 잘라낸 이미지 적용
		ImageIO.write(SubImgage, "jpg", outputfile);
	}
}
