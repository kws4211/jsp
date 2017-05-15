package blossome.session;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import blossome.vo.MemVO;

public class SignupRepository {
	
	String namespace = "blossom.mapper.SignupMapper";

	private SqlSessionFactory getSelSessionFactory(){
		String resource = "blossom-config.xml";
		InputStream input = null;
		try {
			input = Resources.getResourceAsStream(resource);
		} catch (Exception e) {
			
		}
		SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(input);
		return factory;
	} //SqlSessionFactory 끝
	

//****************************************************** 여기서부터 수정
	
	
	public int insertSignup(MemVO vo){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			System.out.println("dd");
			String statment = namespace + ".insertMem";
			//모든 작업 완료 후 insert
			int res = sqlSess.insert(statment, vo);
			if(res > 0){
				sqlSess.commit();
			}else{
				sqlSess.rollback();
			}
			return res;
		} finally {
			sqlSess.close();
		}
	}
	
}
