package blossome.command.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import blossome.command.Command;
import blossome.command.CommandException;
import blossome.session.ApproveRepository;
import blossome.vo.AddMemVO;
import blossome.vo.MemVO;

public class CmdadDetailAddMem implements Command{
	private String next;
	
	public CmdadDetailAddMem(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		String memId = request.getParameter("memId");
		ApproveRepository repo = new ApproveRepository();
		
		List<AddMemVO> list = repo.selbyIdaddlist(memId);
		List<MemVO> list2 = repo.selbyIdlist(memId);
		request.setAttribute("addlist", list);
		request.setAttribute("list", list2);
		return next;
	}
}
