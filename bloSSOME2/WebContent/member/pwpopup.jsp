<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="/bloSSOME2/lib/alopex-ui.min.js"></script> 
<script type="text/javascript" src="/bloSSOME2/member/js/menu.js"></script>
    <%String sel = (String)request.getAttribute("sel"); %>
	<form id="frm" name="frm" method="post">
<!-- 		<input type="password" name="pw" /> -->
<!-- 		<input type="button" id="btn" value="보내기" /> -->
		<div class="form-group">
  			<div class="col-md-10">
    			<div class="input-group">
					<input type="hidden" id="sel" value="<%=sel %>"/>
      				<input name="appendedtext" class="form-control" id="appendedtext"name="pw" type="password" placeholder="비밀번호 입력해주세요">
      				<span id="btn" class="input-group-addon">입력</span>
				</div>
			</div>
		</div>
	</form>
