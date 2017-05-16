package blossome.command.find;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import blossome.command.Command;
import blossome.command.Command2;
import blossome.command.CommandException;
import blossome.command.pageNumClass;
import blossome.session.AppealRepository;
import blossome.session.MemberRepository;
import blossome.session.TukRepository;
import blossome.vo.AppealVO;
import blossome.vo.FIndVO;
import blossome.vo.TukVO;

public class CmdTukDelete implements Command {
	private String next;

	public CmdTukDelete( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		try{
			

			/*
			 * 폼에 저장된 값을 가져와서 받아줌
			 * 그리고 test.jsp에 값을 보내줌
			 */
			FIndVO vo = new FIndVO();
			String age1 = request.getParameter("age1");
			String age2 = request.getParameter("age2");
			String gender = request.getParameter("gender");
			String[] loc = request.getParameterValues("loc");
			String[] hak = request.getParameterValues("hak");
			String key1 = request.getParameter("key1");
			String key2 = request.getParameter("key2");
			String[] mo = request.getParameterValues("mo");
			
			//현재 년도를 'yyyy'형식으로 불ㄹ러옴
			Date d = new Date();
			SimpleDateFormat f =  new SimpleDateFormat("yyyy");
			String ye = f.format(d);
			//나이값  20 으로 받아오면 년도로 전환해서 vo에 입력
			if(age1 == null || age1.equals("")){
			}else{
				vo.setAge1(String.valueOf((Integer.parseInt(ye) - Integer.parseInt(age1) +1)));
				vo.setAge2(String.valueOf((Integer.parseInt(ye) - Integer.parseInt(age2) +1)));
			}
			//나머지 값도 vo에 입력
			vo.setGender(gender);
			vo.setLoc(loc);
			vo.setHak(hak);
			vo.setKey1(key1);
			vo.setKey2(key2);
			vo.setMo(mo);
			
			//Repository에 값 전달
			MemberRepository repo = new MemberRepository();
			List<TukVO> list2 = repo.Findtuk(vo);
			request.setAttribute("list2", list2);
			
			
			
			
			HttpSession session = request.getSession();
			String id = (String)session.getAttribute("id");
			TukVO tvo = new TukVO();
			//나를 툭한 리스트에서 memId가 내가 선택할아이디니까 memId를 넣어줌
			tvo.setMemId(id);
			tvo.setChoiceId(request.getParameter("memId"));
			

	        int result = 0;
	        result = repo.deleteTuk(tvo);  
	        request.setAttribute("result2", result);
			
			
		}catch( Exception ex ){
			throw new CommandException("CommandDelete.java < 삭제시 > " + ex.toString() ); 
		}
		
		return next;			
	}

}
