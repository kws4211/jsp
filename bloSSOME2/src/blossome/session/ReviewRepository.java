package blossome.session;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import blossome.vo.ReviewVO;

public class ReviewRepository {
	
	String namespace = "blossome.mapper.ReviewMapper";

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
	
	//전체목록
	public List<ReviewVO> selectReviewList(String id, int startnum, int endnum){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			HashMap map = new HashMap();
			map.put("id", id);
			map.put("startnum", startnum);
			map.put("endnum", endnum);
			return sqlSess.selectList(namespace + ".selectReviewView",map);
		}finally{
			sqlSess.close();
		}

	}
	
	//각각의내용
	public ReviewVO selectReviewDetailList(String revId){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			HashMap map = new HashMap();
			map.put("revId", revId);
			return sqlSess.selectOne(namespace + ".selectReviewDetailView", map);
		}finally{
			sqlSess.close();
		}

	}
	
	//게시판 추가
	public ReviewVO insertReview(ReviewVO vo){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			System.out.println(vo.getRevNum());
			System.out.println(vo.getMemId());
			System.out.println(vo.getRevTitle());
			System.out.println(vo.getRevContent());
			System.out.println(vo.getRevImg());
			int result = 0;
			 int res = sqlSess.insert(namespace + ".insertReview", vo);
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
			 String result = sqlSess.selectOne(namespace + ".selectReviewSeq");
			
			return result;
		}finally{
			sqlSess.close();
		}
	}
	
	//게시판 수정
	public ReviewVO updaterev(ReviewVO vo){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			
			int result = 0;
			 int res = sqlSess.insert(namespace + ".updateReview", vo);
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
	public Integer deleteReviewList(String revId){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			int result = 0;
			int res = sqlSess.delete(namespace + ".deleteReview" , revId); 
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
	
	//totalcol 받아오기
	public Integer totalcol(String id){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			String statment = namespace + ".totalcol";
			return sqlSess.selectOne(statment);
		} finally {
			sqlSess.close();
		}
	}
	//count상태값 변경
		public Integer updateRevCount(String revId){
			SqlSession sqlSess = getSelSessionFactory().openSession();
			try{
				int result = 0;
				int res = sqlSess.update(namespace + ".updateRevCount" , revId); 
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
	
}
