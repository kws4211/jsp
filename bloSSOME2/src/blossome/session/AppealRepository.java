package blossome.session;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import blossome.vo.AppealVO;

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
	
	public List<AppealVO> selectAppealList(){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			return sqlSess.selectList(namespace + ".selectAppealView");
		}finally{
			sqlSess.close();
		}

	}
	
	/*
	 * public Comment selectCommentByPK(long commentNo){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			HashMap map = new HashMap();
			map.put("commentNo", commentNo);
			return sqlSess.selectOne(namespace + ".selectComment", map);
		}finally{
			sqlSess.close();
		}*/
	
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
	
}
