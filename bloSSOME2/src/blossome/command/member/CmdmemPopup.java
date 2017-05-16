package blossome.command.member;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import blossome.command.Command;
import blossome.command.CommandException;
import blossome.command.pageNumClass;
import blossome.session.MemberRepository;
import blossome.session.QnaRepository;
import blossome.vo.QnaVO;

public class CmdmemPopup implements Command{
	private String next;
	
	public CmdmemPopup(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		String sel = request.getParameter("sel");
		
		request.setAttribute("sel", sel);
		return next;
	}
	
}
