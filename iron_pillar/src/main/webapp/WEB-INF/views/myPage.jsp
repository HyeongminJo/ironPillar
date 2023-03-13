<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String memberNick = (String) session.getAttribute("memberNick");
	String memberPhone = (String) session.getAttribute("memberPhone");
	String memberAddress = (String) session.getAttribute("memberAddress");
	String phone2 = memberPhone.substring(3, 7);
	String phone3 = memberPhone.substring(7, 11);
%>
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
        .myPageSessionContainer{
            /* border: 1px solid red; */
            width: 70%;
            margin: 0 auto;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            padding-top: 100px;
        }
        .myPageSessionHeader {
            height: 150px;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            font-weight: bold;
            font-size: 35px;
        }
        .myPageSessionBox {
            width: 100%;
        }
        .myPageSessionBox1 {
            /* border: 1px solid blue; */
            width: 100%;
            height: 60px;
            display: flex;
            justify-content: space-around;
            align-items: center;
        }
        .myPageButtonSize {
        	width: 120px;
        	height: 25px;
        	display: flex;
        	justify-content: center;
        	align-items: center;
        }
        .myPageInput
        {
            display: none;
        }
        .myPageSessions
        {
            display: none;
        }
        .myPageInput1:checked ~ .myPageSessionBox1 .myPageInputItem1
        {
            background-color: black;
            color: white;
            font-size: 20px;
        }
        .myPageInput2:checked ~ .myPageSessionBox1 .myPageInputItem2
        {
            background-color: black;
            color: white;
            font-size: 20px;
        }
        .myPageInput3:checked ~ .myPageSessionBox1 .myPageInputItem3
        {
            background-color: black;
            color: white;
            font-size: 20px;
        }
        .myPageInput4:checked ~ .myPageSessionBox1 .myPageInputItem4
        {
            background-color: black;
            color: white;
            font-size: 20px;
        }
        .myPageInput5:checked ~ .myPageSessionBox1 .myPageInputItem5
        {
            background-color: black;
            color: white;
            font-size: 20px;
        }
        .myPageInput1:checked ~ .myPageOrderSession
        {
            display: block;
        }
        .myPageInput2:checked ~ .myPageReviewSession
        {
            display: block;
        }
        .myPageInput3:checked ~ .myPageWishSession
        {
            display: block;
        }
        .myPageInput4:checked ~ .myPageCartSession
        {
            display: block;
        }
        .myPageInput5:checked ~ .myPagePrivacySession
        {
            display: block;
        }
        .myPageSessionBox2 {
            /* border: 1px solid green; */
            width: 100%;
        }
        .myPageSessionItem {
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
        .myPageSessionItem:hover {
            background-color: black;
            color: white;
            font-size: 20px;
        }
        /* 주문목록 */
        .myPageOrderItem {
            background-color: white;
            border: 1px solid #F6F6F6;
            border-radius: 10px;
            box-shadow: 2px 2px 2px 2px #9E9E9E;
            display: flex;
            margin-top: 15px;
            padding: 22px;
            height: 200px;
        }
        .myPageOrderItemImgbox {
            /* border: 1px solid red; */
            width: 25%;
            height: 200px;
            overflow: hidden;
            cursor: pointer;
        }
        .myPageImgItem {
            height: 100%;
        }
        .myPageOrderItemBoxRight {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 75%;
            padding-left: 22px;
        }
        .myPageOrderItem3 {
            height: 75%;
            /* border: 3px solid green; */
            display: flex;
            flex-direction: column;
            justify-content: space-around;
        }
        .myPageOrderInItem1 {
            height: 100%;
            /* border: 1px solid red; */
        }
        .myPageOrderItemFont1 {
            cursor: pointer;
        }
        .myPageFontItem1 {
            font-weight: bold;
            font-size: 25px;
        }
        .myPageFontItem2 {
            font-weight: bold;
            font-size: 20px;
        }
        .myPageOrderInItem2 {
            background-color: white;
            border-left: 1px dashed #9E9E9E;
            padding-left: 25px;
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: space-around;
        }
        .myPageOrderItemFont2 {
            border: 1px solid #9E9E9E;
            border-radius: 5px;
            padding: 15px 10px;
            cursor: pointer;
            transition-duration: 300ms;
        }
        .myPageOrderItemFont2:hover {
            border: 1px solid orange;
            color: orange;
        }
        .myPageSessionBox2 {
            /* border: 1px solid green; */
            width: 100%;
        }
        .myPageReviewItem {
            background-color: white;
            border: 1px solid #F6F6F6;
            border-radius: 10px;
            box-shadow: 2px 2px 2px 2px #9E9E9E;
            display: flex;
            margin-top: 15px;
            padding: 22px;
            height: 200px;
        }
        .myPageReviewImgBox {
            display: flex;
            align-items: center;
        }
        .myPageReviewItemImgbox {
            /* border: 1px solid red; */
            width: 25%;
            height: 200px;
            overflow: hidden;
        }
        .myPageReviewImgItem{
            width: 17px;
            height: 17px;
            margin-right: 5px;
        }
        .myPageReviewFontItem1 {
            font-weight: bold;
        }
        .myPageReviewItemFont1 {
            cursor: pointer;
        }
        .myPageReviewFontItem2 {
            font-weight: bold;
        }
        /* 찜목록 */
        .myPageWishHeader {
            display: flex;
            justify-content: start;
            align-items: center;
            height: 50px;
        }
        .myPageWishBox {
            display: flex;
            justify-content: space-between;
            align-items: center;
            
        }
        .myPageCheckBoxItem {
            height: 200px;
            display: flex;
            justify-content: start;
        }
        .myPageCheckBoxItem1 {
            cursor: pointer;
            width: 20px;
            height: 20px;
            margin-right: 22px;
        }
        .myPageButtonItem {
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
        .myPageButtonItem:hover {
            background-color: black;
            color: white;
        }
        .myPageCheckBoxItem2 {
            position: relative;
            cursor: pointer;
            width: 20px;
            height: 20px;
        }
        .myPageWishItem {
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
        .myPageWishItemFont2 {
            border: 1px solid #9E9E9E;
            border-radius: 5px;
            padding: 15px 10px;
            cursor: pointer;
            transition-duration: 300ms;
            text-align: center;
        }
        .myPageWishItemFont2:hover {
            border: 1px solid orange;
            color: orange;
        }
        /* 내정보수정 */
        .myPagePcontainer {
            width: 800px;
            height: 600px;
            margin: 0 auto;
            /* border: 1px solid red; */
            display: flex;
            justify-content: space-around;
            align-items: center;
        }
        .myPageLoginLeft {
            width: 50%;
            height: 450px;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
        }
        .myPageLoginRight {
            width: 50%;
            height: 450px;
            /* border: 1px solid purple; */
            display: flex;
            justify-content: center;
        }
        .myPageLoginVideo {
            height: 450px; 
        }
        .myPageLoginBox {
            /* background-color: white; */
            /* border: 1px solid blue; */
            width: 90%;
            height: 100%;
            /* border: 1px solid red; */
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }
        .myPageLoginBox2 {
            height: 100%;
            background-color: white;
            border: 1px solid #D8D8D8;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
        .myPageLoginBox3 {
            width: 70%;
        }
        .myPageLogo {
            width: 250px;
            height: 100px;
            margin-bottom: 10px;
        }
        .myPageIdBox {
            width: 228px;
            height: 30px;
            margin-bottom: 10px;
            background-color: #F6F6F6;
            border: 1px solid #D8D8D8;
            border-radius: 5px;
            padding: 0 10px;
        }
        .myPageInput:focus {
            border: 1px dashed black;
            outline: none;
        }
        .myPagePwBox {
            width: 228px;
            height: 30px;
            margin-bottom: 20px;
            background-color: #F6F6F6;
            border: 1px solid #D8D8D8;
            border-radius: 5px;
            padding: 0 10px;
        }
        .myPageSelect {
            outline: none;
        }
        .myPageSelect:focus {
            border: 1px dashed black;
        }
        .myPagePhoneBox {
            height: 30px;
            margin-bottom: 10px;
            background-color: #F6F6F6;
            border: 1px solid #D8D8D8;
            border-radius: 5px;
            padding: 0 10px;
        }
        .myPagePB {
            width: 51.5px;
        }
        .myPageSubmitButton {
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
        .myPageSubmitButton:hover {
            background-color: white;
            color: black;
        }
        .myPageJoinBox {
            background-color: white;
            border: 1px solid #D8D8D8;
            height: 15%;
            display: flex;
            justify-content: center;
            align-items: center;

        }
        .myPageJoinButton {
            font-weight: bold;
        }
</style>
</head>
<body>
<jsp:include page="menu.jsp"/>
    <div class="myPageSessionContainer">
        <div class="myPageSessionHeader">
            MY PAGE
        </div>
        <div class="myPageSessionBox">
            <input type="radio" name="group" id="1" class="myPageInput myPageInput1" checked>
            <input type="radio" name="group" id="2" class="myPageInput myPageInput2">
            <input type="radio" name="group" id="3" class="myPageInput myPageInput3">
            <input type="radio" name="group" id="4" class="myPageInput myPageInput4">
            <input type="radio" name="group" id="5" class="myPageInput myPageInput5">
            <div class="myPageSessionBox1">
                <label for="1" class="myPageSessionItem myPageInputItem1" onclick="location.href='#'">ORDER LIST</label>
                <label for="2" class="myPageSessionItem myPageInputItem2" onclick="location.href='#'">REVIEW</label>
                <label for="3" class="myPageSessionItem myPageInputItem3" onclick="location.href='#'">WISH LIST</label>
                <label for="4" class="myPageSessionItem myPageInputItem4" onclick="location.href='#'">CART</label>
                <label for="5" class="myPageSessionItem myPageInputItem5" onclick="location.href='#'">PRIVACY</label>
            </div>
            <div class="myPageSessions myPageOrderSession">
                <div class="myPageSessionBox2">
                    <div class="myPageOrderItem">
                        <div class="myPageOrderItemImgbox">
                            <img class="myPageImgItem" src="resources/img/텐트.jpg" alt="오류" onclick="location.href='#'">
                        </div>
                        <div class="myPageOrderItemBoxRight">
                            <div class="myPageOrderInItem1">
                                <div>주문 날짜 : 2023-03-02</div>
                                <div class="myPageOrderItem3">
                                    <div class="myPageOrderItemFont1 myPageFontItem1" onclick="location.href='#'">4인 가족 대형 텐트</div>
                                    <div class="myPageOrderItemFont1 myPageFontItem2" onclick="location.href='#'">1000000 원</div>
                                </div>
                            </div>
                            <div class="myPageOrderInItem2">
                                <div class="myPageOrderItemFont2 myPageButtonSize" onclick="location.href='#'">리뷰 작성하기</div>
                                <div class="myPageOrderItemFont2 myPageButtonSize" onclick="location.href='#'">교환/반품/환불</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="myPageSessionBox2">
                    <div class="myPageOrderItem">
                        <div class="myPageOrderItemImgbox">
                            <img class="myPageImgItem" src="resources/img/텐트.jpg" alt="오류" onclick="location.href='#'">
                        </div>
                        <div class="myPageOrderItemBoxRight">
                            <div class="myPageOrderInItem1" onclick="location.href='#'">
                                <div class="">주문 날짜 : 2023-03-02</div>
                                <div class="myPageOrderItem3">
                                    <div class="myPageOrderItemFont1 myPageFontItem1">4인 가족 대형 텐트</div>
                                    <div class="myPageOrderItemFont1 myPageFontItem2">1000000 원</div>
                                </div>
                            </div>
                            <div class="myPageOrderInItem2">
                                <div class="myPageOrderItemFont2 myPageButtonSize" onclick="location.href='#'">리뷰 작성하기</div>
                                <div class="myPageOrderItemFont2 myPageButtonSize" onclick="location.href='#'">교환/반품/환불</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="myPageSessionBox2">
                    <div class="myPageOrderItem">
                        <div class="myPageOrderItemImgbox">
                            <img class="myPageImgItem" src="resources/img/텐트.jpg" alt="오류" onclick="location.href='#'">
                        </div>
                        <div class="myPageOrderItemBoxRight">
                            <div class="myPageOrderInItem1" onclick="location.href='#'">
                                <div class="">주문 날짜 : 2023-03-02</div>
                                <div class="myPageOrderItem3">
                                    <div class="myPageOrderItemFont1 myPageFontItem1">4인 가족 대형 텐트</div>
                                    <div class="myPageOrderItemFont1 myPageFontItem2">1000000 원</div>
                                </div>
                            </div>
                            <div class="myPageOrderInItem2">
                                <div class="myPageOrderItemFont2 myPageButtonSize" onclick="location.href='#'">리뷰 작성하기</div>
                                <div class="myPageOrderItemFont2 myPageButtonSize" onclick="location.href='#'">교환/반품/환불</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="myPageSessions myPageReviewSession">
                <div class="myPageSessionBox2">
                    <div class="myPageOrderItem">
                        <div class="myPageReviewItemImgbox">
                            <img class="myPageImgItem" src="resources/img/텐트.jpg" alt="오류" onclick="location.href='#'">
                        </div>
                        <div class="myPageOrderItemBoxRight">
                            <div class="myPageOrderInItem1">
                                <div>2023-03-02</div>
                                <div class="myPageReviewImgBox">
                                    <img src="resources/img/star.png" class="myPageReviewImgItem"><span>4.5</span>
                                </div>
                                <div class="myPageOrderItem3">
                                    <div class="myPageReviewItemFont1 myPageReviewFontItem1" onclick="location.href='#'">4인 가족 대형 텐트</div>
                                    <div class="myPageReviewFontItem2">4인 가족용으로 사용하기에 너무 안성맞춤이여서 좋아요 공간도 넓고, <br>튼튼해서 안심하고 사용합니다 ^^</div>
                                </div>
                            </div>
                            <div class="myPageOrderInItem2">
                                <div class="myPageOrderItemFont2 myPageButtonSize" onclick="location.href='#'">수정하기</div>
                                <div class="myPageOrderItemFont2 myPageButtonSize" onclick="location.href='#'">삭제하기</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="myPageSessions myPageWishSession">
                <div class="myPageWishHeader">
                    <input type="checkbox" name="Allcheck" class="myPageCheckBoxItem1" onclick="selectAll(this)"><b>전체선택</b>
                    <input type="button" value="삭제" class="myPageButtonItem">
                </div>
                <div class="myPageSessionBox2 myPageWishBox">
                    <div class="myPageCheckBoxItem">
                        <input type="checkbox" name="P1" class="myPageCheckBoxItem2">                    
                    </div>
                    <div class="myPageWishItem">
                        <div class="myPageOrderItemImgbox">
                            <img class="myPageImgItem" src="resources/img/버너.png" alt="오류" onclick="location.href='#'">
                        </div>
                        <div class="myPageOrderItemBoxRight">
                            <div class="myPageOrderInItem1">
                                <div class="myPageOrderItem3">
                                    <div class="myPageOrderItemFont1 myPageFontItem1" >휴대용 요리킹 버너!</div>
                                    <div class="myPageFontItem2">19,900 원</div>
                                </div>
                            </div>
                            <div class="myPageOrderInItem2">
                                <div class="myPageWishItemFont2 myPageButtonSize" onclick="location.href='#'">장바구니에 담기</div>
                                <div class="myPageWishItemFont2 myPageButtonSize" onclick="location.href='#'">삭제하기</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="myPageSessionBox2 myPageWishBox">
                    <div class="myPageCheckBoxItem">
                        <input type="checkbox" name="P2" class="myPageCheckBoxItem2">                    
                    </div>                  
                    <div class="myPageWishItem">
                        <div class="myPageOrderItemImgbox">
                            <img class="myPageImgItem" src="resources/img/랜턴.png" alt="오류" onclick="location.href='#'">
                        </div>
                        <div class="myPageOrderItemBoxRight">
                            <div class="myPageOrderInItem1">
                                <div class="myPageOrderItem3">
                                    <div class="myPageOrderItemFont1 myPageFontItem1" >감성 캠핑 랜턴</div>
                                    <div class="myPageFontItem2">29,900 원</div>
                                </div>
                            </div>
                            <div class="myPageOrderInItem2">
                                <div class="myPageWishItemFont2 myPageButtonSize" onclick="location.href='#'">장바구니에 담기</div>
                                <div class="myPageWishItemFont2 myPageButtonSize" onclick="location.href='#'">삭제하기</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="myPageSessionBox2 myPageWishBox">
                    <div class="myPageCheckBoxItem">
                        <input type="checkbox" name="P3" class="myPageCheckBoxItem2">                    
                    </div>                  
                    <div class="myPageWishItem">
                        <div class="myPageOrderItemImgbox">
                            <img class="myPageImgItem" src="resources/img/의자.png" alt="오류" onclick="location.href='#'">
                        </div>
                        <div class="myPageOrderItemBoxRight">
                            <div class="myPageOrderInItem1">
                                <div class="myPageOrderItem3">
                                    <div class="myPageOrderItemFont1 myPageFontItem1" >휴대용 캠핑 의자</div>
                                    <div class="myPageFontItem2">39,900 원</div>
                                </div>
                            </div>
                            <div class="myPageOrderInItem2">
                                <div class="myPageWishItemFont2 myPageButtonSize" onclick="location.href='#'">장바구니에 담기</div>
                                <div class="myPageWishItemFont2 myPageButtonSize" onclick="location.href='#'">삭제하기</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="myPageSessions myPageCartSession">
                <div class="myPageWishHeader">
                    <input type="checkbox" name="Allcheck" class="myPageCheckBoxItem1" onclick="selectAll(this)"><b>전체선택</b>
                    <input type="button" value="삭제" class="myPageButtonItem">
                </div>
                <div class="myPageSessionBox2 myPageWishBox">
                    <div class="myPageCheckBoxItem">
                        <input type="checkbox" name="P1" class="myPageCheckBoxItem2">                    
                    </div>
                    <div class="myPageWishItem">
                        <div class="myPageOrderItemImgbox">
                            <img class="myPageImgItem" src="resources/img/버너.png" alt="오류" onclick="location.href='#'">
                        </div>
                        <div class="myPageOrderItemBoxRight">
                            <div class="myPageOrderInItem1">
                                <div class="myPageOrderItem3">
                                    <div class="myPageOrderItemFont1 myPageFontItem1" >휴대용 요리킹 버너!</div>
                                    <div class="myPageFontItem2">19,900 원</div>
                                </div>
                            </div>
                            <div class="myPageOrderInItem2">
                                <div class="myPageWishItemFont2 myPageButtonSize" onclick="location.href='#'">주문하기</div>
                                <div class="myPageWishItemFont2 myPageButtonSize" onclick="location.href='#'">삭제하기</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="myPageSessionBox2 myPageWishBox">
                    <div class="myPageCheckBoxItem">
                        <input type="checkbox" name="P2" class="myPageCheckBoxItem2">                    
                    </div>                  
                    <div class="myPageWishItem">
                        <div class="myPageOrderItemImgbox">
                            <img class="myPageImgItem" src="resources/img/랜턴.png" alt="오류" onclick="location.href='#'">
                        </div>
                        <div class="myPageOrderItemBoxRight">
                            <div class="myPageOrderInItem1">
                                <div class="myPageOrderItem3">
                                    <div class="myPageOrderItemFont1 myPageFontItem1" >감성 캠핑 랜턴</div>
                                    <div class="myPageFontItem2">29,900 원</div>
                                </div>
                            </div>
                            <div class="myPageOrderInItem2">
                                <div class="myPageWishItemFont2 myPageButtonSize" onclick="location.href='#'">주문하기</div>
                                <div class="myPageWishItemFont2 myPageButtonSize" onclick="location.href='#'">삭제하기</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="myPageSessionBox2 myPageWishBox">
                    <div class="myPageCheckBoxItem">
                        <input type="checkbox" name="P3" class="myPageCheckBoxItem2">                    
                    </div>                  
                    <div class="myPageWishItem">
                        <div class="myPageOrderItemImgbox">
                            <img class="myPageImgItem" src="resources/img/의자.png" alt="오류" onclick="location.href='#'">
                        </div>
                        <div class="myPageOrderItemBoxRight">
                            <div class="myPageOrderInItem1">
                                <div class="myPageOrderItem3">
                                    <div class="myPageOrderItemFont1 myPageFontItem1" >휴대용 캠핑 의자</div>
                                    <div class="myPageFontItem2">39,900 원</div>
                                </div>
                            </div>
                            <div class="myPageOrderInItem2">
                                <div class="myPageWishItemFont2 myPageButtonSize" onclick="location.href='#'">주문하기</div>
                                <div class="myPageWishItemFont2 myPageButtonSize" onclick="location.href='#'">삭제하기</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="myPageSessions myPagePrivacySession">
                <div class="myPagePcontainer">
			        <div class="myPageLoginLeft">
			            <video src="resources/img/exam.mp4" autoplay muted loop class="myPageLoginVideo"></video>
			        </div>
			        <div class="myPageLoginRight">
			            <div class="myPageLoginBox">
			                <div class="myPageLoginBox2">
			                    <div class="myPageLoginBox3">
			                        <div>
			                            <img src="resources/img/logo.png" alt="logo" class="myPageLogo">
			                        </div>
			                        <form name="newMember" action="/login" method="post" onsubmit="return checkForm()">
			                            <input type="password" name="pw" placeholder="새로운 비밀번호" maxlength="15" class="myPageIdBox" required><br>
			                            <input type="password" name="pwCheck" placeholder="새로운 비밀번호확인" maxlength="15" class="myPageIdBox" required><br>
			                            <input type="text" name="nick" value="<%=memberNick%>" maxlength="8"class="myPageIdBox" required><br>
			                            <select name="phone1" class="myPagePhoneBox myPageSelect">
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
			                             - <input type="text" maxlength="4" size="3" value="<%=phone2%>" class="myPagePhoneBox myPagePB" required>
			                             - <input type="text" maxlength="4" size="3" value="<%=phone3%>" class="myPagePhoneBox myPagePB" required><br>
			                            <input type="text" name="address" value="<%=memberAddress%>" maxlength="60" class="myPagePwBox" required>
			                            <input type="submit" value="저장" class="myPageSubmitButton">
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