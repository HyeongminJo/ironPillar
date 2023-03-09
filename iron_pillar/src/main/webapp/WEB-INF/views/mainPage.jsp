<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ironPillar</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            text-decoration: none;
        }
        body {
            background-color: rgba(249, 250, 253, 0.792)
        }
        .paddingCon
        {
            padding-top: 100px;
        }
        .container
        {
            width: 75%;
            height: 100%;
            margin: 0 auto;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .sessionNameOn
        {
            cursor: pointer;
        }
        .sessionNameOn:hover .sessionName
        {
            color: orange;
        }
        .sessionNameBox
        {
            margin-top: 70px;
            background-color: white;
            height: 100px;
        }
        .sessionName
        {
            font-size: 23px;
            color: #353535;
            transition-duration: 300ms;
        }
        /* 비디오 세션 */
        .videoSession
        {
            width: 100%;
            height: 800px;
            overflow: hidden;
        }
        .videoBox
        {
            width: 100%;
            position: relative;
            height: 800px;
            overflow: hidden;
        }
        .homeVideo
        {
            height: 800px;
        }
        .beHappyBox
        {
            position: absolute;
            top: 43%;
            right: 35%;
            width: 30%;
            height: 13%;
        }
        .beHappy
        {
            width: 100%;
            height: 100%;
        }
        /* 커뮤니티 세션 */
        .Ccontainer {
        	width: 75%;
            margin: 0 auto;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            /* padding: 10px 0; */
        }
        .CItem {
            background-color: white;
            border: 1px solid #F6F6F6;
            border-radius: 10px;
            width: 370px;
            height: 570px;
            margin-top: 70px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            transition-duration: 400ms;
            box-shadow: 5px 5px 5px 5px #9E9E9E;
            position: relative;
        }
        .CItem:hover {
            cursor: pointer;
            box-shadow: 15px 15px 15px 15px #9E9E9E;
            transform: rotate(1deg);
            /* backface-visibility: visible;
            transform-origin: 50% 50%;
            transform: perspective(2000px) rotateY(-5deg) rotateX(5deg); */
        }
        .CitemHeader {
            height: 70px;
            width: 100%;
            display: flex;
            align-items: center;
        }
        .CheaderNick
        {
            font-weight: bold;
        }
        .CheaderImgBox {
            width: 100px;
            height: 35px;
            margin-left: 20px;
            display: flex;
            justify-content: center;
            overflow: hidden;
        }
        .CheaderImg {
            height: 100%;
            width: 100%;
        }
        .ml20 {
            margin-left: 20px;
        }
        .CitemImgBox {
            height: 450px;
            display: flex;
            justify-content: center;
            overflow: hidden;
        }
        .CitemImg {
            height: 100%;
        }
        .CitemMain {
            height: 220px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            align-items: center;
            padding: 5px 15px;
        }
        .CitemMainC {
            height: 220px;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 5px 15px;
        }
        .CitemMainT
        {
            height: 600px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 15px;
        }
        .CitemFooter 
        {
            height: 70px;
        }
        .CitemName {
            margin-top: 10px;
        }
        .CitemNameC {
            margin: 10px 0;
        }
        .CitemAddress {
            height: 70px;
            padding-bottom: 40px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .CitemPrice {
            box-sizing: border-box;
            font-weight: bold;
            margin-bottom: 15px;
        }
        .hotSticker
        {
            width: 100px;
            position: absolute;
            font-weight: bold;
            color: orange;
            top: -50px;
            left: 135px;
        }
        .hotStickerImg
        {
            width: 100%;
            height: 100%;
        }
        /* 커뮤니티 세션 끝 */
        /* footer */
        footer
        {
            /* border-top: 1px solid #353535; */
            height: 200px;
            margin-top: 70px;
            background-color: white;
        }
    </style>
</head>
<body>
    <jsp:include page="menu.jsp"/>
    <div class="paddingCon">
        <div class="videoSession">
            <div class="container">
                <div class="videoBox">
                    <video src="/resources/img/exam.mp4" muted autoplay loop class="homeVideo">왜 안됨</video>
                    <div class="beHappyBox">
                        <img src="/resources/img/beHappy.png" alt="#" class="beHappy">
                    </div>
                </div>
            </div>
        </div>
        <div class="shopSession">
            <div class="sessionNameBox">
                <div class="container sessionNameOn" onclick="location.href='/shop'">
                    <h3 class="sessionName">HOT ITEM</h3>
                </div>
            </div>
            <div class="Ccontainer">
                <div class="CItem" onclick="location.href='/shop/shopItem'">
                    <div class="CitemHeader">
                        <div class="CheaderImgBox ml20">
                            <img src="/resources/img/logo.png" alt="로고" class="CheaderImg">
                        </div>
                    </div>
                    <div class="CitemImgBox">
                        <img src="/resources/img/의자.png" alt="itemImg" class="CitemImg">
                    </div>
                    <div class="CitemMain">
                        <h3 class="CitemName">상품명</h3>
                        <p class="CitemText">내용</p>
                        <p class="CitemPrice">가격</p>
                    </div>
                    <div class="hotSticker">
                        <img src="/resources/img/1.png" alt="1" class="hotStickerImg">
                    </div>
                </div>
                <div class="CItem" onclick="location.href='/shop/shopItem'">
                    <div class="CitemHeader">
                        <div class="CheaderImgBox ml20">
                            <img src="/resources/img/logo.png" alt="로고" class="CheaderImg">
                        </div>
                    </div>
                    <div class="CitemImgBox">
                        <img src="/resources/img/랜턴.png" alt="itemImg" class="CitemImg">
                    </div>
                    <div class="CitemMain">
                        <h3 class="CitemName">상품명</h3>
                        <p class="CitemText">내용</p>
                        <p class="CitemPrice">가격</p>
                    </div>
                    <div class="hotSticker">
                        <img src="/resources/img/2.png" alt="1" class="hotStickerImg">
                    </div>
                </div>
                <div class="CItem" onclick="location.href='/shop/shopItem'">
                    <div class="CitemHeader">
                        <div class="CheaderImgBox ml20">
                            <img src="/resources/img/logo.png" alt="로고" class="CheaderImg">
                        </div>
                    </div>
                    <div class="CitemImgBox">
                        <img src="/resources/img/버너.png" alt="itemImg" class="CitemImg">
                    </div>
                    <div class="CitemMain">
                        <h3 class="CitemName">상품명</h3>
                        <p class="CitemText">내용</p>
                        <p class="CitemPrice">가격</p>
                    </div>
                    <div class="hotSticker">
                        <img src="/resources/img/3.png" alt="1" class="hotStickerImg">
                    </div>
                </div>
            </div>
        </div>
        <div class="placeSession">
            <div class="sessionNameBox">
                <div class="container sessionNameOn" onclick="location.href='/place'">
                    <h3 class="sessionName">HOT PLACE</h3>
                </div>
            </div>
            <div class="Ccontainer">
                <div class="CItem" onclick="location.href='/place/placeItem'">
                    <div class="CitemHeader">
                        <div class="CheaderImgBox ml20">
                            <img src="/resources/img/logo.png" alt="로고" class="CheaderImg">
                        </div>
                    </div>
                    <div class="CitemImgBox">
                        <img src="/resources/img/캠핑1.png" alt="itemImg" class="CitemImg">
                    </div>
                    <div class="CitemMain">
                        <h3 class="CitemName">캠핑장</h3>
                        <p class="CitemAddress">마산</p>
                    </div>
                    <div class="hotSticker">
                        <img src="/resources/img/1.png" alt="1" class="hotStickerImg">
                    </div>
                </div>
                <div class="CItem" onclick="location.href='/place/placeItem'">
                    <div class="CitemHeader">
                        <div class="CheaderImgBox ml20">
                            <img src="/resources/img/logo.png" alt="로고" class="CheaderImg">
                        </div>
                    </div>
                    <div class="CitemImgBox">
                        <img src="/resources/img/캠핑2.jpg" alt="itemImg" class="CitemImg">
                    </div>
                    <div class="CitemMain">
                        <h3 class="CitemName">캠핑장</h3>
                        <p class="CitemAddress">창원</p>
                    </div>
                    <div class="hotSticker">
                        <img src="/resources/img/2.png" alt="1" class="hotStickerImg">
                    </div>
                </div>
                <div class="CItem" onclick="location.href='/place/placeItem'">
                    <div class="CitemHeader">
                        <div class="CheaderImgBox ml20">
                            <img src="/resources/img/logo.png" alt="로고" class="CheaderImg">
                        </div>
                    </div>
                    <div class="CitemImgBox">
                        <img src="/resources/img/캠핑3.jpg" alt="itemImg" class="CitemImg">
                    </div>
                    <div class="CitemMain">
                        <h3 class="CitemName">캠핑장</h3>
                        <p class="CitemAddress">진해</p>
                    </div>
                    <div class="hotSticker">
                        <img src="/resources/img/3.png" alt="1" class="hotStickerImg">
                    </div>
                </div>
            </div>
        </div>
        <div class="communitySession">
            <div class="sessionNameBox">
                <div class="container sessionNameOn" onclick="location.href='/community'">
                    <h3 class="sessionName">COMMUNITY</h3>
                </div>
            </div>
            <div class="Ccontainer">
                <div class="CItem" onclick="location.href='/community/communityItem'">
                    <div class="CitemHeader">
                        <p class="CheaderNick ml20"> 닉네임</p>
                        <p class="CheaderLevel ml20"> Lv.20</p>
                    </div>
                    <div class="CitemImgBox">
                        <img src="/resources/img/캡처.PNG" alt="itemImg" class="CitemImg">
                    </div>
                    <div class="CitemMain">
                        <h3 class="CitemNameC">제목</h3>
                        <p class="CitemAddress">내용</p>
                    </div>
                </div>
                <div class="CItem" onclick="location.href='/community/communityItem'">
                    <div class="CitemHeader">
                        <p class="CheaderNick ml20"> 닉네임</p>
                        <p class="CheaderLevel ml20"> Lv.20</p>
                    </div>
                    <div class="CitemMainT">
                        <h3 class="CitemNameC">제목</h3>
                        <p class="CitemTextT">내용</p>
                    </div>
                    <div class="CitemFooter">
                    </div>
                </div>
                <div class="CItem" onclick="location.href='/community/communityItem'">
                    <div class="CitemHeader">
                        <p class="CheaderNick ml20"> 닉네임</p>
                        <p class="CheaderLevel ml20"> Lv.20</p>
                    </div>
                    <div class="CitemImgBox">
                        <img src="/resources/img/캡처.PNG" alt="itemImg" class="CitemImg">
                    </div>
                    <div class="CitemMain">
                        <h3 class="CitemNameC">제목</h3>
                        <p class="CitemAddress">내용</p>
                    </div>
                </div>
            </div>
        </div>
        <footer>
            <div class="container">
                ironPillar
            </div>
        </footer>
    </div>
</body>
</html>