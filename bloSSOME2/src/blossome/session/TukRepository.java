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
	
	
	//툭리스트 
		public List<TukVO> selectlist(){
			SqlSession sqlSess = getSelSessionFactory().openSession();
			try {
				HashMap map = new HashMap();
				map.put("id", "myid");
				String statment = namespace + ".tukList";
				return sqlSess.selectList(statment, map);
			} finally {
				sqlSess.close();
			}
		
	}
		
	//툭 추가
	public Integer insertTuk( TukVO vo ){
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
		return 0;
	}
		

}
