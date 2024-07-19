<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/sample/header_css.jsp"></c:import>
</head>
<body style="background-image: url('/resources/images/background-img.png')">

	<c:import url="/WEB-INF/views/sample/topheader.jsp"></c:import>

<div class = "justify-content-center text-center mt-3 mb-3">

<h3>Prouduct</h3>

</div>

<div class="container mt-5 justify-content-center text-center">


	<table class="table table-hover">

		<thead>

			<tr>
				<td>Product -Number</td>
				<td>Product-Name</td>
				<td>Product-Description</td>
				<td>Interest Rate</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="ar">
				<tr>

					<td>${ar.item_id}</td>
					<td><a href="./detail?item_id=${ar.item_id}">${ar.item_name}</a></td>
					<td>${ar.item_detail}</td>
					<td>${ar.item_rate}</td>

				</tr>
			</c:forEach>
		</tbody>


	</table>
</div>

<div class="container justify-content-center text-center mb-5">

	<div style="float: right">
		<a href="/product/add"><button class="btn btn-primary">Product Add</button></a>
	</div>

</div>

<!--페이지 버튼-->

<div class="container justify-content-center text-center">
	<nav aria-label="Page navigation example">
		<ul class="pagination justify-content-center">

			<li class="page-item ${pager.pre?'':'disabled'}"><a
				class="page-link"
				href="./list?page=${pager.startNum-1}&kind=${pager.kind}&search=${pager.search}"
				aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
			</a></li>

			<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" step="1"
				var="i">
				<li class="page-item"><a class="page-link"
					href="./list?page=${i}&kind=${pager.kind}&search=${pager.search}">${i}</a></li>
			</c:forEach>

			<li class="page-item ${pager.next?'':'disabled'}"><a
				class="page-link"
				href="./list?page=${pager.lastNum+1}&kind=${pager.kind}&search=${pager.search}"
				aria-label="Next"> <span aria-hidden="true">&raquo;</span>
			</a></li>
		</ul>
	</nav>

	<form action="./list" method="get"
		class="row row-cols-lg-auto g-3 align-items-center justify-content-end">


		<div class="col-12">
			<label class="visually-hidden" for="inlineFormSelectPref">Preference</label>
			<select name="kind" class="form-select" id="inlineFormSelectPref">
				<option value="k1">Product-Name</option>
				<option value="k2">Product-Description</option>
			</select>
		</div>

		<div class="col-12">
			<label class="visually-hidden" for="inlineFormInputGroupUsername"></label>
			<div class="input-group">
				<input name="search" type="text" class="form-control"
					id="inlineFormInputGroupUsername" placeholder="Search Text">
			</div>
		</div>
		<div class="col-12">
			<button type="submit" class="btn btn-primary">Search</button>
		</div>
	</form>
</div>
<c:import url="/WEB-INF/views/sample/footer.jsp"></c:import>
</html>