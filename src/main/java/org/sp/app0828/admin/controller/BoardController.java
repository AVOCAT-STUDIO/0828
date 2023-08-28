package org.sp.app0828.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/*
 * 스프링의 버전이 점점 올라갈수록, 빈(객체)의 등록을 xml 보다는 자바 코드에 직접 명시하는 유지보수방법을 이용한다 
 * */
@Controller
public class BoardController {

	
	//게시판 목록 요청을 처리한 메서드
	@RequestMapping(value="/board/list", method=RequestMethod.GET)
	public ModelAndView getList() {
		//개발자는 스프링에서 리퀘스트 객체를 직접다루지 않는다. 즉저장할 것이 있을경우 modelandview 객체의 model 영역에 데이터를 체운다
		//(내부적으로는 requet 객체를 이용)
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", "나의 스프링 테스트"); //저장할것이 있다면 포워딩 해야하고 포워딩은 디폴트이다
		mav.setViewName("result");
		return mav;
	}
	
	
	
}
