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
        .title {
	   		height: 150px;
	        width: 100%;
	        display: flex;
	        justify-content: center;
	        align-items: center;
	        font-weight: bold;
	        font-size: 35px;
	        padding-top: 100px;
	   	}
        .Lcontainer {
            width: 800px;
            margin: 100px auto;
            display: flex;
            justify-content: space-around;
            align-items: center;
            
        }
        .loginLeft {
            width: 50%;
            height: 400px;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
        }
        .loginRight {
            width: 50%;
            height: 400px;
            display: flex;
            justify-content: center;
        }
        .loginVideo {
            height: 400px; 
        }
        .loginBox {
            width: 90%;
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }
        .loginBox2 {
            height: 80%;
            background-color: white;
            border: 1px solid #D8D8D8;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
        .logo {
            width: 250px;
            height: 100px;
            margin-bottom: 10px;
        }
        .idBox {
            width: 228px;
            height: 30px;
            margin-bottom: 10px;
            background-color: #F6F6F6;
            border: 1px solid #D8D8D8;
            border-radius: 5px;
            padding: 0 10px;
        }
        input:focus {
            border: 1px dashed black;
            outline: none;

        }
        .pwBox {
            width: 228px;
            height: 30px;
            margin-bottom: 20px;
            background-color: #F6F6F6;
            border: 1px solid #D8D8D8;
            border-radius: 5px;
            padding: 0 10px;
        }

        .submitButton {
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
        .submitButton:hover {
            background-color: white;
            color: black;
        }
        .joinBox {
            background-color: white;
            border: 1px solid #D8D8D8;
            height: 15%;
            display: flex;
            justify-content: center;
            align-items: center;

        }
        .joinButton {
            font-weight: bold;
            color: black;
        }
        footer {
            border: 1px solid red;
            height: 50px;
            width: 20%;
            margin: 0 auto;
        }
    </style>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="title">
		LOGIN
	</div>
    <div class="Lcontainer">
        <div class="loginLeft">
            <video src="resources/img/exam.mp4" autoplay muted loop class="loginVideo"></video>
        </div>
        <div class="loginRight">
            <div class="loginBox">
                <div class="loginBox2">
                    <div>
                        <img src="resources/img/logo.png" alt="logo" class="logo">
                    </div>
                    <form action="/main">
                        <input type="text" name="id" placeholder="아이디" minlength="1" maxlength="10" class="idBox" required><br>
                        <input type="password" name="pw" placeholder="비밀번호" minlength="1" maxlength="15" class="pwBox" required><br>
                        <input type="submit" value="로그인" class="submitButton">
                    </form> 
                </div>
                <div class="joinBox">
                    <p>계정이 없으신가요?? <a href="/login/addMember" class="joinButton">가입하기</a></p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>