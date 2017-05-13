package blossome.session;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import blossome.vo.*;
public class TukRepository {
	
	String namespace = "blossom.mapper.TukMapper";

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
	
	
	// 내가 툭 리스트 
		public List<TukVO> myselectlist(){
			SqlSession sqlSess = getSelSessionFactory().openSession();
			try {
				HashMap map = new HashMap();
				map.put("id", "myid");
				String statment = namespace + ".mytukList";
				return sqlSess.selectList(statment, map);
			} finally {
				sqlSess.close();
			}
		
	}	
		
	// 나를 툭 리스트 
		public List<TukVO> meselectlist(){
			SqlSession sqlSess = getSelSessionFactory().openSession();
			try {
				HashMap map = new HashMap();
				map.put("id", "myid");
				String statment = namespace + ".metukList";
				return sqlSess.selectList(statment, map);
			} finally {
				sqlSess.close();
			}
		
	}	
		
		
	// 내가 툭 취소
		public Integer deleteTuk( String choiceN  ){
			// JDBC : Connection, Mybatis : SqlSession 
			SqlSession sqlSess = getSelSessionFactory().openSession();
			
			try {
				
				HashMap map = new HashMap();
				map.put("choiceN", choiceN);
				String statment = namespace + ".tukDelete";
				int result = sqlSess.delete(statment, choiceN);
				 
				if( result > 0){
					sqlSess.commit();
					// JDBC : auto-commit, Mybatis : �븘�떂
				}else{
					sqlSess.rollback();
				}
			} finally {
				sqlSess.close();
			}
			return 0;
		}
		
	// 나를 툭한 리스트에서 툭하기
	public TukVO insertTuk( TukVO vo ){
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
		} finally {
			sqlSess.close();
		}
		return vo;
	}
	
	
	//시퀀스 생성
	public String selectSeq(){
	      SqlSession sqlSess = getSelSessionFactory().openSession();
	      try{
	          String result = sqlSess.selectOne(namespace + ".selectTukSeq");
	         
	         return result;
	      }finally{
	         sqlSess.close();
	      }
	   }
	
	
	//꾸욱 리스트
	public List<TukVO> mygguckselectlist(){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			HashMap map = new HashMap();
			map.put("id", "myid");
			String statment = namespace + ".mygguckList";
			return sqlSess.selectList(statment, map);
		} finally {
			sqlSess.close();
		}
	
	}
	
	// 나를 꾹 리스트 
	public List<TukVO> megguckselectlist(){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			HashMap map = new HashMap();
			map.put("id", "myid");
			String statment = namespace + ".megguckList";
			return sqlSess.selectList(statment, map);
		} finally {
			sqlSess.close();
		}
	
}	
	

}
