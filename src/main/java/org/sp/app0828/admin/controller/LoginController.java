package org.sp.app0828.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

//관리자와 관련된 로그인 요청을 처리하는 하위 컨트롤러
@Controller
public class LoginController {
	
	//로그인폼 요청처리
	@RequestMapping(value="/admin/loginform", method=RequestMethod.GET)
	public ModelAndView getForm() {
		//3 단계 생략 (업무없음)
		
		//4단계ㅣ 페이지명 들고
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/loginform");
		return mav;
	}
	
	
	//로그인 요청 처리
	@RequestMapping(value="/admin/login", method=RequestMethod.POST)
	public ModelAndView login() {
		System.out.println("로그인 요청함");
		
		
		return null;
	}
	
}
