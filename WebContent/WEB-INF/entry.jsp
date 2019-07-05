<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="java.sql.*,javax.naming.*,javax.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="header.jsp">
	<jsp:param name="title" value="TODOリスト｜登録" />
</jsp:include>

	<form action="entry.html" method="post">
		<div class="alert alert-success alert-dismissible fade in" role="alert" id="seiko">
			<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
			<strong> 完了しました!</strong>
			<ul>
		  		<li>No.27のTodoを更新しました。</li>
			</ul>
		</div>

		<div class="alert alert-danger alert-dismissible fade in" role="alert" id="sippai">
			<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
			<strong > エラーが発生しました!</strong>
			<ul>
		  		<li>題名は必須入力です。</li>
		  		<li>題名は100文字以内にしてください。</li>
		  		<li>期限は「YYYY/MM/DD」形式で入力してください。</li>
		  	</ul>
		</div>

		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-11"><h2 class="dai">登録フォーム</h2></div>
		</div>
						<hr>

 		<div class="form-group ">
			<label class="col-sm-1 control-label"></label>
    		<label for="daimei" class="col-sm-2 control-label">題名</label>
    		<div class="col-sm-9">
      		<input type="text" class="form-control" placeholder="題名" id="daimei" name="title" value="${form.title}"></div>
    	</div>

    	<div class="form-group">
		  	<label  class="col-sm-1 control-label"></label>
		    <label for="syosai" class="col-sm-2 control-label">詳細</label>
  			<div class="col-sm-9">
			<textarea class="form-control" rows="3" id="syosai" placeholder="備考" name="detail" value="${form.details}"></textarea></div>
  		</div>

		<div class="form-group">
		  	<label class="col-sm-1 control-label"></label>
		    <label  class="col-sm-2 control-label">重要度</label>


		    <div class="col-sm-9">

				<label class="radio-inline">
		  			<input type="radio" name="importance" id="inlineRadio1"  name="importance" value="3" ${HTMLUtils.checked(form.importance, '3')}> ★★★
				</label><br>
				<label class="radio-inline">
			  		<input type="radio" name="importance" id="inlineRadio2"  name="importance" value="2" ${HTMLUtils.checked(form.importance, '2')}> ★★
				</label><br>
				<label class="radio-inline">
			  		<input type="radio" name="importance" id="inlineRadio3"  name="importance" value="1"${HTMLUtils.checked(form.importance, '1')}> ★
				</label><br>
			</div>
		</div>
		<div class="form-group ">
			<label class="col-sm-1 control-label"></label>
    		<label for="kigen" class="col-sm-2 control-label">期限</label>
    		<div class="col-sm-9">
      		<input type="text" class="form-control" id="kigen" placeholder="期限" name="deadline" value="${form.deadline}">
      		</div>
    	</div>

    	<div class="col-sm-3 control-label"></div>


		    <button type="submit" class="btn btn-default button" >キャンセル</button>
		    <button type="submit" class="btn btn-info button" >追加</button>
		</form>
<jsp:include page="footer.jsp"></jsp:include>