<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>프로필 · KJWorld</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            text-decoration: none;
            color: black;
        }
        body {
            background-color: #F6F6F6;
        }
        .container {
            width: 40%;
            margin: 0 auto;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
        .mainItem {
            background-color: white;
            border-radius: 30px;
            width: 550px;
            min-height: 900px;
            margin: 100px 0;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            transition-duration: 400ms;
            box-shadow: 5px 5px 5px 5px #9E9E9E;
        }
        .mainItem:hover {
            box-shadow: 30px 30px 30px 30px #9E9E9E;
        }
        .itemHeader {
            height: 225px;
            width: 100%;
            display: flex;
            align-items: center;
            border-bottom: 1px dashed #9E9E9E;
            margin-bottom: 5px;
        }
        .itemHeaderHalf {
            width: 50%;
        }
        .itemHeaderLeft {
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .headerImgBox {
            border-radius: 87.5px;
            width: 175px;
            height: 175px;
            display: flex;
            justify-content: center;
            overflow: hidden;
            transition: all 300ms;
        }
        .headerImgBox:hover {
            transform: rotate(-5deg);
            border-radius: 110px;
            width: 200px;
            height: 200px;
            box-shadow: 5px 5px 5px 5px #9E9E9E
        }
        .headerImg {
            height: 100%;
        }
        .itemHeaderRight {
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .itemHeaderNameBox {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .itemHeaderBox2 {
            height: 50px;
            display: flex;
            align-items: center;
            padding: 0 30px 0 10px;
        }
        .headerNick {
            font-size: 25px;
            font-weight: bold;
        }
        .headerSetBox {
            height: 40px;
            width: 40px;
            display: flex;
            justify-content: center;
            align-items: center;
            cursor: pointer;
            transition-duration: 400ms;
        }
        .headerSetBox:hover .headerSetImg {
            width: 100%;
            height: 100%;
        }
        .headerSetImg {
            width: 90%;
            height: 90%;
            transition-duration: 150ms;
        }
        .headerLevel {
            font-size: 20px;
        }
        .messageButton {
            background-color: black;
            color: white;
            width: 150px;
            height: 35px;
            margin-top: 20px;
            font-size: 15px;
            transition-duration: 300ms;
            border: 1px solid gray;
            border-radius: 5px;
            cursor: pointer;
        }
        .messageButton:hover {
            border: 2px dashed white;
            font-size: 15px;
            font-weight: bold;
            border-radius: 17.5px;
        }
        .ml20 {
            margin-left: 20px;
        }
        .itemMain {
            width: 100%;
            display: flex;
            flex-wrap: wrap;
        }
        .itemMainItem {
            box-sizing: border-box;
            width: 183.34px;
            height: 183.34px;
            border: 1px solid white;
            display: flex;
            justify-content: center;
            overflow: hidden;
            cursor: pointer;
            transition-duration: 200ms;
        }
        .itemMainItem:hover {
            opacity: 0.7;
        }
        .itemMainItemImg {
            height: 100%;
        }
        .itemName {
            box-sizing: border-box;
            padding: 0 20px;
            font-size: 25px;
            margin-top: 10px;
        }
        .itemDate {
            box-sizing: border-box;
            padding: 0 20px;
            margin-top: 10px;
        }
        .itemAddress {
            box-sizing: border-box;
            padding: 0 20px;
            font-size: 15px;
            margin-top: 10px;
        }
        .itemText {
            box-sizing: border-box;
            height: 150px;
            padding: 20px 30px 10px 30px;
        }
        .itemPrice {
            box-sizing: border-box;
            padding: 0 20px;
            font-size: 18px;
        }
        .itemFooter {
            border-top: 1px dashed #9E9E9E;
            height: 80px;
            display: flex;
            align-items: center;
            justify-content: space-around;
            margin-top: 2px;
        }
    </style>
</head>
<body>
<jsp:include page="menu.jsp"/>
    <div class="container">
        <div class="mainItem">
            <div class="itemHeader">
                <div class="itemHeaderLeft itemHeaderHalf">
                    <div class="headerImgBox">
                        <img src="/resources/img/dd.png" alt="profileImg" class="headerImg">
                    </div>
                </div>
                <div class="itemHeaderRight itemHeaderHalf">
                    <div class="itemHeaderNameBox itemHeaderBox2">
                        <p class="headerNick"> 닉네임</p>
                        <div class="headerSetBox">
                            <img src="/resources/img/setting.png" alt="updateProfile" class="headerSetImg">
                        </div>
                    </div>
                    <p class="headerLevel itemHeaderBox2"> Lv.20</p>
                    <div class="itemHeaderBox2">
                        <button class="messageButton">메시지 보내기</button>
                    </div>
                </div>
            </div>
            <div class="itemMain">
                <div class="itemMainItem" onclick="location.href='/item'">
                    <img src="/resources/img/dd.png" alt="1" class="itemMainItemImg">
                </div>
                <div class="itemMainItem" onclick="location.href='/item'">
                    <img src="/resources/img/zzz.png" alt="2" class="itemMainItemImg">
                </div>
                <div class="itemMainItem" onclick="location.href='/item'">
                    <img src="/resources/img/eroJeong.png" alt="3" class="itemMainItemImg">
                </div>
                <div class="itemMainItem" onclick="location.href='/item'">
                    <img src="/resources/img/flog.png" alt="4" class="itemMainItemImg">
                </div>
                <div class="itemMainItem" onclick="location.href='/item'">
                    <img src="/resources/img/dd.png" alt="5" class="itemMainItemImg">
                </div>
                <div class="itemMainItem" onclick="location.href='/item'">
                    <img src="/resources/img/rainbow.png" alt="6" class="itemMainItemImg">
                </div>
                <div class="itemMainItem" onclick="location.href='/item'">
                    <img src="/resources/img/dd.png" alt="1" class="itemMainItemImg">
                </div>
                <div class="itemMainItem" onclick="location.href='/item'">
                    <img src="/resources/img/zzz.png" alt="2" class="itemMainItemImg">
                </div>
                <div class="itemMainItem" onclick="location.href='/item'">
                    <img src="/resources/img/flog.png" alt="3" class="itemMainItemImg">
                </div>
                <div class="itemMainItem" onclick="location.href='/item'">
                    <img src="/resources/img/flog.png" alt="4" class="itemMainItemImg">
                </div>
                <div class="itemMainItem" onclick="location.href='/item'">
                    <img src="/resources/img/dd.png" alt="5" class="itemMainItemImg">
                </div>
                <div class="itemMainItem" onclick="location.href='/item'">
                    <img src="/resources/img/rainbow.png" alt="6" class="itemMainItemImg">
                </div>
            </div>
            <div class="itemFooter">
            </div>
        </div>
    </div>
</body>
</html>