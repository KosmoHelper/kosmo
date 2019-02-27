package com.spring.helper.controller;

import java.awt.image.BufferedImage;
import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.helper.method.method.QRImage;
import com.spring.helper.service.UtilService;

@Controller
public class UtilController {
	
	@Autowired
	UtilService service;

	private static final Logger logger = LoggerFactory.getLogger(UtilController.class);

	@Autowired
	UtilService utilService;
	
	@Autowired
	QRImage qrImage;
	
	// 동욱 시작
	//환율 정보
	@RequestMapping("exchangerate")
	public String exchangerate(HttpServletRequest req, Model model) throws Exception{
		logger.info("exchangerate 로딩 중....");
		return "util/Exchangerate/Exchangerate";
	}
	
	//재영 UtilController 시작 ====================================================================================

	//이미지 검색 페이지 이동
	@RequestMapping("imageSearch")
	public String imageSearch(HttpServletRequest req, Model model) throws Exception {
		logger.info("imageSearch 로딩 중....");
		return "util/image/imageSearch";
	}
	
	//qr 이미지 자르기
	@RequestMapping("qrImageCrop")
	public void qrImageCrop(HttpServletRequest req, Model model) throws Exception {
		logger.info("qrImageCrop 로딩 중....");
		String filePath = "C:/Users/panga/Desktop/qrcode.jpg";
		qrImage.cropImage(filePath);
		logger.info("qrImageCrop 끝....");
	}
	
	//qr에서 URL 추출하기
	@RequestMapping("qrGetURL")
	public void qrGetURL(HttpServletRequest req, Model model) throws Exception {
		logger.info("qrGetURL 로딩 중....");
		String filePath = "C:/Users/panga/Desktop/croppedQr.jpg";
		String qrURL = qrImage.readQRCode(filePath);
		logger.info("qrGetURL 끝...." + qrURL);
	}
	//재영 UtilController 끝 ====================================================================================
	
	
	// 대호 시작 =======================================================
	@RequestMapping("convertSize")
	public String convertSize(HttpServletRequest req, Model model) throws Exception {
		logger.info("convertSize 로딩 중..");
		
		return "util/convert/convertSize";
	}
	
	// 대호 끝 =======================================================
}
