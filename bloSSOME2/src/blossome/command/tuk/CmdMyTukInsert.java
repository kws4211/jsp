package blossome.command.tuk;

import javax.servlet.http.HttpServletRequest;
import blossome.command.*;
import blossome.session.TukRepository;
import blossome.vo.TukVO;

public class CmdMyTukInsert implements Command{
	private String next;

	public CmdMyTukInsert( String _next ){
		next = _next;
	}
	
	public String execute(HttpServletRequest request) throws CommandException {
		
		TukVO vo = new TukVO();

		
		
		TukRepository repo = new TukRepository();
	
		String choice_num = (String) request.getParameter("choiceN");
//		List <TukVO> mList = MessageDao.getInstance().selectList();
		request.setAttribute("re","이동되는지 확인");
		return next;
	}

}
