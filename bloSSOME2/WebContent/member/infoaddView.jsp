<%@page import="blossome.vo.MemVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% MemVO vo = (MemVO)request.getAttribute("vo"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="/bloSSOME2/member/js/info.js"></script> 

</head>
<body>
<%if(vo == null) {%>
	비밀번호 오류
	<% response.setHeader("Refresh","1;URL=index.member?cmd=menu");
}else{ %>
<jsp:include page="../bloMain/mainHeader.jsp"></jsp:include>
<br/>
<br/>
<br/>
<input type="hidden"  id="bd" value="<%=vo.getMemBirth()%>"/>
<input type="hidden"  id="lochi" value="<%=vo.getMemLoc()%>"/>
<div class="container">
  <form class="form-horizontal" role="form" id="frm" method="post">
    <fieldset>
      <legend>회원 정보 수정</legend>
      <div class="form-group">
        <label class="col-sm-3 control-label" for="id">ID</label>
        <div class="col-sm-3">
          <input type="text" class="form-control" name="id" id="id" value="<%=vo.getMemId()%>" readonly="readonly">
        </div>
      </div>
      
      <div class="form-group">
        <label class="col-sm-3 control-label" for="name">이름</label>
        <div class="col-sm-3">
          <input type="text" class="form-control" name="name" id="name" readonly="readonly">
        </div>
      </div>
      
      <div class="form-group">
        <label class="col-sm-3 control-label" for="pw">PASSWORD</label>
        <div class="row">
	        <div class="col-sm-3">
	          <input type="password" class="form-control" name="pw" id="pw" placeholder="비밀번호를 입력해주세요" value="<%=vo.getMemPass()%>" readonly="readonly">
	        </div>
	        <div class="col-sm-3">
          		<button type="button" class="btn btn-info">비밀번호변경</button>
        	</div>
        </div>
      </div>
      
      <div class="form-group">
        <label class="col-sm-3 control-label" for="pwch">PASSWORD CHECK</label>
        <div class="col-sm-3">
          <input type="password" class="form-control" name="pwch" id="pwch" placeholder="다시한번 입력해주세요" value="<%=vo.getMemPass()%>" readonly="readonly">
        </div>
      </div>
      
      <div class="form-group">
        <label class="col-sm-3 control-label" for="nick">닉네임</label>
        <div class="col-sm-3">
          <input type="text" class="form-control" name="nick" id="nick" placeholder="<%=vo.getMemNick()%>" value="<%=vo.getMemNick()%>">
        </div>
      </div>
      
      <div class="form-group">
        <label class="col-sm-3 control-label" for="month">Birth Day</label>
        <div class="col-sm-9">
          <div class="row">
            <div class="col-xs-2">
              <select class="form-control col-sm-2" name="year" id="year">
                <option>Year</option>
              </select>
            </div>
            <div class="col-xs-2">
              <select class="form-control" name="month" id="month">
                <option>Month</option>
              </select>
            </div>
            <div class="col-xs-2">
              <select class="form-control" name="date" id="date">
                <option>Day</option>
              </select>
            </div>
          </div>
        </div>
      </div>
      
      <div class="form-group">
        <label class="col-sm-3 control-label" for="tel1">전화번호</label>
        <div class="row">	
        	<div class="col-sm-1">
          	<input type="text" class="form-control" name="tel1" id="tel1" placeholder="Security Code" value="<%=vo.getMemTel().substring(0, 3) %>">
          	</div>
        	<div class="col-sm-1">
          	<input type="text" class="form-control" name="tel2" id="tel2" placeholder="Security Code" value="<%=vo.getMemTel().substring(3, 7) %>">
        	</div>
        	<div class="col-sm-1">
          	<input type="text" class="form-control" name="tel3" id="tel3" placeholder="Security Code" value="<%=vo.getMemTel().substring(7, 11) %>">
          	</div>
        </div>
      </div>
      
      
      <div class="form-group">
        <label class="col-sm-3 control-label" for="loc">지역</label>
        <div class="col-xs-2">
              <select class="form-control" name="loc" id="loc">
                <option>지역</option>
              </select>
        </div>
      </div>
      
      <div class="form-group">
        <label class="col-sm-3 control-label" for="qna">질문</label>
        <div class="col-sm-3">
          <input type="text" class="form-control" name="qna" id="qna" placeholder="Security Code" value="<%=vo.getMemQuestion() %>">
        </div>
      </div>
      
      <div class="form-group">
        <label class="col-sm-3 control-label" for="ans">답변</label>
        <div class="col-sm-3">
          <input type="text" class="form-control" name="ans" id="ans" placeholder="Security Code" value="<%=vo.getMemAnswer() %>">
        </div>
      </div>
      
      <div class="form-group">
        <label class="col-sm-3 control-label" for="email">Email</label>
        <div class="col-sm-5">
          <input type="text" class="form-control" name="email" id="email" placeholder="Email을 입력해주세요" value="<%=vo.getMemEmail() %>">
        </div>
      </div>
      
      <div class="form-group">
        <div class="col-sm-offset-3 col-sm-9">
          <button type="button" class="btn btn-success">수정하기</button>
          <button type="button" class="btn btn">취소</button>
        </div>
      </div>
    </fieldset>
  </form>
</div>
<%} %>
</body>
</html>