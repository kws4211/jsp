package blossome.command.tuk;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import blossome.command.*;
import blossome.session.TukRepository;
import blossome.vo.TukVO;

public class CmdMegguckblock implements Command{
	private String next;

	public CmdMegguckblock( String _next ){
		next = _next;
	}
	
	public String execute(HttpServletRequest request) throws CommandException {
		String choiceN = (String) request.getParameter("choicenum");

		
		TukRepository repo = new TukRepository();
		int result = repo.blockgguck(choiceN);
		
		List<TukVO> list = repo.megguckselectlist();
		request.setAttribute("list", list);
		return next;
	}

}
