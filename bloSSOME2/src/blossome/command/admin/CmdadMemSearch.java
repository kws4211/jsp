package blossome.command.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import blossome.command.Command;
import blossome.command.CommandException;
import blossome.session.ApproveRepository;
import blossome.vo.MemVO;

public class CmdadMemSearch implements Command{
	private String next;
	
	public CmdadMemSearch(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		ApproveRepository repo = new ApproveRepository();
		String memId = request.getParameter("memId");
		String memName = request.getParameter("memName");
		String memSignup = request.getParameter("memSignup");
		
		List<MemVO> list = repo.memsearch(memId,memName,memSignup);
		request.setAttribute("list", list);
		return next;
	}
	
}
