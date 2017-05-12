package blossome.command.appeal;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import blossome.command.*;
import blossome.session.AppealRepository;
import blossome.vo.AppealVO;

public class CmdAppealView implements Command {
   private String next;

   public CmdAppealView( String _next ){
      next = _next;
   }
   @Override
   public String execute(HttpServletRequest request) throws CommandException {
      try{

         AppealRepository repo = new AppealRepository();
         List<AppealVO> list = repo.selectAppealList();
         request.setAttribute("list", list);
         
         
      }catch( Exception ex ){
         throw new CommandException("CommandInput.java < 입력시 > " + ex.toString() ); 
      }
      return next;
      
      
   }


}