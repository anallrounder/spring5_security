<%@ page language="java" contentType="text/html; charset=UTF8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>list</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

</head>
<body>

	<div class="container" style="width: 750px; margin: 0 auto;">
		<h1 class="mt-5 mb-3">Board List</h1>
		<!-- 	<div class="table-responsive"> -->
		<table class="table"  ><!-- style="text-align:center;" -->
			<colgroup>
				<col style="width: 10%;"/>
				<col style="width: auto;" />
				<col style="width: 15%;" />
				<col style="width: 20%;" />
				<col style="width: 10%;" />
			</colgroup>
			<thead>
				<tr>
					<td scope="col">번호</td>
					<td scope="col">제목</td>
					<td scope="col">작성자</td>
					<td scope="col">날짜</td>
					<td scope="col">조회</td>
				</tr>
			<thead>
				<c:forEach items="${list}" var="vo">
					<tbody>
						<tr class="text-align-left">
							<td scope="row">${vo.bid}</td>
							<td><c:forEach begin="1" end="${vo.bindent}">[re]</c:forEach>
								<a href="content_view?bid=${vo.bid}">${vo.btitle}</a></td>
							<td>${vo.bname}</td>
							<td>${vo.bdate}</td>
							<td>${vo.bhit}</td>
						</tr>
					</tbody>
				</c:forEach>
			<tfoot>
				<tr>
					<td scope="row" colspan="5" class="justify-content-end"><a
						class="btn btn-primary mt-3" href="write_view" role="button">글작성</a></td>
				</tr>
			<tfoot>
		</table>
		<!-- 	</div> -->

	<div class="container" id="table">
<!-- 		<div class="row">
			<div class="col"> -->
				<ul class="pagination" >
					<c:if test="${pageMaker.prev}">
						<li class="paginate_button previous"><a class="page-link"
							href="plist${pageMaker.makeQuery(pageMaker.startPage - 1)}">«</a></li>
					</c:if>

					<c:forEach begin="${pageMaker.startPage}"
						end="${pageMaker.endPage}" var="idx">
						<c:out value="${pageMaker.cri.pageNum == idx?'':''}" />
						<li class="paginate_button"><a class="page-link"
							href="plist${pageMaker.makeQuery(idx)}">${idx}</a></li>
					</c:forEach>

					<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
						<li class="paginate_button next"><a class="page-link"
							href="plist${pageMaker.makeQuery(pageMaker.endPage + 1)}">»</a></li>
					</c:if>
				</ul>
				<!-- End of Pagination -->
<!-- 			</div>
		</div> -->
	</div>
	</div>
</body>
</html>