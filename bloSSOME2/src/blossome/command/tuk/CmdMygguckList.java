package blossome.command.tuk;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import blossome.command.*;
import blossome.session.TukRepository;
import blossome.vo.TukVO;

public class CmdMygguckList implements Command{
	private String next;

	public CmdMygguckList( String _next ){
		next = _next;
	}
	
	public String execute(HttpServletRequest request) throws CommandException {
		
		TukRepository repo = new TukRepository();
		List<TukVO> list = repo.mygguckselectlist();
		request.setAttribute("list", list);
		return next;
	}

}
