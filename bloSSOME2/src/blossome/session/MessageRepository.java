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
	
	public List<MsgVO> Receivealllist(){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			return sqlSess.selectList(namespace + ".receiveall");
		}finally{
			sqlSess.close();
		}
	}
	
	public List<MsgVO> Receivealllist(String id){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			HashMap map = new HashMap();
			map.put("id", id);
			return sqlSess.selectList(namespace + ".receiveall", map);
		}finally{
			sqlSess.close();
		}
	}
	
	public List<MsgVO> Sendalllist(String id){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			HashMap map = new HashMap();
			map.put("id", id);
			return sqlSess.selectList(namespace + ".sendall", map);
		}finally{
			sqlSess.close();
		}
	}
	
	public MsgVO view(String num) {
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			HashMap map = new HashMap();
			map.put("num", num);
			return sqlSess.selectOne(namespace + ".view", map);
		}finally{
			sqlSess.close();
		}
	}
	
	public int NotReadCount(String id) {
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			HashMap map = new HashMap();
			map.put("id", id);
			return sqlSess.selectOne(namespace + ".notread", map);
		}finally{
			sqlSess.close();
		}
	}
	
	public int insertMsg(MsgVO vo) {
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			String statment = namespace + ".seqmsg";
			//시퀀스 값을 증가 시킨 후 값을 저장
			vo.setMsgNum(sqlSess.selectOne(statment));
			//qna0000001  <- 글번호 지정
			String a = "qna";
			for(int i = 0 ; i < 7-vo.getMsgNum().length() ; i++){
			   a += "0";
			}
			a+=vo.getMsgNum();
			vo.setMsgNum(a);
			
			int res = sqlSess.insert(namespace + ".insert", vo);
			if(res>0){
				sqlSess.commit();
			}else{
				sqlSess.rollback();
			}
			
			return res;
		}finally{
			sqlSess.close();
		}
	}
	
}
