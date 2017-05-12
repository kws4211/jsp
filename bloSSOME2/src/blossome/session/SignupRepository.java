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
	}
	

//****************************************************** 여기서부터 수정
	
	public List<MemVO> insetSignup(MemVO vo){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			
			String statment = namespace + ".seqlogin";
			//시퀀스 값을 증가 시킨 후 값을 저장
//			vo.setQnaNum(sqlSess.selectOne(statment));
			//qna0000001  <- 글번호 지정
			String a = "signup";
//			for(int i = 0 ; i < 7-vo.getQnaNum().length() ; i++){
			   a += "0";
//			}
//			a+=vo.getQnaNum();
//			vo.setQnaNum(a);
			
			statment = namespace + ".insertqna";
			//모든 작업 완료 후 insert
			int res = sqlSess.insert(statment, vo);
			if(res > 0){
				sqlSess.commit();
			}else{
				sqlSess.rollback();
			}
			
			HashMap map = new HashMap();
//			map.put("id", vo.getMemId());
			
			statment = namespace + ".alllist";
			return sqlSess.selectList(statment, map);
		} finally {
			sqlSess.close();
		}
	}
	
}
