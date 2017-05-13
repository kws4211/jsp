package blossome.command.review;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import blossome.command.*;
import blossome.session.ReviewRepository;
import blossome.vo.ReviewVO;

public class CmdReviewView implements Command {
   private String next;

   public CmdReviewView( String _next ){
      next = _next;
   }
   @Override
   public String execute(HttpServletRequest request) throws CommandException {
      try{

    	  ReviewRepository repo = new ReviewRepository();
         List<ReviewVO> list = repo.selectReviewList();
         request.setAttribute("list", list);
         
         
      }catch( Exception ex ){
         throw new CommandException("CommandInput.java < 입력시 > " + ex.toString() ); 
      }
      return next;
      
      
   }


}