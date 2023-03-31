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
            if(document.newMember.memberPw.value != document.newMember.memberPwCheck.value)
            {
                alert("비밀번호를 동일하게 입력해주세요.");
                return false;
            }
            else
            {
            	alert("회원가입이 완료되었습니다.");
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
    <title>가입하기 · ironPillar</title>
    <link href="/resources/css/ironPillar.css" rel="stylesheet">
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
                        <form class="addMemberForm" name="newMember" action="/login/processAddMember" method="post" onsubmit="return checkForm()">
                            <input type="text" name="memberId" id="memberId" placeholder="아이디" minlength="1" maxlength="10" class="addMemberIdBox addMemberInput" required><br>
                            <input type="password" name="memberPw" id="memberPw" placeholder="비밀번호" minlength="1" maxlength="15" class="addMemberIdBox addMemberInput" required><br>
                            <input type="password" name="memberPwCheck" id="memberPwCheck" placeholder="비밀번호확인" minlength="1" maxlength="15" class="addMemberIdBox addMemberInput" required><br>
                            <input type="text" name="memberNick" id="memberNick" placeholder="닉네임" minlength="1" maxlength="8"class="addMemberIdBox addMemberInput" required><br>
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
                             - <input type="text" name="memberPhone2" id="memberPhone2" maxlength="4" size="3" placeholder="4자리" class="addMemberPhoneBox pB addMemberInput" required>
                             - <input type="text" name="memberPhone3" id="memberPhone3" maxlength="4" size="3" placeholder="4자리" class="addMemberPhoneBox pB addMemberInput" required><br>
                            <input type="text" id="address_kakao" name="memberAddress" id="memberAddress" placeholder="주소 (클릭해서 주소찾기)" maxlength="30" class="addMemberIdBox addMemberInput" onkeydown="return false;" required>
                            <input type="text" name="memberAddress2" id="memberAddress2" placeholder="상세주소" maxlength="30" class="addMemberPwBox addMemberInput" required>
                            <input type="submit" value="가입" class="addMemberSubmitButton addMemberInput" onclick="">
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