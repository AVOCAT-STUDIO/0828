package org.sp.app0828.domain;

import lombok.Data;

@Data
public class SubCategory {
	private int subcategory_idx;
	//db 분야에서는 부모의 포린키만 있으면 부모를 참조할수 있지만 java에서는 특정 객체를 찾아가려면 반드시 주소값
	private TopCategory topCatogory;
	private String sub_name;
	
	
}
