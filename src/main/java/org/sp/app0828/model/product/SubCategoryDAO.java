package org.sp.app0828.model.product;

import java.util.List;

public interface SubCategoryDAO {

	public List selectAll();//모든것 가져오기
	public List selectAll(int topcategory_idx);//선택된상위소속된모든것
}
