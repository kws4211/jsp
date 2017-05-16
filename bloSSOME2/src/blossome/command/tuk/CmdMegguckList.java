package blossome.command.tuk;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import blossome.command.*;
import blossome.session.TukRepository;
import blossome.vo.TukVO;

public class CmdMegguckList implements Command{
	private String next;

	public CmdMegguckList( String _next ){
		next = _next;
	}
	
	public String execute(HttpServletRequest request) throws CommandException {
		
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		
		
		TukRepository repo = new TukRepository();
		List<TukVO> list = repo.megguckselectlist(id);
		request.setAttribute("list", list);
		return next;
	}

}
