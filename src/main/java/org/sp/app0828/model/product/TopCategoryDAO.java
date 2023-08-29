package org.sp.app0828.model.product;



import java.util.List;

import org.sp.app0828.domain.TopCategory;

//탑카테고리 DAO들의 최상위 객체
public interface TopCategoryDAO {

	//CRUD
	public void insert(TopCategory topCategory); //등록
	public List selectAll(); //모든것 가져오기
	public TopCategory select(int topcategory_idx); //한건 가져오기
	public void update(TopCategory topCategory); //한건수정
	public void delete(int topcategory_idx); //한건삭제
	
}
