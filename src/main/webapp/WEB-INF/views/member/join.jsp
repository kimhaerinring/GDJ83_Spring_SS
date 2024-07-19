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
<body style="background-image: url('/resources/images/background-img.png')">

<c:import url="/WEB-INF/views/sample/topheader.jsp"></c:import>
</body>
<div class = "justify-content-center text-center mt-3 mb-3">

<h3>Join</h3>

</div>

<div class="container" >
<form class="row g-3" action="/member/join" method="post" id="frm"  enctype="multipart/form-data">

  <div class="col-12">
    <label for="inputID" class="form-label">ID</label>
    <input type="text" class="form-control ch" id="inputId" name="member_id">
  </div>
  <div class="col-md-6">
    <label for="inputPassword" class="form-label">Password</label>
    <input type="password" class="form-control ch" id="inputPassword">
  <div id="pwerror"></div>
  </div>

  <div class="col-md-6">
    <label for="inputPassword" class="form-label">Password</label>
    <input type="password" class="form-control ch" id="inputPasswordCheck" name="member_pw">
  <div id="pweeqrror"></div>
  </div>

   <div class="col-12">
    <label for="inputName" class="form-label">Name</label>
    <input type="text" class="form-control ch" id="inputName" name="member_name">
  </div>
   <div class="col-12">
    <label for="inputPhone" class="form-label">Phone-Number</label>
    <input type="text" class="form-control ch" id="inputPhone" name="member_phone">
  </div>
  <div class="col-12">
    <label for="inputMail" class="form-label">E-mail</label>
    <input type="text" class="form-control ch" id="inputMail" name="member_mail">
  </div>
  <div class="col-12">
    <button type="button" id="add" class="btn btn-primary">PicturesAdd</button>
  </div>
  <div id="result">

  </div>
  <div class="col-12">
    <button type="submit" id="btn" class="btn btn-primary">Join</button>
  </div>
</div>
</form>


<c:import url="/WEB-INF/views/sample/footer.jsp"></c:import>
<!-- <script type="text/javascript" src="../resources/js/member/memberJoinCheck.js"></script>-->
<script type="text/javascript" src="../resources/js/commons/files.js"></script>
</html>