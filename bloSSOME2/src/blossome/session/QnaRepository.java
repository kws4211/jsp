package blossome.session;

import java.io.InputStream;
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
}
