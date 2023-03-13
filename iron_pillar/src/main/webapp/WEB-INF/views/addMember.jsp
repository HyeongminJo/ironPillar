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
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
    window.onload = function(){
        document.getElementById("address_kakao").addEventListener("click", function(){ 
            new daum.Postcode({
                oncomplete: function(data) { 
                    document.getElementById("address_kakao").value = data.address; 
                    document.querySelector("input[name=address_detail]").focus();
                }
            }).open();
        });
    }
    </script>
    <script type="text/javascript">
		function addMember()
		{
			alert("회원가입이 완료되었습니다.");
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
        .addMemberTitle {
	   		height: 150px;
	        width: 100%;
	        display: flex;
	        justify-content: center;
	        align-items: center;
	        font-weight: bold;
	        font-size: 35px;
	        padding-top: 100px;
	   	}
        .addMemberContainer {
            width: 800px;
            margin: 50px auto;
            /* border: 1px solid red; */
            display: flex;
            justify-content: space-around;
            align-items: center;
        }
        .addMemberLeft {
            width: 50%;
            height: 600px;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
        }
        .addMemberRight {
            width: 50%;
            height: 600px;
            /* border: 1px solid purple; */
            display: flex;
            justify-content: center;
        }
        .addMemberVideo {
            height: 600px; 
        }
        .addMemberBox {
            /* background-color: white; */
            /* border: 1px solid blue; */
            width: 90%;
            height: 100%;
            /* border: 1px solid red; */
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }
        .addMemberBox2 {
            height: 80%;
            background-color: white;
            border: 1px solid #D8D8D8;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
        .addMemberBox3 {
            width: 70%;
        }
        .addMemberLogoBox {
        	width: 250px;
        	height: 80px;
        	margin-bottom: 10px;
        	display: flex;
        	justify-content: center;
        }
        .addMemberLogo {
            width: 90%;
            height: 100%;
        }
        .addMemberIdBox {
            width: 228px;
            height: 30px;
            margin-bottom: 10px;
            background-color: #F6F6F6;
            border: 1px solid #D8D8D8;
            border-radius: 5px;
            padding: 0 10px;
        }
        .addMemberInput:focus {
        	border: 1px dashed black;
            outline: none;
        }
        .addMemberPwBox {
            width: 228px;
            height: 30px;
            margin-bottom: 20px;
            background-color: #F6F6F6;
            border: 1px solid #D8D8D8;
            border-radius: 5px;
            padding: 0 10px;
        }
        .addMemberSelect {
            outline: none;
        }
        .addMemberSelect:focus {
            border: 1px dashed black;
        }
        .addMemberPhoneBox {
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
        .addMemberSubmitButton {
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
        .addMemberSubmitButton:hover {
            background-color: white;
            color: black;
        }
        .addMemberJoinBox {
            background-color: white;
            border: 1px solid #D8D8D8;
            height: 15%;
            display: flex;
            justify-content: center;
            align-items: center;

        }
        .addMemberJoinButton {
            font-weight: bold;
            color: black;
        }
    </style>
</head>
<body>
<jsp:include page="menu.jsp"/>
	<div class="addMemberTitle">
		JOIN
	</div>
    <div class="addMemberContainer">
        <div class="addMemberLeft">
            <video src="/resources/img/exam.mp4" autoplay muted loop class="addMemberVideo"></video>
        </div>
        <div class="addMemberRight">
            <div class="addMemberBox">
                <div class="addMemberBox2">
                    <div class="addMemberBox3">
                        <div class="addMemberLogoBox">
                            <img src="/resources/img/logo.png" alt="logo" class="addMemberLogo">
                        </div>
                        <form name="newMember" action="/login/processAddMember" method="post" onsubmit="return checkForm()">
                            <input type="text" name="memberId" placeholder="아이디" minlength="1" maxlength="10" class="addMemberIdBox addMemberInput" required><br>
                            <input type="password" name="memberPw" placeholder="비밀번호" minlength="1" maxlength="15" class="addMemberIdBox addMemberInput" required><br>
                            <input type="password" name="memberPwCheck" placeholder="비밀번호확인" minlength="1" maxlength="15" class="addMemberIdBox addMemberInput" required><br>
                            <input type="text" name="memberNick" placeholder="닉네임" minlength="1" maxlength="8"class="addMemberIdBox addMemberInput" required><br>
                            <select name="memberPhone1" class="addMemberPhoneBox addMemberSelect">
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
                             - <input type="text" name="memberPhone2" maxlength="4" size="3" placeholder="4자리" class="addMemberPhoneBox pB addMemberInput" required>
                             - <input type="text" name="memberPhone3" maxlength="4" size="3" placeholder="4자리" class="addMemberPhoneBox pB addMemberInput" required><br>
                            <input type="text" id="address_kakao" name="memberAddress" placeholder="주소" maxlength="30" class="addMemberIdBox addMemberInput" required>
                            <input type="text" name="memberAddress2" placeholder="상세주소" maxlength="30" class="addMemberPwBox addMemberInput" required>
                            <input type="submit" value="가입" class="addMemberSubmitButton addMemberInput" onclick="addMember()">
                        </form>
                    </div> 
                </div>
                <div class="addMemberJoinBox">
                    <p>계정이 있으신가요? <a href="/login" class="addMemberJoinButton">로그인</a></p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>