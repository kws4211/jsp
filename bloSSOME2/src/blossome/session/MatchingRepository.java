package blossome.session;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import blossome.vo.MatchingVO;

public class MatchingRepository {
	String namespace = "blossome.mapper.MatchingMapper";

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
	
	public List<MatchingVO> selectlist(){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			String statment = namespace + ".list";
			return sqlSess.selectList(statment);
		} finally {
			sqlSess.close();
		}
	}
	
	public List<MatchingVO> selectlist(int startnum, int endnum){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			HashMap map = new HashMap();
			map.put("startnum", startnum);
			map.put("endnum", endnum);
			
			String statment = namespace + ".list";
			return sqlSess.selectList(statment,map);
		} finally {
			sqlSess.close();
		}
	}
	
	
	public int totalcol(){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			String statment = namespace + ".total";
			return sqlSess.selectOne(statment);
		} finally {
			sqlSess.close();
		}
	}
	
	public Integer delmatching(String num){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			String statment = namespace + ".delmatching";
			int res = sqlSess.delete(statment,num);
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
