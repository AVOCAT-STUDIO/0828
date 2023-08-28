package org.sp.app0828.admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.sp.app0828.domain.Admin;
import org.sp.app0828.model.admin.AdminDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

//관리자와 관련된 로그인 요청을 처리하는 하위 컨트롤러
@Controller
public class LoginController {
	//이객체 인스턴스는 개발자가 직접 생성하지 않는다.
	//왜냐하면 스프링을 지배하는 원리중 DI(dependency Injection) 적용을 위해서
	@Autowired
	private AdminDAO adminDAO;
	
	public void setAdminDAO(AdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}
	
	
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
	public ModelAndView login(Admin admin, HttpServletRequest request) {
		//3:로직객체 일시키기
		Admin obj = adminDAO.login(admin); //로그인 검증처리
		ModelAndView mav = new ModelAndView();

		if(obj==null) {//obj가 null이면 로그인 정보가 실패
			mav.addObject("msg", "로그인 정보가 올바르지 않습니다");
			mav.setViewName("error/result"); //실패하면 관리자 메인 페이지
		}else {//채워져 있다면 로그인 성공, 세션에 DTO 담기
			HttpSession session = request.getSession(); //이요청과 관련된 세션 얻기
			session.setAttribute("admin", obj);
			mav.setViewName("admin/index"); //성공하면 관리자 메인 페이지
		}
		
		return mav;
	}
	
}
