package org.sp.app0828.admin.controller;





import java.util.List;

import org.sp.app0828.model.product.TopCategoryDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

//관리자 모드에서 상품과 관련된 요청을 처리하는 하위 컨트롤러
//컴포넌트스켄 테그의 검색 대상중 @컨트롤러이므로, 자동으로 메모리에 생성
@Controller
public class ProductController {
	@Autowired
	private TopCategoryDAO topCategoryDAO;
	
	@RequestMapping(value="/admin/product/registform", method=RequestMethod.GET)
	public ModelAndView getForm() {
		List topList = topCategoryDAO.selectAll();
		
		ModelAndView mav = new ModelAndView("admin/product/regist");
		mav.addObject("topList", topList);
		
		
		
		return mav;
	} 
	
}
