package blossome.session;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import blossome.vo.MemVO;
import blossome.vo.AddMemVO;

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
	
	//회원가입 insert (비공개회원)
	public int insertSignup(MemVO vo){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
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
	
	//추가회원가입 insert (공개회원)
	public int insertAddSignup(AddMemVO vo){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			String statment = namespace + ".insertAddMem";
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
	
	//비공개회원 승인안됨으로 바꿔야함
	public int changeMem(AddMemVO vo){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			String statment = namespace + ".changeMem";
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
	
	//아이디 중복확인
	public int confirmid(MemVO vo){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			String statment = namespace + ".confirmid";
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
	
	//닉네임 중복확인
		public int confirmni(MemVO vo){
			SqlSession sqlSess = getSelSessionFactory().openSession();
			try{
				String statment = namespace + ".confirmni";
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
