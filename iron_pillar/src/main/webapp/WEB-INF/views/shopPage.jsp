<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>쇼핑 · ironPillar</title>
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
        .shopPageSessionContainer{
            /* border: 1px solid red; */
            width: 70%;
            margin: 0 auto;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            padding-top: 100px;
        }
        .shopPageSessionHeader {
            height: 150px;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            font-weight: bold;
            font-size: 35px;
        }
        .shopPageSessionBox {
            width: 100%;
        }
        .shopPageSessionBox1 {
            /* border: 1px solid blue; */
            width: 100%;
            height: 60px;
            display: flex;
            justify-content: space-around;
            align-items: center;
        }
        .shopPageInput
        {
            display: none;
        }
        .shopPageSessions
        {
            display: none;
        }
        .shopPageInput1:checked ~ .shopPageSessionBox1 .shopPageInputItem1
        {
            background-color: black;
            color: white;
            font-size: 20px;
        }
        .shopPageInput2:checked ~ .shopPageSessionBox1 .shopPageInputItem2
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
        .input1:checked ~ .SessionOne
        {
            display: flex;
        }
        .input2:checked ~ .SessionTwo
        {
            display: flex;
        }
        .input3:checked ~ .SessionThree
        {
            display: flex;
        }
        .input4:checked ~ .SessionFour
        {
            display: flex;
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
            width: 25%;
            height: 100%;
            transition-duration: 300ms;
        }
        .sessionItem:hover {
            background-color: black;
            color: white;
            font-size: 20px;
        }
        .sessions
        {
            width: 100%;
            flex-wrap: wrap;
            justify-content: space-between;
        }
        .SItem {
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
        .SItem:hover {
            cursor: pointer;
            box-shadow: 15px 15px 15px 15px #9E9E9E;
            transform: rotate(1deg);
            /* backface-visibility: visible;
            transform-origin: 50% 50%;
            transform: perspective(2000px) rotateY(-5deg) rotateX(5deg); */
        }
        .SitemHeader {
            height: 70px;
            width: 100%;
            display: flex;
            align-items: center;
        }
        .SheaderImgBox {
            width: 100px;
            height: 35px;
            margin-left: 20px;
            display: flex;
            justify-content: center;
            overflow: hidden;
        }
        .SheaderImg {
            height: 100%;
            width: 100%;
        }
        .ml20 {
            margin-left: 20px;
        }
        .SitemImgBox {
            height: 450px;
            display: flex;
            justify-content: center;
            overflow: hidden;
        }
        .SitemImg {
            height: 100%;
        }
        .SitemMain {
            height: 220px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            align-items: center;
            padding: 5px 15px;
        }
        .SitemName {
            margin-top: 10px;
        }
        .SitemPrice {
            box-sizing: border-box;
            font-weight: bold;
            margin-bottom: 15px;
        }
        .search_box {
		    border-radius: 10px;
		    border: 1px solid black;
		    width: 25%;
			overflow: hidden;
			margin-bottom: 20px;
		}
		.search_box1 {
			display: flex;
		}
		.search_box2 {
			border: 0;
		}
		.search_box .btn_submit {
		    cursor: pointer;
		    font-family: 'FontAwesome';
		    font-size: 25px;
		    padding: 4px;
		    margin: 0 7px;
		    border: 0;
		    background: 0;
		}
		.search_box input[type="text"] {
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
</head>
<body>
<jsp:include page="menu.jsp"/>
    <!-- shop페이지 -->
    <div class="sessionContainer">
        <div class="sessionHeader">
            SHOP
        </div>
        <div class="search_box">
            <form action="" method="get" class="search_box1">
                <input type="text" name="search_keyword" onfocus="textBoxFocusColor('search_box')"
                    onblur="textBoxBlurColor('search_box')" class="search_box2">
                <input type="submit" value="&#xf002" class="btn_submit">
            </form>
        </div>
        <div class="sessionBox">
            <input type="radio" name="group" id="1" class="input input1" checked>
            <input type="radio" name="group" id="2" class="input input2">
            <input type="radio" name="group" id="3" class="input input3">
            <input type="radio" name="group" id="4" class="input input4">
            <div class="sessionBox1">
                <label for="1" class="sessionItem inputItem1" onclick="location.href='#'">텐트/침구류</label>
                <label for="2" class="sessionItem inputItem2" onclick="location.href='#'">취사도구</label>
                <label for="3" class="sessionItem inputItem3" onclick="location.href='#'">랜턴/조명</label>
                <label for="4" class="sessionItem inputItem4" onclick="location.href='#'">기타 캠핑용품</label>
            </div>
            <div class="sessions SessionOne">
                <div class="SItem" onclick="location.href='/shop/shopItem'">
                    <div class="SitemHeader">
                        <div class="SheaderImgBox ml20">
                            <img src="resources/img/logo.png" alt="로고" class="SheaderImg">
                        </div>
                    </div>
                    <div class="SitemImgBox">
                        <img src="resources/img/텐트.jpg" alt="itemImg" class="SitemImg">
                    </div>
                    <div class="SitemMain">
                        <h3 class="SitemName">상품명</h3>
                        <p class="SitemText">내용</p>
                        <p class="SitemPrice">가격</p>
                    </div>
                </div>
                <div class="SItem" onclick="location.href='/shop/shopItem'">
                    <div class="SitemHeader">
                        <div class="SheaderImgBox ml20">
                            <img src="resources/img/logo.png" alt="로고" class="SheaderImg">
                        </div>
                    </div>
                    <div class="SitemImgBox">
                        <img src="resources/img/텐트.jpg" alt="itemImg" class="SitemImg">
                    </div>
                    <div class="SitemMain">
                        <h3 class="SitemName">상품명</h3>
                        <p class="SitemText">내용</p>
                        <p class="SitemPrice">가격</p>
                    </div>
                </div>
                <div class="SItem" onclick="location.href='/shop/shopItem'">
                    <div class="SitemHeader">
                        <div class="SheaderImgBox ml20">
                            <img src="resources/img/logo.png" alt="로고" class="SheaderImg">
                        </div>
                    </div>
                    <div class="SitemImgBox">
                        <img src="resources/img/텐트.jpg" alt="itemImg" class="SitemImg">
                    </div>
                    <div class="SitemMain">
                        <h3 class="SitemName">상품명</h3>
                        <p class="SitemText">내용</p>
                        <p class="SitemPrice">가격</p>
                    </div>
                </div>
                <div class="SItem" onclick="location.href='/shop/shopItem'">
                    <div class="SitemHeader">
                        <div class="SheaderImgBox ml20">
                            <img src="resources/img/logo.png" alt="로고" class="SheaderImg">
                        </div>
                    </div>
                    <div class="SitemImgBox">
                        <img src="resources/img/텐트.jpg" alt="itemImg" class="SitemImg">
                    </div>
                    <div class="SitemMain">
                        <h3 class="SitemName">상품명</h3>
                        <p class="SitemText">내용</p>
                        <p class="SitemPrice">가격</p>
                    </div>
                </div>
                <div class="SItem" onclick="location.href='/shop/shopItem'">
                    <div class="SitemHeader">
                        <div class="SheaderImgBox ml20">
                            <img src="resources/img/logo.png" alt="로고" class="SheaderImg">
                        </div>
                    </div>
                    <div class="SitemImgBox">
                        <img src="resources/img/텐트.jpg" alt="itemImg" class="SitemImg">
                    </div>
                    <div class="SitemMain">
                        <h3 class="SitemName">상품명</h3>
                        <p class="SitemText">내용</p>
                        <p class="SitemPrice">가격</p>
                    </div>
                </div>
                <div class="SItem" onclick="location.href='/shop/shopItem'">
                    <div class="SitemHeader">
                        <div class="SheaderImgBox ml20">
                            <img src="resources/img/logo.png" alt="로고" class="SheaderImg">
                        </div>
                    </div>
                    <div class="SitemImgBox">
                        <img src="resources/img/텐트.jpg" alt="itemImg" class="SitemImg">
                    </div>
                    <div class="SitemMain">
                        <h3 class="SitemName">상품명</h3>
                        <p class="SitemText">내용</p>
                        <p class="SitemPrice">가격</p>
                    </div>
                </div>
                <div class="SItem" onclick="location.href='/shop/shopItem'">
                    <div class="SitemHeader">
                        <div class="SheaderImgBox ml20">
                            <img src="resources/img/logo.png" alt="로고" class="SheaderImg">
                        </div>
                    </div>
                    <div class="SitemImgBox">
                        <img src="resources/img/텐트.jpg" alt="itemImg" class="SitemImg">
                    </div>
                    <div class="SitemMain">
                        <h3 class="SitemName">상품명</h3>
                        <p class="SitemText">내용</p>
                        <p class="SitemPrice">가격</p>
                    </div>
                </div>
            </div>
            <div class="sessions SessionTwo">
                <div class="SItem" onclick="location.href='/shop/shopItem'">
                    <div class="SitemHeader">
                        <div class="SheaderImgBox ml20">
                            <img src="resources/img/logo.png" alt="로고" class="SheaderImg">
                        </div>
                    </div>
                    <div class="SitemImgBox">
                        <img src="resources/img/버너.png" alt="itemImg" class="SitemImg">
                    </div>
                    <div class="SitemMain">
                        <h3 class="SitemName">상품명</h3>
                        <p class="SitemText">내용</p>
                        <p class="SitemPrice">가격</p>
                    </div>
                </div>
                <div class="SItem" onclick="location.href='/shop/shopItem'">
                    <div class="SitemHeader">
                        <div class="SheaderImgBox ml20">
                            <img src="resources/img/logo.png" alt="로고" class="SheaderImg">
                        </div>
                    </div>
                    <div class="SitemImgBox">
                        <img src="resources/img/버너.png" alt="itemImg" class="SitemImg">
                    </div>
                    <div class="SitemMain">
                        <h3 class="SitemName">상품명</h3>
                        <p class="SitemText">내용</p>
                        <p class="SitemPrice">가격</p>
                    </div>
                </div>
                <div class="SItem" onclick="location.href='/shop/shopItem'">
                    <div class="SitemHeader">
                        <div class="SheaderImgBox ml20">
                            <img src="resources/img/logo.png" alt="로고" class="SheaderImg">
                        </div>
                    </div>
                    <div class="SitemImgBox">
                        <img src="resources/img/버너.png" alt="itemImg" class="SitemImg">
                    </div>
                    <div class="SitemMain">
                        <h3 class="SitemName">상품명</h3>
                        <p class="SitemText">내용</p>
                        <p class="SitemPrice">가격</p>
                    </div>
                </div>
                <div class="SItem" onclick="location.href='/shop/shopItem'">
                    <div class="SitemHeader">
                        <div class="SheaderImgBox ml20">
                            <img src="resources/img/logo.png" alt="로고" class="SheaderImg">
                        </div>
                    </div>
                    <div class="SitemImgBox">
                        <img src="resources/img/버너.png" alt="itemImg" class="SitemImg">
                    </div>
                    <div class="SitemMain">
                        <h3 class="SitemName">상품명</h3>
                        <p class="SitemText">내용</p>
                        <p class="SitemPrice">가격</p>
                    </div>
                </div>
                <div class="SItem" onclick="location.href='/shop/shopItem'">
                    <div class="SitemHeader">
                        <div class="SheaderImgBox ml20">
                            <img src="resources/img/logo.png" alt="로고" class="SheaderImg">
                        </div>
                    </div>
                    <div class="SitemImgBox">
                        <img src="resources/img/버너.png" alt="itemImg" class="SitemImg">
                    </div>
                    <div class="SitemMain">
                        <h3 class="SitemName">상품명</h3>
                        <p class="SitemText">내용</p>
                        <p class="SitemPrice">가격</p>
                    </div>
                </div>
                <div class="SItem" onclick="location.href='/shop/shopItem'">
                    <div class="SitemHeader">
                        <div class="SheaderImgBox ml20">
                            <img src="resources/img/logo.png" alt="로고" class="SheaderImg">
                        </div>
                    </div>
                    <div class="SitemImgBox">
                        <img src="resources/img/버너.png" alt="itemImg" class="SitemImg">
                    </div>
                    <div class="SitemMain">
                        <h3 class="SitemName">상품명</h3>
                        <p class="SitemText">내용</p>
                        <p class="SitemPrice">가격</p>
                    </div>
                </div>
                <div class="SItem" onclick="location.href='/shop/shopItem'">
                    <div class="SitemHeader">
                        <div class="SheaderImgBox ml20">
                            <img src="resources/img/logo.png" alt="로고" class="SheaderImg">
                        </div>
                    </div>
                    <div class="SitemImgBox">
                        <img src="resources/img/버너.png" alt="itemImg" class="SitemImg">
                    </div>
                    <div class="SitemMain">
                        <h3 class="SitemName">상품명</h3>
                        <p class="SitemText">내용</p>
                        <p class="SitemPrice">가격</p>
                    </div>
                </div>
            </div>
            <div class="sessions SessionThree">
                <div class="SItem" onclick="location.href='/shop/shopItem'">
                    <div class="SitemHeader">
                        <div class="SheaderImgBox ml20">
                            <img src="resources/img/logo.png" alt="로고" class="SheaderImg">
                        </div>
                    </div>
                    <div class="SitemImgBox">
                        <img src="resources/img/랜턴.png" alt="itemImg" class="SitemImg">
                    </div>
                    <div class="SitemMain">
                        <h3 class="SitemName">상품명</h3>
                        <p class="SitemText">내용</p>
                        <p class="SitemPrice">가격</p>
                    </div>
                </div>
                <div class="SItem" onclick="location.href='/shop/shopItem'">
                    <div class="SitemHeader">
                        <div class="SheaderImgBox ml20">
                            <img src="resources/img/logo.png" alt="로고" class="SheaderImg">
                        </div>
                    </div>
                    <div class="SitemImgBox">
                        <img src="resources/img/랜턴.png" alt="itemImg" class="SitemImg">
                    </div>
                    <div class="SitemMain">
                        <h3 class="SitemName">상품명</h3>
                        <p class="SitemText">내용</p>
                        <p class="SitemPrice">가격</p>
                    </div>
                </div>
                <div class="SItem" onclick="location.href='/shop/shopItem'">
                    <div class="SitemHeader">
                        <div class="SheaderImgBox ml20">
                            <img src="resources/img/logo.png" alt="로고" class="SheaderImg">
                        </div>
                    </div>
                    <div class="SitemImgBox">
                        <img src="resources/img/랜턴.png" alt="itemImg" class="SitemImg">
                    </div>
                    <div class="SitemMain">
                        <h3 class="SitemName">상품명</h3>
                        <p class="SitemText">내용</p>
                        <p class="SitemPrice">가격</p>
                    </div>
                </div>
                <div class="SItem" onclick="location.href='/shop/shopItem'">
                    <div class="SitemHeader">
                        <div class="SheaderImgBox ml20">
                            <img src="resources/img/logo.png" alt="로고" class="SheaderImg">
                        </div>
                    </div>
                    <div class="SitemImgBox">
                        <img src="resources/img/랜턴.png" alt="itemImg" class="SitemImg">
                    </div>
                    <div class="SitemMain">
                        <h3 class="SitemName">상품명</h3>
                        <p class="SitemText">내용</p>
                        <p class="SitemPrice">가격</p>
                    </div>
                </div>
                <div class="SItem" onclick="location.href='/shop/shopItem'">
                    <div class="SitemHeader">
                        <div class="SheaderImgBox ml20">
                            <img src="resources/img/logo.png" alt="로고" class="SheaderImg">
                        </div>
                    </div>
                    <div class="SitemImgBox">
                        <img src="resources/img/랜턴.png" alt="itemImg" class="SitemImg">
                    </div>
                    <div class="SitemMain">
                        <h3 class="SitemName">상품명</h3>
                        <p class="SitemText">내용</p>
                        <p class="SitemPrice">가격</p>
                    </div>
                </div>
                <div class="SItem" onclick="location.href='/shop/shopItem'">
                    <div class="SitemHeader">
                        <div class="SheaderImgBox ml20">
                            <img src="resources/img/logo.png" alt="로고" class="SheaderImg">
                        </div>
                    </div>
                    <div class="SitemImgBox">
                        <img src="resources/img/랜턴.png" alt="itemImg" class="SitemImg">
                    </div>
                    <div class="SitemMain">
                        <h3 class="SitemName">상품명</h3>
                        <p class="SitemText">내용</p>
                        <p class="SitemPrice">가격</p>
                    </div>
                </div>
                <div class="SItem" onclick="location.href='/shop/shopItem'">
                    <div class="SitemHeader">
                        <div class="SheaderImgBox ml20">
                            <img src="resources/img/logo.png" alt="로고" class="SheaderImg">
                        </div>
                    </div>
                    <div class="SitemImgBox">
                        <img src="resources/img/랜턴.png" alt="itemImg" class="SitemImg">
                    </div>
                    <div class="SitemMain">
                        <h3 class="SitemName">상품명</h3>
                        <p class="SitemText">내용</p>
                        <p class="SitemPrice">가격</p>
                    </div>
                </div>
            </div>
            <div class="sessions SessionFour">
                <div class="SItem" onclick="location.href='/shop/shopItem'">
                    <div class="SitemHeader">
                        <div class="SheaderImgBox ml20">
                            <img src="resources/img/logo.png" alt="로고" class="SheaderImg">
                        </div>
                    </div>
                    <div class="SitemImgBox">
                        <img src="resources/img/의자.png" alt="itemImg" class="SitemImg">
                    </div>
                    <div class="SitemMain">
                        <h3 class="SitemName">상품명</h3>
                        <p class="SitemText">내용</p>
                        <p class="SitemPrice">가격</p>
                    </div>
                </div>
                <div class="SItem" onclick="location.href='/shop/shopItem'">
                    <div class="SitemHeader">
                        <div class="SheaderImgBox ml20">
                            <img src="resources/img/logo.png" alt="로고" class="SheaderImg">
                        </div>
                    </div>
                    <div class="SitemImgBox">
                        <img src="resources/img/의자.png" alt="itemImg" class="SitemImg">
                    </div>
                    <div class="SitemMain">
                        <h3 class="SitemName">상품명</h3>
                        <p class="SitemText">내용</p>
                        <p class="SitemPrice">가격</p>
                    </div>
                </div>
                <div class="SItem" onclick="location.href='/shop/shopItem'">
                    <div class="SitemHeader">
                        <div class="SheaderImgBox ml20">
                            <img src="resources/img/logo.png" alt="로고" class="SheaderImg">
                        </div>
                    </div>
                    <div class="SitemImgBox">
                        <img src="resources/img/의자.png" alt="itemImg" class="SitemImg">
                    </div>
                    <div class="SitemMain">
                        <h3 class="SitemName">상품명</h3>
                        <p class="SitemText">내용</p>
                        <p class="SitemPrice">가격</p>
                    </div>
                </div>
                <div class="SItem" onclick="location.href='/shop/shopItem'">
                    <div class="SitemHeader">
                        <div class="SheaderImgBox ml20">
                            <img src="resources/img/logo.png" alt="로고" class="SheaderImg">
                        </div>
                    </div>
                    <div class="SitemImgBox">
                        <img src="resources/img/의자.png" alt="itemImg" class="SitemImg">
                    </div>
                    <div class="SitemMain">
                        <h3 class="SitemName">상품명</h3>
                        <p class="SitemText">내용</p>
                        <p class="SitemPrice">가격</p>
                    </div>
                </div>
                <div class="SItem" onclick="location.href='/shop/shopItem'">
                    <div class="SitemHeader">
                        <div class="SheaderImgBox ml20">
                            <img src="resources/img/logo.png" alt="로고" class="SheaderImg">
                        </div>
                    </div>
                    <div class="SitemImgBox">
                        <img src="resources/img/의자.png" alt="itemImg" class="SitemImg">
                    </div>
                    <div class="SitemMain">
                        <h3 class="SitemName">상품명</h3>
                        <p class="SitemText">내용</p>
                        <p class="SitemPrice">가격</p>
                    </div>
                </div>
                <div class="SItem" onclick="location.href='/shop/shopItem'">
                    <div class="SitemHeader">
                        <div class="SheaderImgBox ml20">
                            <img src="resources/img/logo.png" alt="로고" class="SheaderImg">
                        </div>
                    </div>
                    <div class="SitemImgBox">
                        <img src="resources/img/의자.png" alt="itemImg" class="SitemImg">
                    </div>
                    <div class="SitemMain">
                        <h3 class="SitemName">상품명</h3>
                        <p class="SitemText">내용</p>
                        <p class="SitemPrice">가격</p>
                    </div>
                </div>
                <div class="SItem" onclick="location.href='/shop/shopItem'">
                    <div class="SitemHeader">
                        <div class="SheaderImgBox ml20">
                            <img src="resources/img/logo.png" alt="로고" class="SheaderImg">
                        </div>
                    </div>
                    <div class="SitemImgBox">
                        <img src="resources/img/의자.png" alt="itemImg" class="SitemImg">
                    </div>
                    <div class="SitemMain">
                        <h3 class="SitemName">상품명</h3>
                        <p class="SitemText">내용</p>
                        <p class="SitemPrice">가격</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>