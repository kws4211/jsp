package blossome.command.appeal;

import java.sql.Date;
import java.text.DecimalFormat;
import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

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
			AppealRepository repo = new AppealRepository();
			
			//시퀀스값 받아오기
			String appealSeq = repo.selectSeq();
			String seq = "app";
			for(int i=0; i<7-appealSeq.length(); i++){
				seq += "0";
			}
			seq += appealSeq;
			
			//파일 업로드
			String savePath = "C:\\yenni\\workspace4\\bloSSOME2\\WebContent\\upload";
			String dbPath = "/bloSSOME2/upload";
			int sizeLimit = 1024*1024*15;
			
			MultipartRequest multi = new MultipartRequest(request, savePath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
			
			String title = multi.getParameter("title");
			String content = multi.getParameter("content");
			String memid = multi.getParameter("memid");
			String appImg = multi.getFilesystemName("appImg");
			
			String real = dbPath + "/" + appImg;
			
			//vo에 set해주기
			vo.setAppNum(seq);
			vo.setAppTitle(title);
			vo.setAppContent(content);
			vo.setMemId(memid);
			vo.setAppImg(real);
			
			//insert
			AppealVO revo = repo.insertAppeal(vo);			
			
			
			request.setAttribute("vo", revo);
			
		}catch( Exception ex ){
			throw new CommandException("CommandInput.java < 입력시 > " + ex.toString() ); 
		}
		return next;
	}

}
