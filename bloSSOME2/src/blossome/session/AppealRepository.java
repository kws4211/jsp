package blossome.session;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import blossome.vo.AppealVO;
import blossome.vo.TukVO;

public class AppealRepository {
	
	String namespace = "blossome.mapper.AppealMapper";

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
	
	public List<AppealVO> selectAppealList(String id, int startnum, int endnum){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			HashMap map = new HashMap();
			map.put("id", id);
			map.put("startnum", startnum);
			map.put("endnum", endnum);
			return sqlSess.selectList(namespace + ".selectAppealView",map);
		}finally{
			sqlSess.close();
		}

	}
	
	public AppealVO selectAppealDetailList(String appId){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			HashMap map = new HashMap();
			map.put("appId", appId);
			return sqlSess.selectOne(namespace + ".selectAppealDetailView", map);
		}finally{
			sqlSess.close();
		}

	}
	
	//게시판 추가
	public AppealVO insertAppeal(AppealVO vo){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			
			int result = 0;
			 int res = sqlSess.insert(namespace + ".insertAppeal", vo);
			 if(res != 0){
				 sqlSess.commit();
				 result++;
			 }else{
				 sqlSess.rollback();;
			 }
			return vo;
		}finally{
			sqlSess.close();
		}
	}
	
	//시퀀스 가져오기
	public String selectSeq(){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			 String result = sqlSess.selectOne(namespace + ".selectAppealSeq");
			
			return result;
		}finally{
			sqlSess.close();
		}
	}
	
	//게시판 수정
	public AppealVO updateapp(AppealVO vo){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			
			int result = 0;
			 int res = sqlSess.insert(namespace + ".updateAppeal", vo);
			 if(res != 0){
				 sqlSess.commit();
				 result++;
			 }else{
				 sqlSess.rollback();;
			 }
			return vo;
		}finally{
			sqlSess.close();
		}
	}
	
	//게시판 삭제
	public Integer deleteAppealList(String appId){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			int result = 0;
			int res = sqlSess.delete(namespace + ".deleteAppeal" , appId); 
			if(res != 0){
				 sqlSess.commit();
				 result++;
			 }else{
				 sqlSess.rollback();;
			 }
			return result;
		}finally{
			sqlSess.close();
		}
	}
	
	//count상태값 변경
	public Integer updateappCount(String appId){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			int result = 0;
			int res = sqlSess.update(namespace + ".updateappCount" , appId); 
			if(res != 0){
				 sqlSess.commit();
				 result++;
			 }else{
				 sqlSess.rollback();;
			 }
			return result;
		}finally{
			sqlSess.close();
		}
	}
		public Integer totalcol(String id){
			SqlSession sqlSess = getSelSessionFactory().openSession();
			try {
				String statment = namespace + ".totalcol";
				return sqlSess.selectOne(statment);
			} finally {
				sqlSess.close();
			}
		}

		//툭하기
		public Integer insertTuk(String memId, String choiceId) {
			SqlSession sqlSess = getSelSessionFactory().openSession();
			try{
				int result = 0;
				HashMap map = new HashMap();
				map.put("memId", memId);
				map.put("choiceId", choiceId);
				int res = sqlSess.insert(namespace + ".insertTuk" , map); 
				if(res != 0){
					 sqlSess.commit();
					 result++;
				 }else{
					 sqlSess.rollback();;
				 }
				return result;
			}finally{
				
				sqlSess.close();
			}
		
		}
		
		//툭하기
		public int insertTuk( TukVO vo ){
			// JDBC : Connection, Mybatis : SqlSession
			SqlSession sqlSess = getSelSessionFactory().openSession();
			
			try {
				
				String statment = namespace + ".tukInsert";
				int result = sqlSess.insert(statment, vo);
				if( result > 0){
					sqlSess.commit();
					// JDBC : auto-commit, Mybatis : �븘�떂
				}else{
					sqlSess.rollback();
				}
				return result;
			} finally {
				sqlSess.close();
			}
		}
		//툭삭제
		public int deleteTuk(TukVO vo) {
			SqlSession sqlSess = getSelSessionFactory().openSession();
			try {
				String statment = namespace + ".tukDelete";
				int result = sqlSess.delete(statment, vo);
				if( result > 0){
					sqlSess.commit();
				}else{
					sqlSess.rollback();
				}
				return result;
			} finally {
				sqlSess.close();
			}
	}
}