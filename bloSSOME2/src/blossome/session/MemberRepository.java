package blossome.session;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import blossome.vo.AppealVO;
import blossome.vo.MemVO;

public class MemberRepository {
	
	String namespace = "blossom.mapper.LoginMapper";

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
	
	public int checkLogin(String id, String pw){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			HashMap map = new HashMap();
			map.put("id", id);
			map.put("pw", pw);
			return sqlSess.selectOne(namespace + ".checklogin", map);
		}finally{
			sqlSess.close();
		}

	}

	public MemVO SearchFirst(String name, String email) {
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			HashMap map = new HashMap();
			map.put("name", name);
			map.put("email", email);
			MemVO vo = sqlSess.selectOne(namespace + ".searchfirst", map);
			return vo;
		}finally{
			sqlSess.close();
		}
	}

	public MemVO SearchSecond(String id, String answer) {
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			HashMap map = new HashMap();
			map.put("id", id);
			map.put("answer", answer);
			MemVO vo = sqlSess.selectOne(namespace + ".searchsecond", map);
			return vo;
		}finally{
			sqlSess.close();
		}
	}
}
