<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지 · ironPillar</title>
    <script>
        function checkForm()
        {
            if(document.newMember.pw.value != document.newMember.pwCheck.value)
            {
                alert("비밀번호를 동일하게 입력해주세요.");
                return false;
            }
        }
        function selectAll(selectAll)  
        {
            const checkboxes = document.querySelectorAll('input[type="checkbox"]');
            
            checkboxes.forEach((checkbox) => 
            {
                checkbox.checked = selectAll.checked
            })
        }
    </script>
    <style>
        *{
            margin: 0;
            padding: 0;
            text-decoration: none;
        }
        body {
            background-color: #F6F6F6;
        }
        .sessionContainer{
            /* border: 1px solid red; */
            width: 70%;
            margin: 0 auto;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            padding-top: 100px;
        }
        .sessionHeader {
            height: 150px;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            font-weight: bold;
            font-size: 35px;
        }
        .sessionBox {
            width: 100%;
        }
        .sessionBox1 {
            /* border: 1px solid blue; */
            width: 100%;
            height: 60px;
            display: flex;
            justify-content: space-around;
            align-items: center;
        }
        .buttonSize {
        	width: 120px;
        	height: 25px;
        	display: flex;
        	justify-content: center;
        	align-items: center;
        }
        .input
        {
            display: none;
        }
        .sessions
        {
            display: none;
        }
        .input1:checked ~ .sessionBox1 .inputItem1
        {
            background-color: black;
            color: white;
            font-size: 20px;
        }
        .input2:checked ~ .sessionBox1 .inputItem2
        {
            background-color: black;
            color: white;
            font-size: 20px;
        }
        .input3:checked ~ .sessionBox1 .inputItem3
        {
            background-color: black;
            color: white;
            font-size: 20px;
        }
        .input4:checked ~ .sessionBox1 .inputItem4
        {
            background-color: black;
            color: white;
            font-size: 20px;
        }
        .input5:checked ~ .sessionBox1 .inputItem5
        {
            background-color: black;
            color: white;
            font-size: 20px;
        }
        .input1:checked ~ .orderSession
        {
            display: block;
        }
        .input2:checked ~ .reviewSession
        {
            display: block;
        }
        .input3:checked ~ .wishSession
        {
            display: block;
        }
        .input4:checked ~ .cartSession
        {
            display: block;
        }
        .input5:checked ~ .privacySession
        {
            display: block;
        }
        .sessionBox2 {
            /* border: 1px solid green; */
            width: 100%;
        }
        .sessionItem {
            /* border: 1px solid black; */
            font-weight: bold;
            cursor: pointer;
            /* 호버 효과줄것 */
            display: flex;
            justify-content: center;
            align-items: center;
            width: 20%;
            height: 100%;
            transition-duration: 300ms;
        }
        .sessionItem:hover {
            background-color: black;
            color: white;
            font-size: 20px;
        }
        /* 주문목록 */
        .orderItem {
            background-color: white;
            border: 1px solid #F6F6F6;
            border-radius: 10px;
            box-shadow: 2px 2px 2px 2px #9E9E9E;
            display: flex;
            margin-top: 15px;
            padding: 22px;
            height: 200px;
        }
        .orderItemImgbox {
            /* border: 1px solid red; */
            width: 25%;
            height: 200px;
            overflow: hidden;
            cursor: pointer;
        }
        .ImgItem {
            height: 100%;
        }
        .orderItemBoxRight {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 75%;
            padding-left: 22px;
        }
        .orderItem3 {
            height: 75%;
            /* border: 3px solid green; */
            display: flex;
            flex-direction: column;
            justify-content: space-around;
        }
        .orderInItem1 {
            height: 100%;
            /* border: 1px solid red; */
        }
        .orderItemFont1 {
            cursor: pointer;
        }
        .fontItem1 {
            font-weight: bold;
            font-size: 25px;
        }
        .fontItem2 {
            font-weight: bold;
            font-size: 20px;
        }
        .orderInItem2 {
            background-color: white;
            border-left: 1px dashed #9E9E9E;
            padding-left: 25px;
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: space-around;
        }
        .orderItemFont2 {
            border: 1px solid #9E9E9E;
            border-radius: 5px;
            padding: 15px 10px;
            cursor: pointer;
            transition-duration: 300ms;
        }
        .orderItemFont2:hover {
            border: 1px solid orange;
            color: orange;
        }
        .sessionBox2 {
            /* border: 1px solid green; */
            width: 100%;
        }
        .ReviewItem {
            background-color: white;
            border: 1px solid #F6F6F6;
            border-radius: 10px;
            box-shadow: 2px 2px 2px 2px #9E9E9E;
            display: flex;
            margin-top: 15px;
            padding: 22px;
            height: 200px;
        }
        .ReviewImgBox {
            display: flex;
            align-items: center;
        }
        .ReviewItemImgbox {
            /* border: 1px solid red; */
            width: 25%;
            height: 200px;
            overflow: hidden;
        }
        .ReviewImgItem{
            width: 17px;
            height: 17px;
            margin-right: 5px;
        }
        .ReviewFontItem1 {
            font-weight: bold;
        }
        .ReviewItemFont1 {
            cursor: pointer;
        }
        .ReviewFontItem2 {
            font-weight: bold;
        }
        /* 찜목록 */
        .wishHeader {
            display: flex;
            justify-content: start;
            align-items: center;
            height: 50px;
        }
        .wishBox {
            display: flex;
            justify-content: space-between;
            align-items: center;
            
        }
        .checkBoxItem {
            height: 200px;
            display: flex;
            justify-content: start;
        }
        .checkBoxItem1 {
            cursor: pointer;
            width: 20px;
            height: 20px;
            margin-right: 22px;
        }
        .buttonItem {
            /* border: 1px solid red; */
            cursor: pointer;
            background-color: white;
            color: black;
            font-weight: bold;
            font-size: 15px;
            border-radius: 10px;
            width: 80px;
            height: 22px;
            margin-left: 22px;
        }
        .buttonItem:hover {
            background-color: black;
            color: white;
        }
        .checkBoxItem2 {
            position: relative;
            cursor: pointer;
            width: 20px;
            height: 20px;
        }
        .wishItem {
            background-color: white;
            border: 1px solid #F6F6F6;
            border-radius: 10px;
            box-shadow: 2px 2px 2px 2px #9E9E9E;
            display: flex;
            margin-top: 15px;
            padding: 22px;
            height: 200px;
            width: 94%;
        }
        .wishItemFont2 {
            border: 1px solid #9E9E9E;
            border-radius: 5px;
            padding: 15px 10px;
            cursor: pointer;
            transition-duration: 300ms;
            text-align: center;
        }
        .wishItemFont2:hover {
            border: 1px solid orange;
            color: orange;
        }
        /* 내정보수정 */
        .Pcontainer {
            width: 800px;
            height: 600px;
            margin: 0 auto;
            /* border: 1px solid red; */
            display: flex;
            justify-content: space-around;
            align-items: center;
        }
        .loginLeft {
            width: 50%;
            height: 450px;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
        }
        .loginRight {
            width: 50%;
            height: 450px;
            /* border: 1px solid purple; */
            display: flex;
            justify-content: center;
        }
        .loginVideo {
            height: 450px; 
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
            height: 100%;
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
        }
