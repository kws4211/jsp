package blossome.session;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import blossome.vo.AppealVO;
import blossome.vo.FIndVO;
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
	/*
	 * checkLogin
	 * 역할 : 로그인 확인
	 */
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
	/*
	 * SearchFirst
	 * 역할 : 이름과 email정보로 질문 값 가져옴
	 */
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
	/*
	 * SearchSecond
	 * 역할 : id와 답변으로 id/pw를 알려줌
	 */
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
	/*
	 * Find
	 * 역할 : 이상형 검색 옵션을 받아서 맞는 사람 검색
	 */
	public List<MemVO> Find(FIndVO vo) {
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			List<MemVO> list = sqlSess.selectList(namespace + ".find", vo);
			return list;
		}finally{
			sqlSess.close();
		}
	}
	
	public int idinfo(String id) {
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			HashMap map = new HashMap();
			map.put("id", id);
			int state = sqlSess.selectOne(namespace + ".idinfo", map);
			return state;
		}finally{
			sqlSess.close();
		}
	}
	
	
}
