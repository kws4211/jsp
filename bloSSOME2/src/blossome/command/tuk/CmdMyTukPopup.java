package blossome.command.tuk;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import blossome.command.*;
import blossome.session.QnaRepository;
import blossome.session.TukRepository;
import blossome.vo.QnaVO;
import blossome.vo.TukVO;

public class CmdMyTukPopup implements Command{
	private String next;

	public CmdMyTukPopup( String _next ){
		next = _next;
	}
	
	public String execute(HttpServletRequest request) throws CommandException {
		//초이스번호를 받음
		String num = request.getParameter("choicenum");
		TukRepository repo = new TukRepository();
//		TukVO vo = repo.selectByNum(num);
				
//		request.setAttribute("tukvo", vo);
		return next;
	}

}
