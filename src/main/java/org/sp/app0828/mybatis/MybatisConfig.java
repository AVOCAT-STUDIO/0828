package org.sp.app0828.mybatis;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

//마이바티스이 설정 xml 을 해석하여, sqlsessionfactory 를 얻어온후 필요한 DAo 들에게 sqlsessioㅜ 제공해주기 위함
public class MybatisConfig {
	private static MybatisConfig instance;
	SqlSessionFactory factory; //sqlsession 을 왕창 머금고 있는 수영장
	
	
	private MybatisConfig() {
		String resource = "org/sp/app0828/mybatis/config.xml";
		InputStream inputStream = null;
		try {
			inputStream = Resources.getResourceAsStream(resource);
			factory = new SqlSessionFactoryBuilder().build(inputStream);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static MybatisConfig getInstance() {
		if(instance==null) {
			instance = new MybatisConfig();
		}
		return instance;
	}
	
	//팩토리로 부터 sqlsession 을 제공해주는 메서드
	public SqlSession getSqlSession() {
		return factory.openSession();
	}
	
	//sqlsession 을 닫는 메서드
	public void release(SqlSession sqlSession) {
		sqlSession.close();
	}
}
