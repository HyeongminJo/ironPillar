<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 · ironPillar</title>
    <link href="/resources/css/ironPillar.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="loginPageTitle">
		LOGIN
	</div>
    <div class="loginPageContainer">
        <div class="loginPageLeft">
            <video src="<c:url value="/resources/img/exam.mp4"/>" autoplay muted loop class="loginPageVideo"></video>
        </div>
        <div class="loginPageRight">
            <div class="loginPageBox">
                <div class="loginPageBox2">
                    <div>
                        <img src="<c:url value="/resources/img/logo.png"/>" alt="logo" class="loginPagelogo">
                    </div>
                    <form action="/login/processLogin" method="post">
                        <input type="text" name="memberId" placeholder="아이디" minlength="1" maxlength="10" class="loginPageIdBox loginPageInput" value="${memberId}" required><br>
                        <input type="password" name="memberPw" placeholder="비밀번호" minlength="1" maxlength="15" class="loginPagePwBox loginPageInput" required><br>
                        <div class="loginPageError">${error}</div>
                        <input type="submit" value="로그인" class="loginPageSubmitButton">
                    </form> 
                </div>
                <div class="loginPageJoinBox">
                    <p>계정이 없으신가요?? <a href="/login/addMember" class="loginPageJoinButton">가입하기</a></p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>