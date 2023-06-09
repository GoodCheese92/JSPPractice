package service;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisConnection {
	// single-ton pattern: 
	// 객체1개만생성해서 지속적으로 서비스하자
	static MyBatisConnection single = null;

	public static MyBatisConnection getInstance() {
		//생성되지 않았으면 생성
		if (single == null)
			single = new MyBatisConnection();
		//생성된 객체정보를 반환
		return single;
	} // end of getInstance()
	
	SqlSessionFactory factory;
	public MyBatisConnection() {
		try {
			Reader reader = Resources.getResourceAsReader("config/mybatis/sqlMapConfig.xml");
			factory = new SqlSessionFactoryBuilder().build(reader);
			reader.close();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	} // end of constructor
	
	public SqlSessionFactory getSessionFactory() {
		return factory;
	} // end of getSessionFactory()
	
} // end of class
