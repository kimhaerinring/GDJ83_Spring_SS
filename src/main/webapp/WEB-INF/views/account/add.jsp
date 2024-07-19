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

<h3>Product Join</h3>

</div>

<div class="container">
<form action="/account/add" method="post">

<div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">Enter the password required for your account.(4 Digit Number)</label>
  <input type="text" class="form-control" id="formGroupExampleInput" name = "bank_pw">
  <input type="hidden" class="form-control" id="formGroupExampleInput" name = "item_id" value="${account.item_id}">
</div>

<button type = "submit" class="btn btn-primary">product Join</button>
</form>
</div>
<c:import url="/WEB-INF/views/sample/footer.jsp"></c:import>
</html>