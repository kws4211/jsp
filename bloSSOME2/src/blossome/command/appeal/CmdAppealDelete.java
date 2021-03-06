package blossome.command.appeal;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import blossome.command.Command;
import blossome.command.CommandException;
import blossome.command.pageNumClass;
import blossome.session.AppealRepository;
import blossome.vo.AppealVO;

public class CmdAppealDelete implements Command {
	private String next;

	public CmdAppealDelete( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		try{
			
			//세션에서 ID값 받아옴
	  		HttpSession session = request.getSession();
	  		String id = (String)session.getAttribute("id");
	  		
	  		//현재 페이지 넘버값을 받아옴
	  		String pnum = request.getParameter("pnum");
	  		//만약 받아온 페이지 넘버값이 없다면 1페이지로 고정
	  		int pageNum = 1;
	  		if(pnum !=  null) pageNum = Integer.parseInt(pnum);

	         AppealRepository repo = new AppealRepository();
	       //페이지 숫자 계산 하는 클래스
	 		pageNumClass p = new pageNumClass();
	 		//계산된 숫자를 res배열에 저장
	 		int[] res = p.SettingPageNum(repo.totalcol(id), 3, pageNum);
	         
	         List<AppealVO> list = repo.selectAppealList(id,res[1], res[2]);
	         request.setAttribute("list", list);
	         request.setAttribute("totalPage", res[0]);
			
		}catch( Exception ex ){
			throw new CommandException("CommandDelete.java < 삭제시 > " + ex.toString() ); 
		}
		
		return next;			
	}

}
