<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script>
        function checkForm()
        {
            if(document.newMember.pw.value != document.newMember.pwCheck.value)
            {
                alert("비밀번호를 동일하게 입력해주세요.");
                return false;
            }
        }
    </script>
    <title>가입하기 · ironPillar</title>
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
        .Acontainer {
            width: 800px;
            margin: 50px auto;
            /* border: 1px solid red; */
            display: flex;
            justify-content: space-around;
            align-items: center;
        }
        .loginLeft {
            width: 50%;
            height: 600px;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
        }
        .loginRight {
            width: 50%;
            height: 600px;
            /* border: 1px solid purple; */
            display: flex;
            justify-content: center;
        }
        .loginVideo {
            height: 600px; 
        }
        .loginBox {
            /* background-color: white; */
            /* border: 1px solid blue; */
            width: 90%;
            height: 100%;
            /* border: 1px solid red; */
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
        .loginBox3 {
            width: 70%;
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
        select {
            outline: none;
        }
        select:focus {
            border: 1px dashed black;
        }
        .phoneBox {
            height: 30px;
            margin-bottom: 10px;
            background-color: #F6F6F6;
            border: 1px solid #D8D8D8;
            border-radius: 5px;
            padding: 0 10px;
        }
        .pB {
            width: 51.5px;
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
		JOIN
	</div>
    <div class="Acontainer">
        <div class="loginLeft">
            <video src="/resources/img/exam.mp4" autoplay muted loop class="loginVideo"></video>
        </div>
        <div class="loginRight">
            <div class="loginBox">
                <div class="loginBox2">
                    <div class="loginBox3">
                        <div>
                            <img src="/resources/img/logo.png" alt="logo" class="logo">
                        </div>
                        <form name="newMember" action="/login" method="post" onsubmit="return checkForm()">
                            <input type="text" name="id" placeholder="아이디" minlength="1" maxlength="10" class="idBox" required><br>
                            <input type="password" name="pw" placeholder="비밀번호" minlength="1" maxlength="15" class="idBox" required><br>
                            <input type="password" name="pwCheck" placeholder="비밀번호확인" minlength="1" maxlength="15" class="idBox" required><br>
                            <input type="text" name="nick" placeholder="닉네임" minlength="1" maxlength="8"class="idBox" required><br>
                            <select name="phone1" class="phoneBox">
                                <option value="010">010</option>
                                <option value="011">011</option>
                                <option value="012">012</option>
                                <option value="013">013</option>
                                <option value="014">014</option>
                                <option value="015">015</option>
                                <option value="016">016</option>
                                <option value="017">017</option>
                                <option value="018">018</option>
                                <option value="019">019</option>
                            </select>
                             - <input type="text" maxlength="4" size="3" placeholder="4자리" class="phoneBox pB" required>
                             - <input type="text" maxlength="4" size="3" placeholder="4자리" class="phoneBox pB" required><br>
                            <input type="text" name="address" placeholder="주소" maxlength="30" class="pwBox" required>
                            <input type="submit" value="가입" class="submitButton">
                        </form>
                    </div> 
                </div>
                <div class="joinBox">
                    <p>계정이 있으신가요? <a href="/login" class="joinButton">로그인</a></p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>