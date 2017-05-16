package blossome.command.message;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import blossome.command.Command;
import blossome.command.CommandException;
import blossome.session.MemberRepository;
import blossome.session.MessageRepository;
import blossome.session.TukRepository;
import blossome.vo.MemVO;
import blossome.vo.MsgVO;
import blossome.vo.TukVO;

public class CmdMsgInsert implements Command{
	private String next;

	public CmdMsgInsert( String _next ){
		next = _next;
	}
	
	public String execute(HttpServletRequest request) throws CommandException {
		HttpSession session = request.getSession();
		String myid = (String)session.getAttribute("id");
		String con = (String)request.getParameter("con");
		String choid = (String)request.getParameter("id");
		
		MemberRepository remem = new MemberRepository();
		MemVO vo = remem.info(myid);
		
		MsgVO mvo = new MsgVO();
		mvo.setMemId(myid);
		mvo.setMsgContent(con);
		mvo.setMsgName(vo.getMemName());
		mvo.setMsgId(choid);
		
		//메시지 입력
		MessageRepository mrepo = new MessageRepository();
		mrepo.insertMsg(vo);
		
		// 꾸욱여부 1로 전환
		
		TukRepository repo = new TukRepository();
		List<TukVO> list = repo.mygguckselectlist(myid);
		request.setAttribute("list", list);
		return next;
	}

}
