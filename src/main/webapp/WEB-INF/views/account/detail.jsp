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

<h3>Product Description </h3>

</div>


<div class ="container mt-5 justify-content-center text-center">
	<table class="table table-hover mt-3">

		<thead>
		
			<tr>
				<td>Name</td>
				<td>Open-Date</td>
				<td>Account Number</td>
				<td>Product Name</td>
				<td>Product-Description</td>
				<td>Interest Rate</td>
				<td>Balance</td>
			</tr>
		</thead>
		<tbody>
			<tr>
			
				<td>${member.member_name}</td>
				<td>${acinfo.open_date}</td>
				<td>${acinfo.bank_id}</td>
				<td>${acinfo.productDTO.item_name}</td>
				<td>${acinfo.productDTO.item_detail}</td>
				<td>${acinfo.productDTO.item_rate}</td>
				<td>${acinfo.balance}</td>
	
			
			</tr>	

		</tbody>


</table>  

</div>

<div class="container" align="right">
<a href="./transfer?bank_id=${acinfo.bank_id}&balance=${acinfo.balance}" class="btn btn-primary">Transfer</a>
<a href="./list?bank_id=${acinfo.bank_id}&order=0&view=0" class="btn btn-primary">Transfer list</a>
</div>

<c:import url="/WEB-INF/views/sample/footer.jsp"></c:import>
</html>