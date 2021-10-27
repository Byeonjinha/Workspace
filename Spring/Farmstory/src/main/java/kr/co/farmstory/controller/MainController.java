package kr.co.farmstory.controller;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import kr.co.farmstory.service.BoardService;
import kr.co.farmstory.vo.ArticleVo;
import kr.co.farmstory.vo.FileVo;
import kr.co.farmstory.vo.MemberVo;
import lombok.Value;
@Controller
public class MainController {
	@Autowired
	private BoardService service;
	
	@GetMapping(value = {"/", "/index"})
	public String index(Model model) {
			
		List<ArticleVo> articles_Grow = service.selectArticles_Grow_5();
		List<ArticleVo> articles_Story = service.selectArticles_Story_5();
		List<ArticleVo> articles_School = service.selectArticles_School_5();
		
		List<ArticleVo> articles_Notice = service.selectArticles_Notice_3();
		List<ArticleVo> articles_Qna = service.selectArticles_Qna_3();
		List<ArticleVo> articles_Faq = service.selectArticles_Faq_3();

		model.addAttribute("articles_Grow", articles_Grow);
		model.addAttribute("articles_School", articles_School);
		model.addAttribute("articles_Story", articles_Story);
		
		model.addAttribute("articles_Notice", articles_Notice);
		model.addAttribute("articles_Qna", articles_Qna);
		model.addAttribute("articles_Faq", articles_Faq);

		return "/index";
	}
	
	@GetMapping("/introduction/hello")
	public String hello() {
		return "/introduction/hello";
	}
	
	@GetMapping("/introduction/direction")
	public String direction() {
		return "/introduction/direction";
	}
}
