<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/sample/header_css.jsp"></c:import>
</head>
<body>

<c:import url="/WEB-INF/views/sample/topheader.jsp"></c:import>
</body>

<div class = "justify-content-center text-center mt-3 mb-3">

<h3>해당 계좌 이체 내역 조회하기</h3>

</div>

<div class="mb-3 container" align="right">
	<a href="./list?bank_id=${param.bank_id}&order=1&view=${param.view}" class="btn btn-primary" role="button">과거순으로</a>
	<a href="./list?bank_id=${param.bank_id}&view=${param.view}" class="btn btn-primary" role="button">최신순으로</a>
</div>

<div class="mb-3 container" align="right">
	<a href="./list?bank_id=${param.bank_id}&view=1" class="btn btn-success" role="button">입금만 조회</a>
	<a href="./list?bank_id=${param.bank_id}&view=2" class="btn btn-success" role="button">출금만 조회</a>
	<a href="./list?bank_id=${param.bank_id}" class="btn btn-success" role="button">입금/출금 조회</a>
</div>

<div class ="container mt-5 justify-content-center text-center">

<table class="table table-hover">

	<thead>
	
		<tr>
			<td>Transaction date and time</td>
			<td>Division</td>
			<td>Deposit/withdrawal amount</td>
			<td>Balance at time of transaction</td>
		</tr>
	</thead>
	<tbody>
<c:forEach items="${dto}" var="ar">
<tr>
	<td>${ar.timepoint}</td>
	<td class="${ar.difference>'0'?'text-primary':'text-danger'}">
		<c:choose>
			<c:when test="${ar.difference>0}">Deposit</c:when>
		</c:choose>
	</td>
	<td class="${ar.difference>0?'text-primary':'text-danger'}">${ar.difference}</td>
	<td>${ar.resultbalance}</td>
</tr>
</c:forEach>
	</tbody>


</table>

</div>
<c:import url="/WEB-INF/views/sample/footer.jsp"></c:import>
</html>