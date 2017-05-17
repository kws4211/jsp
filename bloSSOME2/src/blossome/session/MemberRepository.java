package blossome.session;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import blossome.vo.AppealVO;
import blossome.vo.FIndVO;
import blossome.vo.MemVO;
import blossome.vo.TukVO;

public class MemberRepository {
   
   String namespace = "blossom.mapper.LoginMapper";
   String namespace2 = "blossom.mapper.FindMapper";                                    

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
   /*
    * 총 회원수
    */
	public int checkMem() {
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			return sqlSess.selectOne(namespace + ".checkMem");
		} finally {
			sqlSess.close();
		}
	}
	
	/*
	 * 매칭을 기다리는 회원
	 */
	public int MetchingMem() {
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			return sqlSess.selectOne(namespace + ".metchingMem");
		} finally {
			sqlSess.close();
		}
	}
	/*
	 * 관리자 인원
	 */
	public int AdminMem() {
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			return sqlSess.selectOne(namespace + ".adminMem");
		} finally {
			sqlSess.close();
		}
	}
   /*
    * checkLogin
    * 역할 : 로그인 확인
    */
   public int checkLogin(String id, String pw){
      SqlSession sqlSess = getSelSessionFactory().openSession();
      try{
         HashMap map = new HashMap();
         map.put("id", id);
         map.put("pw", pw);
         return sqlSess.selectOne(namespace + ".checklogin", map);
      }finally{
         sqlSess.close();
      }

   }
   
   public int checkLogin(String id){
	      SqlSession sqlSess = getSelSessionFactory().openSession();
	      try{
	         HashMap map = new HashMap();
	         map.put("id", id);
	         return sqlSess.selectOne(namespace + ".checklogin", map);
	      }finally{
	         sqlSess.close();
	      }

	   }
   
   public int checkNick(String nick){
	      SqlSession sqlSess = getSelSessionFactory().openSession();
	      try{
	         HashMap map = new HashMap();
	         map.put("nick", nick);
	         return sqlSess.selectOne(namespace + ".checknick", map);
	      }finally{
	         sqlSess.close();
	      }

	   }
   /*
    * SearchFirst
    * 역할 : 이름과 email정보로 질문 값 가져옴
    */
   public MemVO SearchFirst(String name, String email) {
      SqlSession sqlSess = getSelSessionFactory().openSession();
      try{
         HashMap map = new HashMap();
         map.put("name", name);
         map.put("email", email);
         MemVO vo = sqlSess.selectOne(namespace + ".searchfirst", map);
         return vo;
      }finally{
         sqlSess.close();
      }
   }
   /*
    * SearchSecond
    * 역할 : id와 답변으로 id/pw를 알려줌
    */
   public MemVO SearchSecond(String id, String answer) {
      SqlSession sqlSess = getSelSessionFactory().openSession();
      try{
         HashMap map = new HashMap();
         map.put("id", id);
         map.put("answer", answer);
         MemVO vo = sqlSess.selectOne(namespace + ".searchsecond", map);
         return vo;
      }finally{
         sqlSess.close();
      }
   }
//   /*
//    * Find
//    * 역할 : 이상형 검색 옵션을 받아서 맞는 사람 검색
//    */
//   public List<MemVO> Find(FIndVO vo) {
//      SqlSession sqlSess = getSelSessionFactory().openSession();
//      try{
//         List<MemVO> list = sqlSess.selectList(namespace + ".find", vo);
//         return list;
//      }finally{
//         sqlSess.close();
//      }
//   }
//   
   public List<TukVO> Findtuk(FIndVO vo) {
      SqlSession sqlSess = getSelSessionFactory().openSession();
      try{
         List<TukVO> list = sqlSess.selectList(namespace2 + ".findtuk", vo);
         return list;
      }finally{
         sqlSess.close();
      }
   }
   
   
   
   public int idinfo(String id) {
      SqlSession sqlSess = getSelSessionFactory().openSession();
      try{
         HashMap map = new HashMap();
         map.put("id", id);
         int state = sqlSess.selectOne(namespace + ".idinfo", map);
         return state;
      }finally{
         sqlSess.close();
      }
   }
   
   public MemVO info(String id, String pw) {
      SqlSession sqlSess = getSelSessionFactory().openSession();
      try{
         HashMap map = new HashMap();
         map.put("id", id);
         map.put("pw", pw);
         
         return sqlSess.selectOne(namespace + ".info", map);
      }finally{
         sqlSess.close();
      }
   }
   
   public MemVO info(String id) {
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			HashMap map = new HashMap();
			map.put("id", id);
			
			return sqlSess.selectOne(namespace + ".info", map);
		}finally{
			sqlSess.close();
		}
	}
   
   public int modyfy(MemVO vo) {
                      
      SqlSession sqlSess = getSelSessionFactory().openSession();
      try{
         int res = sqlSess.update(namespace + ".modify", vo);
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
    //시퀀스 생성
   public String selectSeq(){
         SqlSession sqlSess = getSelSessionFactory().openSession();
         try{
             String result = sqlSess.selectOne(namespace2 + ".selectTukSeq");
            
            return result;
		} finally {
			sqlSess.close();
		}

	}

	// 툭하기
	public Integer insertTuk(TukVO tvo) {
		// JDBC : Connection, Mybatis : SqlSession
		SqlSession sqlSess = getSelSessionFactory().openSession();

		try {

			String statment = namespace2 + ".tukInsert";
			int result = sqlSess.insert(statment, tvo);
			if (result > 0) {
				sqlSess.commit();
				// JDBC : auto-commit, Mybatis : �븘�떂
			} else {
				sqlSess.rollback();
			}
			return result;
		} finally {
			sqlSess.close();
		}
	}

	// 툭삭제
	public int deleteTuk(TukVO vo) {
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			String statment = namespace2 + ".tukDelete";
			int result = sqlSess.delete(statment, vo);
			if (result > 0) {
				sqlSess.commit();
			} else {
				sqlSess.rollback();
			}
			return result;
		} finally {
			sqlSess.close();
		}
	}
	
	//꾸욱여부로 바꾸기
	
	public int gguck(String id) {
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try {
			String statment = namespace + ".gguck";
			HashMap map = new HashMap<>();
			map.put("id", id);
			int result = sqlSess.update(statment, map);
			if (result > 0) {
				sqlSess.commit();
			} else {
				sqlSess.rollback();
			}
			return result;
		} finally {
			sqlSess.close();
		}
	}

}