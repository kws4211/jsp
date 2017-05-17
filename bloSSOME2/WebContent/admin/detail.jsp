<%@page import="java.text.SimpleDateFormat"%>
<%@page import="blossome.vo.MemVO"%>
<%@page import="blossome.vo.AddMemVO"%>
<%@page import="java.util.*"%>
<%@page import="blossome.session.ApproveRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// 현재 페이지 id값을 받아와서 저장
	String memId =  request.getParameter("memId");
	// id값의 회원정보
	List<MemVO> list = (List<MemVO>)request.getAttribute("list");
	// id값의 회원추가정보
	List<AddMemVO> addlist = (List<AddMemVO>)request.getAttribute("addlist");
 	// 날짜형식 포맷
 	SimpleDateFormat formatType = new SimpleDateFormat("yyyy");
 	// 현재연도
 	int sysdate = Integer.parseInt(formatType.format(new Date()));
%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" type="text/css" href="/bloSSOME2/admin/css/detail.css" />

<!-- Latest compiled and minified JavaScript -->
<script type="text/javascript" src="/bloSSOME2/admin/js/detail.js"></script>


</head>
<body>

<div class="popcontainer">
	<div class="row">
		<div class="col-lg-3 col-sm-6">
            <div class="card hovercard">
            
            <%for(MemVO vo : list){
            	int birth = Integer.parseInt(vo.getMemBirth().substring(0, 4)); //회원의 태어난연도
                int age = (sysdate - birth) + 1; //나이
            %>
            <label id='laname' ><%=vo.getMemName() %>/<%=vo.getMemLoc() %></label><label id='laage'><%=age %>세</label>
            
            
                <div class="cardheader">
				
                </div>
                <%if(addlist.size() != 0){ %>
                <%for(AddMemVO addvo : addlist){ %>
                <div class="avatar">
                    <img alt="회원 프로필 사진" src="<%=addvo.getMemImg() %>">
                </div>
                
                <div class="info">
                <table>
                
                	<tr>
                  	<td>혈액형<input type="text" value='<%=addvo.getMemBlood() %>'></td><td>학력<input type="text" value='<%=addvo.getMemAbility() %>'></td>
                  	</tr>
                  	<tr>
             	 	<td>취미<br/><input type="text" value='<%=addvo.getMemHobby() %>'></td><td>종교<input type="text" value='<%=addvo.getMemReligion() %>'></td>
					</tr>
					<%} %>
					<tr>
             	 	<td>이메일<input type="text" value='<%=vo.getMemEmail() %>'></td>
             	 	</tr>
             	 	<%} else{%>
             	 	<tr>
                  	<td>혈액형<input type="text" value=''></td><td>학력<input type="text" value=''></td>
                  	</tr>
                  	<tr>
             	 	<td>취미<br/><input type="text" value=''></td><td>종교<input type="text" value=''></td>
					</tr>
					<tr>
             	 	<td>이메일<input type="text" value=''></td>
             	 	</tr>
					<%} %>
             	 	<%} %>
             	 
             	 </table>
                </div>
                <form id="frmapprove">
                <br/>   
                <div class="bottom">
                    <input type="submit" class="btn-xs btn-info btnok" value='회원승인'/>
                    <input id="memId" type="hidden" value='<%= memId %>'/>
                    <input type="submit" class="btn-xs btn-danger btnno" value='회원거절'/>
                </div>
                </form>
				
            </div>
        </div>
	</div>
</div>

</body>
</html>