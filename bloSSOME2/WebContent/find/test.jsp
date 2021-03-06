<%-- <%@page import="blossome.vo.MemVO"%> --%>
<%@page import="blossome.vo.TukVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% List<TukVO> list2 = (List<TukVO>)request.getAttribute("list2"); 
String id = (String)session.getAttribute("id");

/* int result = 0;
Object obj = request.getAttribute("result");
if( obj != null){
	result = 1;
}else {
	result = 0;
}

int result2 = 0;
Object obj2 = request.getAttribute("result2");
if( obj2 != null){
	result2 = 1;
}else {
	result2 = 0;
} */



%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<link href="http://netdna.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Arima+Madurai:100,200,300,400,500,700,800,900" rel="stylesheet">
<link rel="stylesheet" href="/bloSSOME2/lib/alopex-ui-default.css" />
<link href="/bloSSOME2/tuk/css/tuk.css" type="text/css" rel="stylesheet">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js"></script>
<script type="text/javascript" src="/bloSSOME2/lib/alopex-ui.min.js"></script>
<script type="text/javascript" src="/bloSSOME2/find/js/findidealtype.js"></script>

<title>Insert title here</title>
</head>
<body>
<jsp:include page="../bloMain/mainHeader_result.jsp"></jsp:include>
<h3 class="h3_title">이상형찾기 결과입니다! 당신의 이상형을 만나보세요</h3>
<%for(TukVO vo : list2){ %>
<div class="container">
    <div class="row">
     <div class="col-sm-10 col-sm-offset-1">
         <div class="col-md-4 col-sm-6">
             <div class="card-container">
                <div class="card">
                	<!-- 툭 앞면 -->
                    <div class="front">
						<!-- 배경이미지 -->
                        <div class="cover">
                            <img src="https://www.clipartsgram.com/image/129556292-kyz84k3.jpg"/>
                        </div>
                        <!-- 프로필이미지 -->
                        <div class="user">
                            <img class="img-circle" src="<%= vo.getMemImg() %>"/>
                        </div>
                        <div class="content">
                            <div class="main">
                            <!-- 이름/ 지역 받아오기 -->
                            
                                <h3 class="name"><%=vo.getMemName() %> / <%=vo.getMemLoc() %></h3>
<%--                                 <p class="age">나이  <%=vo.getMemAge() %></p> --%>
                                <div class="stats-container">
                                    <div class="stats">
                                        <h4>혈액형</h4>
                                        <p>
                                            <%=vo.getMemBlood() %>
                                        </p>
                                    </div>
                                    <div class="stats">
                                        <h4>키</h4>
                                        <p>
                                           	<%=vo.getMemHeight() %>
                                        </p>
                                    </div>
                                    <div class="stats">
                                        <h4>학력</h4>
                                        <p>
                                           	<%=vo.getMemAbility() %>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="footer">
<!--                                 <i class="fa fa-mail-forward"></i> Auto Rotation -->
                            </div>
                        </div>
                    </div> <!-- end front panel -->
                    
                    <!-- 툭 뒷면 -->
                    <div class="back">
                        
                        <div class="content">
                            <div class="main">
                          
                                <div class="stats-container">
                                    <div class="">
                                        <h4>취미</h4>
                                        <p>
                                           	<%=vo.getMemHobby() %>
                                        </p>
                                    </div>
                                    <div class="">
                                        <h4>이메일</h4>
                                        <p>
                                           	<%=vo.getMemEmail() %>
                                        </p>
                                    </div>
                                    <div class="stats">
                                        <h4>생일</h4>
                                        <p>
                                           	<%=vo.getMemBirth() %>
                                        </p>
                                    </div>
                                    <div class="stats">
                                        <h4>종교</h4>
                                        <p>
                                           	<%= vo.getMemReligion() %>
                                        </p>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="footer">
                            <div class="social-links text-center">
								<form id='frm' method="post">
								
								<!-- 나를툭한사람의 정보를 넘겨줌 -->
<%-- 								<input type="hidden" name="choiceN" value="<%=vo.getChoiceNum() %>"/> --%>
								<!-- 상대방 아이디 -->
								<input type="hidden" id="memId" name="memId" value="<%=vo.getMemId() %>"/>
								<input type="hidden" id="id" name="id" value="<%=id%>"/>
								
                         	    <button type="button" id="btn_tuk" class="btn btn-success btn-sm">툭하기</button>
                         	    <button type="button" id="btn_can" class="btn btn-success btn-sm">툭취소</button>
                         	    </form>

                            </div>
                        </div>
                     </div> <!-- end back panel -->
                </div> <!-- end card -->
            </div> <!-- end card-container -->
        </div> <!-- end col sm 3 -->
<!--         <div class="col-sm-1"></div> -->
</div> <!-- end col-sm-10 -->
</div> <!-- end row -->
</div>
<%}%> <!-- end of for -->
</body>
</html>