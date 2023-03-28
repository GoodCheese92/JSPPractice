<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>board_list.jsp</title>
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/jquery-3.6.4.min.js"></script>
	</head>
	
	<body>
		<div class="row">
		<div class="col-2"></div>
		<div class="col-8" >
		<table class="table table-bordered border-success caption-top table-hover">
			<caption>:::게시판 목록:::</caption>
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>등록날짜</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="vo" items="${ board_list }">
				<tr>
					<td>${ vo.idx }</td>
					<td>${ vo.subject }</td>
					<td>${ vo.name }</td>
					<td>${ vo.regidate }</td>
					<td>${ vo.readhit }</td>
				</tr>
			</c:forEach>
			</tbody>
			
		</table>
		<div class="col-2"></div>
		</div>
		</div>	
	</body>
</html>