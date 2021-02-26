<%@ page language="java" contentType="text/html; charset=UTF8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>content view</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div style="width:750px; margin: 0 auto;">
	<h3 class="mt-5 mb-5">Content</h3>
	<table class="table">
		<form action="/board/modify" method="post">
			<input type="hidden" name="bid" value="${content_view.bid}">
			<colgroup>
				<col style="width: 20%;" />
				<col style="width: auto;" />
			</colgroup>
			<tr class="form-group">
				<td><label for="number">No.</label></td>
				<td> ${content_view.bid} </td>
			</tr>
			<tr class="form-group">
				<td><label for="hit">조회수</label></td>
				<td> ${content_view.bhit} </td>
			</tr>
			<tr class="form-group">
				<td><label for="name">이름</label></td>
				<td> <input type="text" class="form-control" name="bname" value="${content_view.bname}"></td>
			</tr>
			<tr class="form-group">
				<td><label for="title">제목</label></td>
				<td> <input type="text"  class="form-control" name="btitle" value="${content_view.btitle}"></td>
			</tr>
			<tr class="form-group">
				<td><label for="content"> 내용 </label></td>
				<td><textarea class="form-control" name="bcontent" rows="10">${content_view.bcontent}</textarea></td>
			</tr>
			<tr >
				<td colspan="2"> 
				<div>
					<input class="btn btn-info" type="submit" value="수정">
					<a class="btn btn-info" href="delete?bid=${content_view.bid}">삭제</a> 
					<a class="btn btn-info" href="reply_view?bid=${content_view.bid}">답변</a>
					
					&nbsp; <a class="btn btn-primary"  href="/board/plist" role="button">목록</a>
				</div>
			
				</td>
			</tr> 
		</form>
	</table>
	</div>
</body>
</html>