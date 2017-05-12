package blossome.command.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import blossome.command.Command;
import blossome.command.CommandException;
import blossome.session.QnaRepository;
import blossome.vo.QnaVO;

public class CmdadQnaPopup implements Command{
	private String next;
	
	public CmdadQnaPopup(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		String num = request.getParameter("num");
		System.out.println(num);
		
		request.setAttribute("num", num);
		return next;
	}
	
}
