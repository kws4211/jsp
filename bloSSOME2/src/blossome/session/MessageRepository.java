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
import blossome.vo.MsgVO;

public class MessageRepository {
	
	String namespace = "blossom.mapper.MsgMapper";

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
	
	public List<MsgVO> alllist(){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			
			return sqlSess.selectList(namespace + ".all");
		}finally{
			sqlSess.close();
		}

	}
}
