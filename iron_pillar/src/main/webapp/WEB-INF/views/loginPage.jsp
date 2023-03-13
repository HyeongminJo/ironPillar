<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 · ironPillar</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            text-decoration: none;
        }
        body {
            background-color: #F6F6F6;
        }
        .loginPageTitle {
	   		height: 150px;
	        width: 100%;
	        display: flex;
	        justify-content: center;
	        align-items: center;
	        font-weight: bold;
	        font-size: 35px;
	        padding-top: 100px;
	   	}
        .loginPageContainer {
            width: 800px;
            margin: 100px auto;
            display: flex;
            justify-content: space-around;
            align-items: center;
            
        }
        .loginPageLeft {
            width: 50%;
            height: 400px;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
        }
        .loginPageRight {
            width: 50%;
            height: 400px;
            display: flex;
            justify-content: center;
        }
        .loginPageVideo {
            height: 400px; 
        }
        .loginPageBox {
            width: 90%;
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }
        .loginPageBox2 {
            height: 80%;
            background-color: white;
            border: 1px solid #D8D8D8;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
        .loginPagelogo {
            width: 250px;
            height: 90px;
            margin-bottom: 10px;
        }
        .loginPageIdBox {
            width: 228px;
            height: 30px;
            margin-bottom: 10px;
            background-color: #F6F6F6;
            border: 1px solid #D8D8D8;
            border-radius: 5px;
            padding: 0 10px;
        }
        .loginPageInput:focus {
            border: 1px dashed black;
            outline: none;

        }
        .loginPagePwBox {
            width: 228px;
            height: 30px;
            margin-bottom: 20px;
            background-color: #F6F6F6;
            border: 1px solid #D8D8D8;
            border-radius: 5px;
            padding: 0 10px;
        }

        .loginPageSubmitButton {
            width: 250px;
            height: 32px;
            border: 1px solid black;
            border-radius: 10px;
            background-color: black;
            color: white;
            font-weight: bold;
            font-size: 15px;
            cursor: pointer;
            transition-duration: 400ms;
        }
        .loginPageSubmitButton:hover {
            background-color: white;
            color: black;
        }
        .loginPageJoinBox {
            background-color: white;
            border: 1px solid #D8D8D8;
            height: 15%;
            display: flex;
            justify-content: center;
            align-items: center;

        }
        .loginPageJoinButton {
            font-weight: bold;
            color: black;
        }
    </style>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="loginPageTitle">
		LOGIN
	</div>
    <div class="loginPageContainer">
        <div class="loginPageLeft">
            <video src="resources/img/exam.mp4" autoplay muted loop class="loginPageVideo"></video>
        </div>
        <div class="loginPageRight">
            <div class="loginPageBox">
                <div class="loginPageBox2">
                    <div>
                        <img src="resources/img/logo.png" alt="logo" class="loginPagelogo">
                    </div>
                    <form action="/login/processLogin" method="post">
                        <input type="text" name="memberId" placeholder="아이디" minlength="1" maxlength="10" class="loginPageIdBox loginPageInput" required><br>
                        <input type="password" name="memberPw" placeholder="비밀번호" minlength="1" maxlength="15" class="loginPagePwBox loginPageInput" required><br>
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