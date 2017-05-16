<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.util.List"%>
<%@ page import="blossome.vo.TukVO" %>
<%
	// 1. �ش� ���̵��� ������ ���´�
// 	String mem_id = request.getParameter("mem_id");
	// 2. Service�� getArticleById() ȣ���Ͽ� �� �Խñ۹�ȣ�� ���� ���ڵ带 �˻��Ѵ�.
	List<TukVO> list = (List<TukVO>)request.getAttribute("list");
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<script type="text/javascript" src="/bloSSOME2/tuk/js/tuk.js"></script>

</head>
<body>
<jsp:include page="../bloMain/mainHeader.jsp"></jsp:include>
<h3>���� �ٿ��� ���</h3>
<%if(list.size() != 0){ %>
<%for(TukVO vo : list){ %>
<div class="container">
    <div class="row">
     <div class="col-sm-10 col-sm-offset-1">
         <div class="col-md-4 col-sm-6">
         	
             <div class="card-container">
                <div class="card">
                	<!-- �� �ո� -->
                    <div class="front">
						<!-- ����̹��� -->
                        <div class="cover">
                            <img src="https://www.clipartsgram.com/image/129556292-kyz84k3.jpg"/>
                        </div>
                        <!-- �������̹��� -->
                        <div class="user">
                            <img class="img-circle" src="https://www2.mmu.ac.uk/media/mmuacuk/style-assets/images/r-research/profile-Zeyad.jpg"/>
                        </div>
                        <div class="content">
                            <div class="main">
                            <!-- �̸�/ ���� �޾ƿ��� -->
                            
                                <h3 class="name"><%=vo.getMemName() %> / <%=vo.getMemLoc() %></h3>
<%--                                 <p class="age">����  <%=vo.getMemAge() %></p> --%>
                                <div class="stats-container">
                                    <div class="stats">
                                        <h4>������</h4>
                                        <p>
                                            <%=vo.getMemBlood() %>
                                        </p>
                                    </div>
                                    <div class="stats">
                                        <h4>Ű</h4>
                                        <p>
                                           	<%=vo.getMemHeight() %>
                                        </p>
                                    </div>
                                    <div class="stats">
                                        <h4>�з�</h4>
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
                    
                    <!-- �� �޸� -->
                    <div class="back">
                        
                        <div class="content">
                            <div class="main">
                          
                                <div class="stats-container">
                                    <div class="">
                                        <h4>���</h4>
                                        <p>
                                           	<%=vo.getMemHobby() %>
                                        </p>
                                    </div>
                                    <div class="">
                                        <h4>�̸���</h4>
                                        <p>
                                           	<%=vo.getMemEmail() %>
                                        </p>
                                    </div>
                                    <div class="stats">
                                        <h4>����</h4>
                                        <p>
                                           	<%=vo.getMemBirth() %>
                                        </p>
                                    </div>
                                    <div class="stats">
                                        <h4>����</h4>
                                        <p>
                                           	<%= vo.getMemReligion() %>
                                        </p>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="footer">
                            <div class="social-links text-center">

                         	    <button type="button" class="btn btn-success btn-sm"><a href="xx.tuk?cmd=mygguck-delete&choicenum=<%=vo.getChoiceNum()%>">�ٿ����</a></button>
                         	    
								<input type="hidden" name="choiceN" value="<%=vo.getChoiceNum() %>"/>                         	    

                            </div>
                        </div>
                     </div> <!-- end back panel -->
                </div> <!-- end card -->
            </div> <!-- end card-container -->
        </div> <!-- end col sm 3 -->
<!--         <div class="col-sm-1"></div> -->
</div> <!-- end col-sm-10 -->
</div> <!-- end row -->
    <div class="space-200"></div>
</div>
                    <%}%> <!-- end of for -->
					<%}else{ %>
					<h3 class="name">�̸� / ����</h3>
                                <p class="age">���� </p>
                                <div class="stats-container">
                                    <div class="stats">
                                        <h4>������</h4>
                                        <p>
                                            AA
                                        </p>
                                    </div>
                                    <div class="stats">
                                        <h4>Ű</h4>
                                        <p>
                                           	AA
                                        </p>
                                    </div>
                                    <div class="stats">
                                        <h4>�з�</h4>
                                        <p>
                                           	AA
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="footer">
                            </div>
                        </div>
                    </div> <!-- end front panel -->
                    
                    <!-- �� �޸� -->
                    <div class="back">
                        
                        <div class="content">
                            <div class="main">
                          
                                <div class="stats-container">
                                    <div class="">
                                        <h4>���</h4>
                                        <p>
                                           	AA
                                        </p>
                                    </div>
                                    <div class="">
                                        <h4>�̸���</h4>
                                        <p>
                                           	AA
                                        </p>
                                    </div>
                                    <div class="stats">
                                        <h4>����</h4>
                                        <p>
                                           	AA
                                        </p>
                                    </div>
                                    <div class="stats">
                                        <h4>����</h4>
                                        <p>
                                           	AA
                                        </p>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="footer">
                            <div class="social-links text-center">
                         	    <button type="button" class="btn btn-success btn-sm"><a href="">�ٿ����</a></button>
                            </div>
                        </div>
					
					
					
					 <%}%> <!-- end of if -->


</body>
</html>