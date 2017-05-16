package blossome.command.tuk;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import blossome.command.*;
import blossome.session.TukRepository;
import blossome.vo.TukVO;

public class CmdMygguckInsert implements Command{
	private String next;

	public CmdMygguckInsert( String _next ){
		next = _next;
	}
	
	public String execute(HttpServletRequest request) throws CommandException {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		
		
		TukVO vo = new TukVO();
		//나를 툭한 리스트에서 memId가 내가 선택할아이디니까 memId를 넣어줌
		vo.setMemId(id);
		vo.setChoiceId(request.getParameter("memId"));
		vo.setChoiceDate(request.getParameter("date"));
		vo.setChoiceState(Integer.parseInt(request.getParameter("state")));
//		vo.setChoiceMainImg(request.getParameter("mainImg"));
//		vo.setChoiceSubImg(request.getParameter("subImg"));
//		
//		vo.setMemName(request.getParameter("name"));
//		vo.setMemLoc(request.getParameter("loc"));
//		vo.setMemAge(request.getParameter("age"));
//		vo.setMemBlood(request.getParameter("blood"));
//		vo.setMemHeight(request.getParameter("height"));
//		vo.setMemAbility(request.getParameter("ability"));
//		vo.setMemHobby(request.getParameter("hobby"));
//		vo.setMemEmail(request.getParameter("email"));
//		vo.setMemBirth(request.getParameter("birth"));
//		vo.setMemReligion(request.getParameter("religion"));
		
		TukRepository repo = new TukRepository();
		
		//시퀀스 값 받아오기
		String tukSeq = repo.selectSeq();
        
        String seq = "tuk";
        for(int i=0; i<7-tukSeq.length(); i++){
           seq += "0";
        }
        seq += tukSeq;
        
        
        vo.setChoiceNum(seq);
        System.out.println("seq>>>>>>" + seq);
        int revo = repo.insertTuk(vo);  
        
        request.setAttribute("vo", revo);
        
		
		
		
		//리스트 뿌려주기
		
		List<TukVO> list = repo.myselectlist(id);
		request.setAttribute("list", list);
		return next;
	}

}
