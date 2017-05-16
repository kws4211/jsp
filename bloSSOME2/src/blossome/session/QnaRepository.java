package blossome.session;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import blossome.vo.QnaVO;

public class QnaRepository {
	
	String namespace = "blossom.mapper.QnaMapper";

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
	
	public List<QnaVO> selectlist(){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			String statment = namespace + ".alllist";
			return sqlSess.selectList(statment);
		} finally {
			sqlSess.close();
		}
	}
	
	public List<QnaVO> selectlist(String id){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			HashMap map = new HashMap();
			map.put("id", id);
			String statment = namespace + ".alllist";
			return sqlSess.selectList(statment, map);
		} finally {
			sqlSess.close();
		}
	}
	
	public List<QnaVO> selectlist(int startnum, int endnum){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			HashMap map = new HashMap();
			map.put("startnum", startnum);
			map.put("endnum", endnum);
			
			String statment = namespace + ".alllist";
			return sqlSess.selectList(statment,map);
		} finally {
			sqlSess.close();
		}
	}
	
	public List<QnaVO> selectlist(String id, int startnum, int endnum){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			HashMap map = new HashMap();
			map.put("id", id);
			map.put("startnum", startnum);
			map.put("endnum", endnum);
			String statment = namespace + ".alllist";
			return sqlSess.selectList(statment, map);
		} finally {
			sqlSess.close();
		}
	}
	
	public Integer totalcol(){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			String statment = namespace + ".totalcol";
			return sqlSess.selectOne(statment);
		} finally {
			sqlSess.close();
		}
	}
	
	public Integer totalcol(String id){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			HashMap map = new HashMap();
			map.put("id", id);
			String statment = namespace + ".totalcol";
			return sqlSess.selectOne(statment, map);
		} finally {
			sqlSess.close();
		}
	}
	
	public int insetQna(QnaVO vo){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			
			String statment = namespace + ".seqqna";
			//시퀀스 값을 증가 시킨 후 값을 저장
			vo.setQnaNum(sqlSess.selectOne(statment));
			//qna0000001  <- 글번호 지정
			String a = "qna";
			for(int i = 0 ; i < 7-vo.getQnaNum().length() ; i++){
			   a += "0";
			}
			a+=vo.getQnaNum();
			vo.setQnaNum(a);
			
			statment = namespace + ".insertqna";
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
	
	
	public QnaVO selectByNum(String num){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			HashMap map = new HashMap();
			map.put("num", num);
			String statment = namespace + ".selNum";
			return sqlSess.selectOne(statment, map);
		} finally {
			sqlSess.close();
		}
	}

	public int reple(String num, String reple) {
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			HashMap map = new HashMap();
			map.put("num", num);
			map.put("reple", reple);
			String statment = namespace + ".reple";
			int res = sqlSess.update(statment, map);
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
