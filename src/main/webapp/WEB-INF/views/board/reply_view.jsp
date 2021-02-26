<%@ page language="java" contentType="text/html; charset=UTF8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>reply view</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div style="width:750px; margin: 0 auto;">
	<h3 class="mt-5 mb-5">Reply</h3>
	<table class="table">
		<form action="/board/reply" method="post">
			<input type="hidden" name="bid" value="${reply_view.bid}" /> <input
				type="hidden" name="bgroup" value="${reply_view.bgroup}" /> <input
				type="hidden" name="bstep" value="${reply_view.bstep}" /> <input
				type="hidden" name="bindent" value="${reply_view.bindent}" />
			<colgroup>
				<col style="width: 20%;" />
				<col style="width: auto;" />
			</colgroup>
			
			<tr class="form-group">
				<td><label for="number">No.</label></td>
				<td>${reply_view.bid}</td>
			</tr>
			<tr class="form-group">
				<td><label for="hit">조회수</label></td>
				<td>${reply_view.bhit}</td>
			</tr>
			<tr class="form-group">
				<td><label for="name">이름</label></td>
				<td><input type="text" class="form-control" name="bname" value="${reply_view.bname}"></td>
			</tr>
			<tr class="form-group">
				<td><label for="title">제목</label></td>
				<td><input type="text" class="form-control" name="btitle" value="${reply_view.btitle}"></td>
			</tr>
			<tr class="form-group">
				<td><label for="content"> 내용 </label></td>
				<td><textarea class="form-control" rows="10" name="bcontent" value="${reply_view.bcontent}">${reply_view.bcontent}</textarea></td>
			</tr>
			<tr>
				<td colspan="2">
				<input class="btn btn-info" type="submit" value="답변"> 
				
				<a class="btn btn-primary"  href="plist" role="button">목록</a></td>
			</tr>

		</form>
	</table>
</body>
</html>