package com.spring.helper.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.helper.service.BoardService;

@Controller
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Autowired
	BoardService service;
	
	
	@RequestMapping("test")
	public String test(MultipartHttpServletRequest req, Model model) throws Exception {
		service.test(req,model);
		logger.info("test 로딩 중....");
		return "test";
	}
	
	// 동욱이 메소드 시작
	// 지식인게시판 리스트 출력
	@RequestMapping("knowledgeBoardList")
	public String knowledgeBoardList(HttpServletRequest req, Model model) throws Exception {
		logger.info("knowledgeBoardList 로딩 중....");
		service.knowledgeBoardList(req, model);
		return "board/knowledge/knowledge";
	}
	// 질문등록 폼 이동
	@Secured({"ROLE_USER","ROLE_ADMIN"}) 
	@RequestMapping("knowledgeWriteForm")
	public String knowledgeWriteForm() throws Exception {
		logger.info("knowledgeWriteForm 로딩 중....");
		return "board/knowledge/knowledgeWriteForm";
	}
	// 질문등록 처리
	@RequestMapping("knowledgeWritePro")
	public String knowledgeWritePro(HttpServletRequest req, Model model) throws Exception {
		logger.info("knowledgeWritePro 로딩 중....");
		service.knowledgeInsertArticle(req, model);
		return "board/knowledge/knowledgePro";
	}
	// 질문수정 폼 이동
	@RequestMapping("knowledgeModifyForm")
	public String knowledgeModifyForm(HttpServletRequest req, Model model) throws Exception {
		logger.info("knowledgeModifyForm 로딩 중....");
		service.knowledgeModifyForm(req, model);
		return "board/knowledge/knowledgeModifyForm";
	}
	// 질문수정 처리
	@RequestMapping("knowledgeModifyPro")
	public String knowledgeModifyPro(HttpServletRequest req, Model model) throws Exception {
		logger.info("knowledgeModifyPro 로딩 중....");
		service.knowledgeModifyPro(req, model);
		return "board/knowledge/knowledgePro";
	}
	// 질문삭제 처리
	@RequestMapping("knowledgeDeleteForm")
	public String knowledgeDeleteForm(HttpServletRequest req, Model model) throws Exception{
		logger.info("knowledgeDeleteForm 로딩 중....");
		service.knowledgeDeleteForm(req, model);
		System.out.println("실행");
		return "board/knowledge/knowledgePro";
	}
	// 게시글 클릭시 글 상세페이지 출력
	@RequestMapping("knowledgeDetailForm")
	public String knowledgeDetailForm(HttpServletRequest req, Model model) throws Exception {
		logger.info("knowledgeDetailForm 로딩 중....");
		service.knowledgeDetailForm(req, model);
		service.knowledgeCommentList(req,model);
		return "board/knowledge/knowledgeDetailForm";
	}
	@Secured({"ROLE_USER","ROLE_ADMIN"}) 
	// 답변등록 처리
	@RequestMapping("knowledgeCommentPro")
	public String knowledgeCommentPro(HttpServletRequest req, Model model) throws Exception {
		logger.info("knowledgeCommentPro 로딩 중....");
		service.knowledgeCommentPro(req, model);
		return "board/knowledge/knowledgePro";
	}
	// 답변삭제 처리
	@RequestMapping("kCommentdelete")
	public String kCommentdelete(HttpServletRequest req, Model model) throws Exception {
		logger.info("kCommentdelete 로딩 중....");
		service.kCommentdelete(req, model);
		return "board/knowledge/knowledgePro";
	}
	// 동욱이 메소드 종료


	//재영 BoardController 시작

	//부동산 게시판 글 목록 페이지로 이동
	@RequestMapping("realestateBoardList")
	public String realestateBoardList(HttpServletRequest req, Model model) throws Exception {
		logger.info("realestateBoardList 로딩 중....");
		service.realestateGetArticleList(req, model);
		return "board/realestate/realestateBoardList";
	}

	//부동산 Json 보류 ㅠㅠ
	/*@RequestMapping("realestateListJson")
	public ModelAndView realestateListJson(HttpServletRequest req, Model model) throws Exception{
		logger.info("realestateListJson 호출");
		RealestateVO rVO = service.realestateGetVO(req);
		PageVO pVO = service.realestateListPage(req, rVO);
		int startNumber = pVO.getStartNumber();
		int endNumber = pVO.getEndNumber();
		List<RealestateVO> list = service.realestateListJson(rVO,startNumber,endNumber);
		model.addAttribute("list",list);
		model.addAttribute("pVO",pVO);
		return new ModelAndView("board/realestate/realestateJson");
	}*/
	
	//부동산 게시판 글 상세 페이지로 이동
	@RequestMapping("realestateDetailForm")
	public String realestateDetailForm(HttpServletRequest req, Model model) throws Exception {
		logger.info("realestateDetailForm 로딩 중....");
		service.realestateGetArticle(req, model);
		return "board/realestate/realestateDetailForm";
	}
	
	/*//부동산 게시판 댓글 등록
	@Secured({"ROLE_ADMIN","ROLE_USER"})
	@RequestMapping("realestateWrite")
	public String realestateWrite(HttpServletRequest req, Model model) throws Exception {
		logger.info("realestateWrite 로딩 중....");
		if(req.getParameter("loginPage")!=null);
		model.addAttribute("loginPage",req.getParameter("loginPage"));
		return "board/realestate/realestateWrite";
	}*/

	//부동산 게시판 글쓰기 실행
	@RequestMapping("realestateWritePro")
	public void realestateWritePro(HttpServletRequest req, HttpServletResponse res, Model model) throws Exception {
		logger.info("realestateWritePro 로딩 중....");
		Integer realestateInsertArticle = service.realestateInsertArticle(req, model);
		res.sendRedirect("knowledgeBoardList?insertResult="+realestateInsertArticle);
		//return "board/realestate/realestateBoardList";
	}
	
	//부동산 게시판 글쓰기 페이지로 이동
	@Secured({"ROLE_ADMIN","ROLE_USER"})
	@RequestMapping("realestateWriteForm")
	public String realestateWriteForm(HttpServletRequest req, Model model) throws Exception {
		logger.info("realestateWriteForm 로딩 중....");
		if(req.getParameter("loginPage")!=null);
		model.addAttribute("loginPage",req.getParameter("loginPage"));
		return "board/realestate/realestateWriteForm";
	}
	
	//부동산 게시판 게시글 생성기
	@RequestMapping("realestateDummyMaker")
	public String realestateDummyMaker(HttpServletRequest req, Model model) throws Exception {
		logger.info("realestateDummyMaker 로딩 중....");
		service.realestateDummyMaker(req, model);
		return "board/realestate/realestate";
	}
	
	//재영 BoardController 끝

	//진호 BoardController 시작----------------------------------------------------
	// 원데이 리스트 출력
	@RequestMapping("onedayclassBoardList")
	public String onedayclassBoardList(HttpServletRequest req, Model model) throws Exception {
		logger.info("원데이 클래스 게시판 리스트 호출중....");
		
		service.onedayclassBoardList(req, model);
		return "board/onedayclass/onedayclassBoardList";
	}
	
	// 원데이 상세페이지
	@RequestMapping("onedayclassDetailForm")
	public String onedayclassDetailForm(HttpServletRequest req, Model model) throws Exception {
		logger.info("원데이 클래스 게시판 상세페이지 호출중 ....");
		
		service.onedayclassDetailForm(req, model);
		return "board/onedayclass/onedayclassDetailForm";
	}
	
	
	// 수정 상세 페이지
	@RequestMapping("onedayclassModifyForm")
	public String onedayclassModifyForm(HttpServletRequest req, Model model) throws Exception {
		logger.info("원데이 클래스 수정 상세페이지 호출중 ....");
		
		service.onedayclassModifyForm(req, model);
		return "board/onedayclass/onedayclassModifyForm";
	}
	
	// 수정 처리
	@RequestMapping("onedayclassModifyPro")
	public String onedayclassModifyPro(HttpServletRequest req, Model model) throws Exception {
		logger.info("원데이 클래스 수정 처리 호출중 ....");
	
		service.onedayclassModifyPro(req, model);
		return "board/onedayclass/onedayclassModifyPro";
	}
	
	// 글쓰기 페이지
	@RequestMapping("onedayclassWriteForm")
	public String onedayclassWriteForm(HttpServletRequest req, Model model) throws Exception {
		logger.info("원데이 클래스 글쓰기 호출중 ....");
		
		service.onedayclassWriteForm(req, model);
		return "board/onedayclass/onedayclassWriteForm";
	}
	
	// 글쓰기 처리페이지
	@RequestMapping("onedayclassWritePro")
	public String onedayclassWritePro(HttpServletRequest req, Model model) throws Exception {
		logger.info("원데이 클래스 글처리 호출중 ....");
		
		service.onedayclassWritePro(req, model);
		return "board/onedayclass/onedayclassWritePro";
	}
		
	// 진호  BoardController 끝----------------------------------------------------
	


}
