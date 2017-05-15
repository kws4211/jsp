package blossome.command.tuk;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import blossome.command.*;
import blossome.session.TukRepository;
import blossome.vo.TukVO;

public class CmdMeTukDelete implements Command{
	private String next;

	public CmdMeTukDelete( String _next ){
		next = _next;
	}
	
	public String execute(HttpServletRequest request) throws CommandException {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");

			String choiceN = (String) request.getParameter("choicenum");
			
			
			TukRepository repo = new TukRepository();
			int result = repo.deleteTuk(choiceN);
			
			List<TukVO> list = repo.myselectlist(id);
			request.setAttribute("list", list);
		
		return next;
	}

}
