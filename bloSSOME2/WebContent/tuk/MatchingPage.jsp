<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.List"%>
<%@ page import="blossome.vo.TukVO" %>
<%
	List<TukVO> list = (List<TukVO>)request.getAttribute("list");
	String id = (String)session.getAttribute("id");
	String img = (String)session.getAttribute("img");
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>매칭</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="/bloSSOME2/lib/alopex-ui-default.css" />
<link href="http://netdna.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Arima+Madurai:100,200,300,400,500,700,800,900" rel="stylesheet">
<link href="/bloSSOME2/tuk/css/tuk.css" type="text/css" rel="stylesheet">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="/bloSSOME2/lib/alopex-ui.min.js"></script> 
<script type="text/javascript" src="/bloSSOME2/tuk/js/tuk.js"></script>

</head>
<body>
<jsp:include page="tukheader.jsp"></jsp:include>

<h3 class="h3_title">매칭성공!! 짝짝!</h3>
<%if(list.size() != 0){ %>
<%for(TukVO vo : list){ %>
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
<%--                          	    xx.tuk?cmd=popup&choicenum=<%=vo.getChoiceNum()%> --%>
								<input type="hidden" name="choiceN" value="<%=vo.getChoiceId() %>"/>                         	    
								<input type="hidden" name="choiceN" value="<%=vo.getMemName() %>"/>                         	    
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
					<%}else{ %>
					<h4 class="empty_text">매칭된 사람이 없습니다.</h4>
					
					
					
					 <%}%> <!-- end of if -->
	
</body>
</html>