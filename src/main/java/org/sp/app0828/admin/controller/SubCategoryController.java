package org.sp.app0828.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SubCategoryController {

	
	//상위 카테고리에 소속된 하위 목록 가져오기
	@PostMapping("/admin/subcategory/list")
	public ModelAndView getListByTopIdx(int topcategory_idx) {
		System.out.println("넘겨받은 idx 는 ="+ topcategory_idx);
		return null;
	}
	
}
