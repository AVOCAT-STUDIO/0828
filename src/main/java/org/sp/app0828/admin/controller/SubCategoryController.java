package org.sp.app0828.admin.controller;

import java.util.List;

import org.sp.app0828.model.product.SubCategoryDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

@Controller
public class SubCategoryController {
	@Autowired
	private SubCategoryDAO subCategoryDAO;
	
	//상위 카테고리에 소속된 하위 목록 가져오기
	@RequestMapping(value="/admin/subcategory/list", produces="application/json;charset=utf-8", method=RequestMethod.GET)
	@ResponseBody
	public String getListByTopIdx(int topcategory_idx) {
		//3: 일시키기
		List subList=subCategoryDAO.selectAll(topcategory_idx);
		Gson gson = new Gson();
		String json = gson.toJson(subList);
		
		return json;
	}
	
}
