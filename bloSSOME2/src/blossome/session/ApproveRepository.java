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

public class ApproveRepository {
	String namespace = "blossome.mapper.MemberMapper";

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
	
	public List<MemVO> selectlist(String memId,int startnum, int endnum){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			HashMap map = new HashMap();
			map.put("memId", memId);
			map.put("startnum", startnum);
			map.put("endnum", endnum);
			
			String statment = namespace + ".alllist";
			return sqlSess.selectList(statment, map);
		} finally {
			sqlSess.close();
		}
	}
	
	public List<MemVO> selectlist(int startnum, int endnum){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			HashMap map = new HashMap();
			map.put("startnum", startnum);
			map.put("endnum", endnum);
			
			String statment = namespace + ".alllist";
			return sqlSess.selectList(statment, map);
		} finally {
			sqlSess.close();
		}
	}
	
	public List<MemVO> memlist(String memId,int startnum, int endnum){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			HashMap map = new HashMap();
			map.put("memId", memId);
			map.put("startnum", startnum);
			map.put("endnum", endnum);
			
			String statment = namespace + ".memlist";
			return sqlSess.selectList(statment,map);
			
		} finally {
			sqlSess.close();
		}
	}
	
	public List<MemVO> memlist(int startnum, int endnum){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			HashMap map = new HashMap();
			map.put("startnum", startnum);
			map.put("endnum", endnum);
			
			String statment = namespace + ".memlist";
			return sqlSess.selectList(statment,map);
			
		} finally {
			sqlSess.close();
		}
	}
	
	public Integer memtotalcol(){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			String statment = namespace + ".memlisttotalcol";
			return sqlSess.selectOne(statment);
		} finally {
			sqlSess.close();
		}
	}
	
	public Integer approvetotalcol(){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			String statment = namespace + ".approvetotalcol";
			return sqlSess.selectOne(statment);
		} finally {
			sqlSess.close();
		}
	}
	
	public List<MemVO> selbyIdlist(String memId){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			
			return sqlSess.selectList(namespace + ".sellist", memId);
		} finally {
			sqlSess.close();
		}
	}
	
	public List<AddMemVO> selbyIdaddlist(String memId){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			
			return sqlSess.selectList(namespace + ".addsellist", memId);
		} finally {
			sqlSess.close();
		}
	}
	
	public int update(String memId) {
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			String statment = namespace + ".update";
			int res = sqlSess.update(statment, memId);
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
	
	public int refusal(String memId) {
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			String statment = namespace + ".refusal";
			int res = sqlSess.delete(statment, memId);
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
	
	public int nonmem(String memId) {
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			String statment = namespace + ".nonmem";
			int res = sqlSess.delete(statment, memId);
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
	
	public int leave(String memId) {
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			String statment = namespace + ".leave";
			int res = sqlSess.update(statment, memId);
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
	
	public List<MemVO> memsearch(String memId,String memName,String memSignup){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			HashMap map = new HashMap();
			map.put("memId", memId);
			map.put("memName", memName);
			map.put("memSignup", memSignup);
			String statment = namespace + ".memsearch";
			
			return sqlSess.selectList(statment, map);
			
		} finally {
			sqlSess.close();
		}
	}
}
