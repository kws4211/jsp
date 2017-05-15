<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<link rel="stylesheet" href="/bloSSOME2/find/css/findidealtype.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script type="text/javascript" src="/bloSSOME2/find/js/findidealtype.js"></script>
</head>
<body>
<jsp:include page="../bloMain/mainHeader.jsp"></jsp:include>
<div class="container">
	<div class="row">
		<section>
        <div class="wizard">
            <div class="wizard-inner">
                <div class="connecting-line"></div>
                <ul class="nav nav-tabs" role="tablist">

                    <li role="presentation" class="active">
                        <a href="#step1" data-toggle="tab" aria-controls="step1" role="tab" title="나이">
                            <span class="round-tab">
                                <i class="glyphicon glyphicon-folder-open"></i>
                            </span>
                        </a>
                    </li> 

                    <li role="presentation" class="disabled">
                        <a href="#step2" data-toggle="tab" aria-controls="step2" role="tab" title="성별">
                            <span class="round-tab">
                                <i class="glyphicon glyphicon-pencil"></i>
                            </span>
                        </a>
                    </li>
                    <li role="presentation" class="disabled">
                        <a href="#step3" data-toggle="tab" aria-controls="step3" role="tab" title="지역">
                            <span class="round-tab">
                                <i class="glyphicon glyphicon-picture"></i>
                            </span>
                        </a>
                    </li>
                    
                    <li role="presentation" class="disabled">
                        <a href="#step4" data-toggle="tab" aria-controls="step4" role="tab" title="학력">
                            <span class="round-tab">
                                <i class="glyphicon glyphicon-picture"></i>
                            </span>
                        </a>
                    </li>
                    <li role="presentation" class="disabled">
                        <a href="#step5" data-toggle="tab" aria-controls="step5" role="tab" title="키">
                            <span class="round-tab">
                                <i class="glyphicon glyphicon-picture"></i>
                            </span>
                        </a>
                    </li>
                    <li role="presentation" class="disabled">
                        <a href="#step6" data-toggle="tab" aria-controls="step6" role="tab" title="종교">
                            <span class="round-tab">
                                <i class="glyphicon glyphicon-picture"></i>
                            </span>
                        </a>
                    </li>

                    <li role="presentation" class="disabled">
                        <a href="#complete" data-toggle="tab" aria-controls="complete" role="tab" title="Complete">
                            <span class="round-tab">
                                <i class="glyphicon glyphicon-ok"></i>
                            </span>
                        </a>
                    </li>
                </ul>
            </div>

            <form role="form" name="frm" id="frm" >
                <div class="tab-content">
                    <div class="tab-pane active" role="tabpanel" id="step1">
                        <h3>나이</h3>
                        <div class="col-md-2">
								<input class="form-control input-md" name="age1" type="text" placeholder="">
								<label class="col-md-1 control-label" for="">~</label> 
								<input class="form-control input-md" name="age2" type="text" placeholder="">
						</div>
                        <ul class="list-inline pull-right">
                            <li><button type="button" class="btn btn-primary next-step">Save and continue</button></li>
                        </ul>
                    </div>
                    <div class="tab-pane" role="tabpanel" id="step2">
                        <h3>성별</h3>
                        <input type="radio" name="gender" class="gender" value="남"/> 남자
                        <input type="radio" name="gender" class="gender" value="여"/> 여자
                        <ul class="list-inline pull-right">
                            <li><button type="button" class="btn btn-default prev-step">Previous</button></li>
                            <li><button type="button" class="btn btn-primary next-step">Save and continue</button></li>
                        </ul>
                    </div>
                    <div class="tab-pane" role="tabpanel" id="step3">
                        <h3>지역</h3>
                        <input type="checkbox" name="loc" class="loc" value="서울"/> 서울
                        <input type="checkbox" name="loc" class="loc" value="경기"/> 경기
                        <input type="checkbox" name="loc" class="loc" value="강원"/> 강원
                        <input type="checkbox" name="loc" class="loc" value="충북"/> 충북
                        <input type="checkbox" name="loc" class="loc" value="충남"/> 충남
                        <input type="checkbox" name="loc" class="loc" value="전북"/> 전북
                        <input type="checkbox" name="loc" class="loc" value="전남"/> 전남
                        <input type="checkbox" name="loc" class="loc" value="경북"/> 경북
                        <input type="checkbox" name="loc" class="loc" value="경남"/> 경남
                        <input type="checkbox" name="loc" class="loc" value="제주"/> 제주
                        <ul class="list-inline pull-right">
                            <li><button type="button" class="btn btn-default prev-step">Previous</button></li>
                            <li><button type="button" class="btn btn-default next-step">Skip</button></li>
                            <li><button type="button" class="btn btn-primary btn-info-full next-step">Save and continue</button></li>
                        </ul>
                    </div>
                    <div class="tab-pane" role="tabpanel" id="step4">
                        <h3>학력</h3>
                       	<input type="checkbox" name="hak" class="hak" value="중졸"/> 중졸
                       	<input type="checkbox" name="hak" class="hak" value="고졸"/> 고졸
                       	<input type="checkbox" name="hak" class="hak" value="대졸"/> 대졸
                       	<input type="checkbox" name="hak" class="hak" value="박사"/> 박사
                        <ul class="list-inline pull-right">
                            <li><button type="button" class="btn btn-default prev-step">Previous</button></li>
                            <li><button type="button" class="btn btn-default next-step">Skip</button></li>
                            <li><button type="button" class="btn btn-primary btn-info-full next-step">Save and continue</button></li>
                        </ul>
                    </div>
                    <div class="tab-pane" role="tabpanel" id="step5">
                        <h3>키</h3>
							<div class="col-md-2">
								<input class="form-control input-md" name="key1" type="text" placeholder="">
								<label class="col-md-1 control-label" for="">~</label> 
								<input class="form-control input-md" name="key2" type="text" placeholder="">
							</div>
							<ul class="list-inline pull-right">
                            <li><button type="button" class="btn btn-default prev-step">Previous</button></li>
                            <li><button type="button" class="btn btn-default next-step">Skip</button></li>
                            <li><button type="button" class="btn btn-primary btn-info-full next-step">Save and continue</button></li>
                        </ul>
                    </div>
                    <div class="tab-pane" role="tabpanel" id="step6">
                        <h3>종교</h3>
							<div class="col-md-2">
                        		<input type="checkbox" name="mo" class="mo" value="기독교"/> 기독교
                       			<input type="checkbox" name="mo" class="mo" value="불교"/> 불교
                       			<input type="checkbox" name="mo" class="mo" value="천주교"/> 천주교
                       			<input type="checkbox" name="mo" class="mo" value="기타"/> 기타
							</div>
							<ul class="list-inline pull-right">
                            <li><button type="button" class="btn btn-default prev-step">Previous</button></li>
                            <li><button type="button" class="btn btn-default next-step">Skip</button></li>
                            <li><button type="button" class="btn btn-primary btn-info-full next-step">Save and continue</button></li>
                        </ul>
                    </div>
						<div class="tab-pane" role="tabpanel" id="complete">
							<h3>Complete</h3>
							<label class="col-md-4 control-label" for="subbtn"></label>
							<div class="col-md-4">
								<button name="subbtn" class="btn btn-success" id="subbtn">결과 찾기</button>
							</div>
						</div>
						<div class="clearfix"></div>
                </div>
            </form>
        </div>
    </section>
   </div>
</div>
</body>
</html>