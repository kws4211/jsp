<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String id = (String)request.getAttribute("id"); %>
<% String name = (String)request.getAttribute("name"); %>

<script type="text/javascript" src="/bloSSOME2/tuk/js/tuk.js"></script>
<form method="post" id="frm">
<div class="container" style="width: 100%">
    <div style="width: 100%">        
        <br style="clear:both" >
            <div class="form-group col-md-15 ">                                
                <label id="messageLabel" for="message">어필 할 수 있는 Message를 전해주세요 </label>
                <textarea class="form-control input-sm" type="textarea" name="con" id="message" placeholder="Message"  rows="7"></textarea>
            </div>
        <br style="clear:both">
        <div class="form-group col-md-3">
        <button class="form-control input-sm btn btn-success disabled" id="rebtn" name="btnSubmit" type="button" style="height:35px">보내기</button>    
    </div>
</div>
</form>