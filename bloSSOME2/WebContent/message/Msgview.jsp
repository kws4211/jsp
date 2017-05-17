<%@page import="blossome.vo.MsgVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% MsgVO vo = (MsgVO)request.getAttribute("vo"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/bloSSOME2/message/css/msgview.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="/bloSSOME2/lib/alopex-ui.min.js"></script> 
<style type="text/css">
blockquote{
    border-left:none
}

.quote-badge{
    background-color: rgba(0, 0, 0, 0.2);   
}

.quote-box{
    overflow: hidden;
    margin-left:1%;
    padding-right:10%;		
    border-radius: 17px;
    background-color: white;
    color:black;
    width: 88%;
    box-shadow: 2px 2px 2px 2px #E0E0E0;
    
}

.quotation-mark{
    
    margin-top: -10px;
    font-weight: bold;
    font-size:100px;
    color:#4ADFCC;
    font-family: "Times New Roman", Georgia, Serif;
    
}

.quote-text{
    font-size: 19px;
    margin-top: -65px;
    margin-bottom: 48%;	
    
}
</style>
<script type="text/javascript">
	$(function(){
		$("body").click(function(){
			$a.close();
		});
	});
</script>
</head>
<body>
<%-- 	글번호 : <%=vo.getMsgNum() %> <br/> --%>
	<div class="container">
    <blockquote class="quote-box">
      <p class="quotation-mark">
        <%=vo.getMsgName() %>
      </p>
      <p class="quote-text">
        <%=vo.getMsgContent() %>
      </p>
      <hr>
      <div class="blog-post-actions">
        <p class="blog-post-bottom pull-left">
          <%=vo.getMemId() %>
        </p>
      </div>
    </blockquote>
</div>
</body>
</html>