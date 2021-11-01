package kr.co.kmarket.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import kr.co.kmarket.service.MemberService;
import kr.co.kmarket.vo.MemberVo;
import kr.co.kmarket.vo.TermsVo;


@Controller
public class MemberController {
	@Autowired
	private MemberService service;
	
	@GetMapping("/member/join")
	public String join() {
		return "/member/join";
	}
	
	@GetMapping("/member/login")
	public String login() {
		return "/member/login";
	}
	
	@PostMapping("/member/login")
	public String login(HttpSession sess, String km_uid, String km_pass) {
		
		System.out.println(km_uid+km_pass);
		MemberVo vo = service.selectMember(km_uid, km_pass);
		
		if(vo == null) {
			// 회원이 아닐 경우
			return "redirect:/member/login?success=100";
		}else {
			// 회원이 맞을 경우
			sess.setAttribute("sessMember", vo);
			System.out.println(vo);
			return "redirect:/index";
		}
	}
	
	@GetMapping("/member/logout")
	public String logout(HttpSession sess) {
		// 현재 사용자 정보객체 세션삭제
		sess.invalidate();
		return "redirect:/member/login?success=102";
	}
	
	
	
	@GetMapping("/member/register")
	public String register() {
		return "/member/register";
	}
	@PostMapping("/member/register")
	public String register(MemberVo vo, HttpServletRequest req) {
		
		String regip = req.getRemoteAddr();
		vo.setRegip(regip);
		
		service.insertMember(vo);
		
		return "redirect:/member/login?success=101";
	}
	
	
	
	
	@GetMapping("/member/register-seller")
	public String registerSeller() {
		return "/member/register-seller";
	}
	////////
	@GetMapping("/member/signup")
	public String terms(Model model) {
		
		TermsVo vo = service.selectTerms();
		model.addAttribute(vo);
		return "/member/signup";
	}
	
	
}
