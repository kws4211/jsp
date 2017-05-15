package blossome.command.appeal;

import java.sql.Date;
import java.text.DecimalFormat;
import java.util.List;


import javax.servlet.http.HttpServletRequest;

import blossome.vo.AppealVO;
import blossome.command.*;
import blossome.session.AppealRepository;

public class CmdAppealInput implements Command {
	private String next;

	public CmdAppealInput( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		try{

			AppealVO vo = new AppealVO();
			
			vo.setAppTitle(request.getParameter("title"));
			vo.setAppContent(request.getParameter("content"));
			vo.setMemId(request.getParameter("memid"));
			vo.setAppImg(request.getParameter("appImg"));
			System.out.println("dasdasd>>>>>>>>" + vo.getAppTitle());
			AppealRepository repo = new AppealRepository();
			
			//시퀀스값 받아오기
			String appealSeq = repo.selectSeq();
			
			String seq = "app";
			for(int i=0; i<7-appealSeq.length(); i++){
				seq += "0";
			}
			seq += appealSeq;
			
			
			vo.setAppNum(seq);
			System.out.println("seq>>>>>>" + seq);
			AppealVO revo = repo.insertAppeal(vo);			
			
			request.setAttribute("vo", revo);
			
		}catch( Exception ex ){
			throw new CommandException("CommandInput.java < 입력시 > " + ex.toString() ); 
		}
		return next;
	}

}
