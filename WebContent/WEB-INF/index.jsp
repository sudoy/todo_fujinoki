<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="java.sql.*,javax.naming.*,javax.sql.*" %>
<%@ page import="todo.utils.HTMLUtils" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<jsp:include page="header.jsp">
	<jsp:param name="title" value="TODOリスト｜一覧" />
</jsp:include>
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
			<table class="table table-condensed">
			<tr>
		  		<th>#</th><th>題名</th><th>重要度</th><th>期限</th>
		  	</tr>

			<c:forEach items="${result}" var="r">
			  	<tr>
			  		<td>${r.id}</td>
			  		<td><a href="update.html">${r.title}</a></td>
			  		<td>${HTMLUtils.important(r.importance)}</td>
			  		<td>${HTMLUtils.date(r.deadline)}</td>
				</tr>
			</c:forEach>
		</table>
			<a href="entry.html" class="btn btn-info" >追加</a>
<jsp:include page="footer.jsp"></jsp:include>