</style>
</head>
<body>
<jsp:include page="menu.jsp"/>
    <div class="sessionContainer">
        <div class="sessionHeader">
            MY PAGE
        </div>
        <div class="sessionBox">
            <input type="radio" name="group" id="1" class="input input1" checked>
            <input type="radio" name="group" id="2" class="input input2">
            <input type="radio" name="group" id="3" class="input input3">
            <input type="radio" name="group" id="4" class="input input4">
            <input type="radio" name="group" id="5" class="input input5">
            <div class="sessionBox1">
                <label for="1" class="sessionItem inputItem1" onclick="location.href='#'">ORDER LIST</label>
                <label for="2" class="sessionItem inputItem2" onclick="location.href='#'">REVIEW</label>
                <label for="3" class="sessionItem inputItem3" onclick="location.href='#'">WISH LIST</label>
                <label for="4" class="sessionItem inputItem4" onclick="location.href='#'">CART</label>
                <label for="5" class="sessionItem inputItem5" onclick="location.href='#'">PRIVACY</label>
            </div>
            <div class="sessions orderSession">
                <div class="sessionBox2">
                    <div class="orderItem">
                        <div class="orderItemImgbox">
                            <img class="ImgItem" src="resources/img/텐트.jpg" alt="오류" onclick="location.href='#'">
                        </div>
                        <div class="orderItemBoxRight">
                            <div class="orderInItem1">
                                <div>주문 날짜 : 2023-03-02</div>
                                <div class="orderItem3">
                                    <div class="orderItemFont1 fontItem1" onclick="location.href='#'">4인 가족 대형 텐트</div>
                                    <div class="orderItemFont1 fontItem2" onclick="location.href='#'">1000000 원</div>
                                </div>
                            </div>
                            <div class="orderInItem2">
                                <div class="orderItemFont2 buttonSize" onclick="location.href='#'">리뷰 작성하기</div>
                                <div class="orderItemFont2 buttonSize" onclick="location.href='#'">교환/반품/환불</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sessionBox2">
                    <div class="orderItem">
                        <div class="orderItemImgbox">
                            <img class="ImgItem" src="resources/img/텐트.jpg" alt="오류" onclick="location.href='#'">
                        </div>
                        <div class="orderItemBoxRight">
                            <div class="orderInItem1" onclick="location.href='#'">
                                <div class="">주문 날짜 : 2023-03-02</div>
                                <div class="orderItem3">
                                    <div class="orderItemFont1 fontItem1">4인 가족 대형 텐트</div>
                                    <div class="orderItemFont1 fontItem2">1000000 원</div>
                                </div>
                            </div>
                            <div class="orderInItem2">
                                <div class="orderItemFont2 buttonSize" onclick="location.href='#'">리뷰 작성하기</div>
                                <div class="orderItemFont2 buttonSize" onclick="location.href='#'">교환/반품/환불</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sessionBox2">
                    <div class="orderItem">
                        <div class="orderItemImgbox">
                            <img class="ImgItem" src="resources/img/텐트.jpg" alt="오류" onclick="location.href='#'">
                        </div>
                        <div class="orderItemBoxRight">
                            <div class="orderInItem1" onclick="location.href='#'">
                                <div class="">주문 날짜 : 2023-03-02</div>
                                <div class="orderItem3">
                                    <div class="orderItemFont1 fontItem1">4인 가족 대형 텐트</div>
                                    <div class="orderItemFont1 fontItem2">1000000 원</div>
                                </div>
                            </div>
                            <div class="orderInItem2">
                                <div class="orderItemFont2 buttonSize" onclick="location.href='#'">리뷰 작성하기</div>
                                <div class="orderItemFont2 buttonSize" onclick="location.href='#'">교환/반품/환불</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="sessions reviewSession">
                <div class="sessionBox2">
                    <div class="orderItem">
                        <div class="ReviewItemImgbox">
                            <img class="ImgItem" src="resources/img/텐트.jpg" alt="오류" onclick="location.href='#'">
                        </div>
                        <div class="orderItemBoxRight">
                            <div class="orderInItem1">
                                <div>2023-03-02</div>
                                <div class="ReviewImgBox">
                                    <img src="resources/img/star.png" class="ReviewImgItem"><span>4.5</span>
                                </div>
                                <div class="orderItem3">
                                    <div class="ReviewItemFont1 ReviewFontItem1" onclick="location.href='#'">4인 가족 대형 텐트</div>
                                    <div class="ReviewFontItem2">4인 가족용으로 사용하기에 너무 안성맞춤이여서 좋아요 공간도 넓고, <br>튼튼해서 안심하고 사용합니다 ^^</div>
                                </div>
                            </div>
                            <div class="orderInItem2">
                                <div class="orderItemFont2 buttonSize" onclick="location.href='#'">수정하기</div>
                                <div class="orderItemFont2 buttonSize" onclick="location.href='#'">삭제하기</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="sessions wishSession">
                <div class="wishHeader">
                    <input type="checkbox" name="Allcheck" class="checkBoxItem1" onclick="selectAll(this)"><b>전체선택</b>
                    <input type="button" value="삭제" class="buttonItem">
                </div>
                <div class="sessionBox2 wishBox">
                    <div class="checkBoxItem">
                        <input type="checkbox" name="P1" class="checkBoxItem2">                    
                    </div>
                    <div class="wishItem">
                        <div class="orderItemImgbox">
                            <img class="ImgItem" src="resources/img/버너.png" alt="오류" onclick="location.href='#'">
                        </div>
                        <div class="orderItemBoxRight">
                            <div class="orderInItem1">
                                <div class="orderItem3">
                                    <div class="orderItemFont1 fontItem1" >휴대용 요리킹 버너!</div>
                                    <div class="fontItem2">19,900 원</div>
                                </div>
                            </div>
                            <div class="orderInItem2">
                                <div class="wishItemFont2 buttonSize" onclick="location.href='#'">장바구니에 담기</div>
                                <div class="wishItemFont2 buttonSize" onclick="location.href='#'">삭제하기</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sessionBox2 wishBox">
                    <div class="checkBoxItem">
                        <input type="checkbox" name="P2" class="checkBoxItem2">                    
                    </div>                  
                    <div class="wishItem">
                        <div class="orderItemImgbox">
                            <img class="ImgItem" src="resources/img/랜턴.png" alt="오류" onclick="location.href='#'">
                        </div>
                        <div class="orderItemBoxRight">
                            <div class="orderInItem1">
                                <div class="orderItem3">
                                    <div class="orderItemFont1 fontItem1" >감성 캠핑 랜턴</div>
                                    <div class="fontItem2">29,900 원</div>
                                </div>
                            </div>
                            <div class="orderInItem2">
                                <div class="wishItemFont2 buttonSize" onclick="location.href='#'">장바구니에 담기</div>
                                <div class="wishItemFont2 buttonSize" onclick="location.href='#'">삭제하기</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sessionBox2 wishBox">
                    <div class="checkBoxItem">
                        <input type="checkbox" name="P3" class="checkBoxItem2">                    
                    </div>                  
                    <div class="wishItem">
                        <div class="orderItemImgbox">
                            <img class="ImgItem" src="resources/img/의자.png" alt="오류" onclick="location.href='#'">
                        </div>
                        <div class="orderItemBoxRight">
                            <div class="orderInItem1">
                                <div class="orderItem3">
                                    <div class="orderItemFont1 fontItem1" >휴대용 캠핑 의자</div>
                                    <div class="fontItem2">39,900 원</div>
                                </div>
                            </div>
                            <div class="orderInItem2">
                                <div class="wishItemFont2 buttonSize" onclick="location.href='#'">장바구니에 담기</div>
                                <div class="wishItemFont2 buttonSize" onclick="location.href='#'">삭제하기</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="sessions cartSession">
                <div class="wishHeader">
                    <input type="checkbox" name="Allcheck" class="checkBoxItem1" onclick="selectAll(this)"><b>전체선택</b>
                    <input type="button" value="삭제" class="buttonItem">
                </div>
                <div class="sessionBox2 wishBox">
                    <div class="checkBoxItem">
                        <input type="checkbox" name="P1" class="checkBoxItem2">                    
                    </div>
                    <div class="wishItem">
                        <div class="orderItemImgbox">
                            <img class="ImgItem" src="resources/img/버너.png" alt="오류" onclick="location.href='#'">
                        </div>
                        <div class="orderItemBoxRight">
                            <div class="orderInItem1">
                                <div class="orderItem3">
                                    <div class="orderItemFont1 fontItem1" >휴대용 요리킹 버너!</div>
                                    <div class="fontItem2">19,900 원</div>
                                </div>
                            </div>
                            <div class="orderInItem2">
                                <div class="wishItemFont2 buttonSize" onclick="location.href='#'">주문하기</div>
                                <div class="wishItemFont2 buttonSize" onclick="location.href='#'">삭제하기</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sessionBox2 wishBox">
                    <div class="checkBoxItem">
                        <input type="checkbox" name="P2" class="checkBoxItem2">                    
                    </div>                  
                    <div class="wishItem">
                        <div class="orderItemImgbox">
                            <img class="ImgItem" src="resources/img/랜턴.png" alt="오류" onclick="location.href='#'">
                        </div>
                        <div class="orderItemBoxRight">
                            <div class="orderInItem1">
                                <div class="orderItem3">
                                    <div class="orderItemFont1 fontItem1" >감성 캠핑 랜턴</div>
                                    <div class="fontItem2">29,900 원</div>
                                </div>
                            </div>
                            <div class="orderInItem2">
                                <div class="wishItemFont2 buttonSize" onclick="location.href='#'">주문하기</div>
                                <div class="wishItemFont2 buttonSize" onclick="location.href='#'">삭제하기</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sessionBox2 wishBox">
                    <div class="checkBoxItem">
                        <input type="checkbox" name="P3" class="checkBoxItem2">                    
                    </div>                  
                    <div class="wishItem">
                        <div class="orderItemImgbox">
                            <img class="ImgItem" src="resources/img/의자.png" alt="오류" onclick="location.href='#'">
                        </div>
                        <div class="orderItemBoxRight">
                            <div class="orderInItem1">
                                <div class="orderItem3">
                                    <div class="orderItemFont1 fontItem1" >휴대용 캠핑 의자</div>
                                    <div class="fontItem2">39,900 원</div>
                                </div>
                            </div>
                            <div class="orderInItem2">
                                <div class="wishItemFont2 buttonSize" onclick="location.href='#'">주문하기</div>
                                <div class="wishItemFont2 buttonSize" onclick="location.href='#'">삭제하기</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="sessions privacySession">
                <div class="Pcontainer">
			        <div class="loginLeft">
			            <video src="resources/img/exam.mp4" autoplay muted loop class="loginVideo"></video>
			        </div>
			        <div class="loginRight">
			            <div class="loginBox">
			                <div class="loginBox2">
			                    <div class="loginBox3">
			                        <div>
			                            <img src="resources/img/logo.png" alt="logo" class="logo">
			                        </div>
			                        <form name="newMember" action="/login" method="post" onsubmit="return checkForm()">
			                            <input type="password" name="pw" placeholder="새로운 비밀번호" minlength="1" maxlength="15" class="idBox" required><br>
			                            <input type="password" name="pwCheck" placeholder="새로운 비밀번호확인" minlength="1" maxlength="15" class="idBox" required><br>
			                            <input type="text" name="nick" placeholder="(회원 기존 닉네임)" minlength="1" maxlength="8"class="idBox" required><br>
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
			                             - <input type="text" maxlength="4" size="3" placeholder="(기존번호)" class="phoneBox pB" required>
			                             - <input type="text" maxlength="4" size="3" placeholder="(기존번호)" class="phoneBox pB" required><br>
			                            <input type="text" name="address" placeholder="(기존주소)" maxlength="30" class="pwBox" required>
			                            <input type="submit" value="저장" class="submitButton">
			                        </form>
			                    </div> 
			                </div>
			            </div>
			        </div>
			    </div>
            </div>
        </div>
    </div>
</body>
</html>