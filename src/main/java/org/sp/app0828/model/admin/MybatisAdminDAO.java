package org.sp.app0828.model.admin;

import org.apache.ibatis.session.SqlSession;
import org.sp.app0828.domain.Admin;
import org.sp.app0828.mybatis.MybatisConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

//이 클래스는 adminDAO 형중 하나이다.
//컴포넌트 스캔에 의해 dAO 의 인스턴스를 생성해준다 (스프링이)

//설계분야에서의 분류가 아닌경우, 즉 개발자가 정한 임의의 객체인 경우 그냥 컴포넌트라고 선언
@Repository
public class MybatisAdminDAO implements AdminDAO{
	@Autowired
	private MybatisConfig mybatisConfig;

	public Admin login(Admin admin) {
		SqlSession sqlSession = mybatisConfig.getSqlSession();
		return sqlSession.selectOne("Admin.login", admin);

	}


	public void insert(Admin admin) {

		
	}

}
