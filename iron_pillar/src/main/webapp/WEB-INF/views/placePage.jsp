<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>캠핑장 · ironPillar</title>
    <script src="https://kit.fontawesome.com/9fd6563fdd.js" crossorigin="anonymous"></script>
    <style>
        *{
            margin: 0;
            padding: 0;
            text-decoration: none;
        }
        body {
            background-color: #F6F6F6;
        }
        /* session */
        .placePageSessionContainer{
            /* border: 1px solid red; */
            width: 70%;
            margin: 0 auto;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            padding-top: 100px;
        }
        .placePageSessionHeader {
            height: 150px;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            font-weight: bold;
            font-size: 35px;
        }
        .placePageSessionBox {
            width: 100%;
        }
        .placePageSessionBox1 {
            /* border: 1px solid blue; */
            width: 100%;
            height: 60px;
            display: flex;
            justify-content: space-around;
            align-items: center;
        }
        .placePageInput
        {
            display: none;
        }
        .placePageSessions
        {
            display: none;
        }
        .placePageInput1:checked ~ .placePageSessionBox1 .placePageInputItem1
        {
            background-color: black;
            color: white;
            font-size: 20px;
        }
        .placePageInput2:checked ~ .placePageSessionBox1 .placePageInputItem2
        {
            background-color: black;
            color: white;
            font-size: 20px;
        }
        .placePageInput3:checked ~ .placePageSessionBox1 .placePageInputItem3
        {
            background-color: black;
            color: white;
            font-size: 20px;
        }
        .placePageInput4:checked ~ .placePageSessionBox1 .placePageInputItem4
        {
            background-color: black;
            color: white;
            font-size: 20px;
        }
        .placePageInput5:checked ~ .placePageSessionBox1 .placePageInputItem5
        {
            background-color: black;
            color: white;
            font-size: 20px;
        }
        .placePageInput6:checked ~ .placePageSessionBox1 .placePageInputItem6
        {
            background-color: black;
            color: white;
            font-size: 20px;
        }
        .placePageInput1:checked ~ .placePageSessionOne
        {
            display: flex;
        }
        .placePageInput2:checked ~ .placePageSessionTwo
        {
            display: flex;
        }
        .placePageInput3:checked ~ .placePageSessionThree
        {
            display: flex;
        }
        .placePageInput4:checked ~ .placePageSessionFour
        {
            display: flex;
        }
        .placePageInput5:checked ~ .placePageSessionFive
        {
            display: flex;
        }
        .placePageInput6:checked ~ .placePageSessionSix
        {
            display: flex;
        }
        .placePageSessionBox2 {
            /* border: 1px solid green; */
            width: 100%;
        }
        .placePageSessionItem {
            /* border: 1px solid black; */
            font-weight: bold;
            cursor: pointer;
            /* 호버 효과줄것 */
            display: flex;
            justify-content: center;
            align-items: center;
            width: 16.7%;
            height: 100%;
            transition-duration: 300ms;
        }
        .placePageSessionItem:hover {
            background-color: black;
            color: white;
            font-size: 20px;
        }
        .placePageSessions
        {
            width: 100%;
            flex-wrap: wrap;
            justify-content: space-between;
        }
        .placePageSItem {
            background-color: white;
            border: 1px solid #F6F6F6;
            border-radius: 10px;
            width: 370px;
            height: 570px;
            margin: 35px 0 70px 0;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            transition-duration: 400ms;
            box-shadow: 5px 5px 5px 5px #9E9E9E;
        }
        .placePageSItem:hover {
            cursor: pointer;
            box-shadow: 15px 15px 15px 15px #9E9E9E;
            transform: rotate(1deg);
            /* backface-visibility: visible;
            transform-origin: 50% 50%;
            transform: perspective(2000px) rotateY(-5deg) rotateX(5deg); */
        }
        .placePageSitemHeader {
            height: 70px;
            width: 100%;
            display: flex;
            align-items: center;
        }
        .placePageSheaderImgBox {
            width: 100px;
            height: 35px;
            margin-left: 20px;
            display: flex;
            justify-content: center;
            overflow: hidden;
        }
        .placePageSheaderImg {
            height: 100%;
            width: 100%;
        }
        .placePageMl20 {
            margin-left: 20px;
        }
        .placePageSitemImgBox {
            height: 450px;
            display: flex;
            justify-content: center;
            overflow: hidden;
        }
        .placePageSitemImg {
            height: 100%;
        }
        .placePageSitemMain {
            height: 220px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            align-items: center;
            padding: 5px 15px;
        }
        .placePageSitemName {
            margin-top: 10px;
        }
        .placePageSitemText {
            height: 70px;
            padding-bottom: 40px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .placePageSearch_box {
		    border-radius: 10px;
		    border: 1px solid black;
		    width: 25%;
			overflow: hidden;
			margin-bottom: 20px;
		}
		.placePageSearch_box1 {
			display: flex;
		}
		.placePageSearch_box2 {
			border: 0;
		}
		.placePageSearch_box .placePageBtn_submit {
		    cursor: pointer;
		    font-family: 'FontAwesome';
		    font-size: 25px;
		    padding: 4px;
		    margin: 0 7px;
		    border: 0;
		    background: 0;
		}
		.placePageSearch_box input[type="text"] {
		    outline: none;
		    padding: 8px;
		    width: 100%;
		    font-size: 16px;
		}
</style>
<script>
	// 인풋 텍스트 박스 포커스 색상
	function textBoxFocusColor(targetElement) {
		const inputbox = document.getElementsByClassName(targetElement);
		inputbox[0].style.border = "1px dashed black";
	}
	// 인풋 텍스트 박스 포커스 색상

	// 인풋 텍스트 박스 빠져나갈때 색상
	function textBoxBlurColor(targetElement) {
		const inputbox = document.getElementsByClassName(targetElement);
		inputbox[0].style.border = "1px solid black";
	}
	// 인풋 텍스트 박스 빠져나갈때 색상
</script>
</style>
</head>
<body>
<jsp:include page="menu.jsp"/>
    <div class="placePageSessionContainer">
        <div class="placePageSessionHeader">
            PLACE
        </div>
        <div class="placePageSearch_box">
            <form action="" method="get" class="placePageSearch_box1">
                <input type="text" name="search_keyword" onfocus="textBoxFocusColor('search_box')"
                    onblur="textBoxBlurColor('search_box')" class="placePageSearch_box2">
                <input type="submit" value="&#xf002" class="placePageBtn_submit">
            </form>
        </div>
        <div class="placePageSessionBox">
            <input type="radio" name="group" id="1" class="placePageInput placePageInput1" checked>
            <input type="radio" name="group" id="2" class="placePageInput placePageInput2">
            <input type="radio" name="group" id="3" class="placePageInput placePageInput3">
            <input type="radio" name="group" id="4" class="placePageInput placePageInput4">
            <input type="radio" name="group" id="5" class="placePageInput placePageInput5">
            <input type="radio" name="group" id="6" class="placePageInput placePageInput6">
            <div class="placePageSessionBox1">
                <label for="1" class="placePageSessionItem placePageInputItem1">경기도</label>
                <label for="2" class="placePageSessionItem placePageInputItem2">충청도</label>
                <label for="3" class="placePageSessionItem placePageInputItem3">전라도</label>
                <label for="4" class="placePageSessionItem placePageInputItem4">경상도</label>
                <label for="5" class="placePageSessionItem placePageInputItem5">강원도</label>
                <label for="6" class="placePageSessionItem placePageInputItem6">제주도</label>
            </div>
            <div class="placePageSessions placePageSessionOne">
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/경기도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">경기도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/경기도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">경기도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/경기도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">경기도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/경기도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">경기도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/경기도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">경기도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/경기도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">경기도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/경기도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">경기도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
            </div>
            <div class="placePageSessions placePageSessionTwo">
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/충청도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">충청도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/충청도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">충청도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/충청도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">충청도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/충청도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">충청도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/충청도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">충청도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/충청도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">충청도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/충청도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">충청도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
            </div>
            <div class="placePageSessions placePageSessionThree">
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox Ml20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/전라도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">전라도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox Ml20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/전라도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">전라도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox Ml20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/전라도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">전라도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox Ml20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/전라도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">전라도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox Ml20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/전라도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">전라도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox Ml20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/전라도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">전라도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox Ml20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/전라도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">전라도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
            </div>
            <div class="placePageSessions placePageSessionFour">
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/경상도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">경상도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/경상도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">경상도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/경상도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">경상도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/경상도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">경상도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/경상도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">경상도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/경상도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">경상도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/경상도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">경상도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
            </div>
            <div class="placePageSessions placePageSessionFive">
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/강원도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">강원도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/강원도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">강원도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/강원도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">강원도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/강원도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">강원도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/강원도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">강원도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/강원도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">강원도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/강원도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">강원도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
            </div>
            <div class="placePageSessions placePageSessionSix">
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/제주도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">제주도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/제주도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">제주도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/제주도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">제주도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/제주도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">제주도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/제주도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">제주도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/제주도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">제주도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/제주도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">제주도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>