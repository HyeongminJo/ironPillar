<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>커뮤니티 · ironPillar</title>
    <style>
    	body {
            background-color: #F6F6F6;
        }
    	.communityPageContainer
    	{
    		border: 1px solid red;
    		width: 100%;
    		display: flex;
    		flex-direction: column;
    		justify-content: center;
    		align-items: center;
    		padding-top: 100px;
    		
    	}
    	.communityPageTitle {
    		height: 150px;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            font-weight: bold;
            font-size: 35px;
    	}
    	.communityPageWriteButtonBox {
    		width: 70%;
    		height: 60px;
    		display: flex;
    		justify-content: end;
    	}
    	.communityPageWriteButton {
    		width: 80px;
    		height: 25px;
    		display: flex;
    		justify-content: center;
            align-items: center;
    		border: 1px solid black;
    		border-radius: 7px;
    		transition-duration: 300ms;
    		font-weight: bold;
    		cursor: pointer;
    	}
    	.communityPageWriteButton:hover {
    		background-color: black;
    		color: white;
    		border: 1px dashed white;
    		border-radius: 15px;
    	}
        .communityPageContainer2 {
        	width: 70%;
            margin: 0 auto;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }
        .communityPageItem {
            background-color: white;
            border: 1px solid #F6F6F6;
            border-radius: 10px;
            width: 370px;
            height: 570px;
            margin-bottom: 70px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            transition-duration: 400ms;
            box-shadow: 5px 5px 5px 5px #9E9E9E;
            position: relative;
        }
        .communityPageItem:hover {
            cursor: pointer;
            box-shadow: 15px 15px 15px 15px #9E9E9E;
            transform: rotate(1deg);
            /* backface-visibility: visible;
            transform-origin: 50% 50%;
            transform: perspective(2000px) rotateY(-5deg) rotateX(5deg); */
        }
        .communityPageItemHeader {
            height: 70px;
            width: 100%;
            display: flex;
            align-items: center;
        }
        .communityPageHeaderNick
        {
            font-weight: bold;
        }
        .ml20 {
            margin-left: 20px;
        }
        .communityPageItemImgBox {
            height: 450px;
            display: flex;
            justify-content: center;
            overflow: hidden;
        }
        .communityPageItemImg {
            height: 100%;
        }
        .communityPageItemMain {
            height: 220px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            align-items: center;
            padding: 5px 15px;
        }
        .communityPageItemMainT
        {
            height: 600px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 15px;
        }
        .communityPageItemFooter 
        {
            height: 70px;
        }
        .communityPageItemNameC {
            margin: 10px 0;
        }
        .communityPageText {
            height: 70px;
            padding-bottom: 40px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .communityPageTextT {
        }
    </style>
</head>
<body>
<jsp:include page="menu.jsp"/>
	<div class="communityPageContainer">
		<div class="communityPageTitle">
			COMMUNITY
		</div>
		<div class="communityPageWriteButtonBox">
			<div class="communityPageWriteButton" onclick="location.href='/item'">글쓰기</div>
		</div>
	    <div class="communityPageContainer2">
	    	<div class="communityPageItem" onclick="location.href='/community/communityItem'">
                <div class="communityPageItemHeader">
                    <p class="communityPageHeaderNick ml20"> 닉네임</p>
                    <p class="communityPageHeaderLevel ml20"> Lv.20</p>
                </div>
                <div class="communityPageItemImgBox">
                    <img src="/resources/img/캡처.PNG" alt="itemImg" class="communityPageItemImg">
                </div>
                <div class="communityPageItemMain">
                    <h3 class="communityPageItemNameC">제목</h3>
                    <p class="communityPageText">내용</p>
                </div>
            </div>
	    	<div class="communityPageItem" onclick="location.href='/community/communityItem'">
                <div class="communityPageItemHeader">
                    <p class="communityPageHeaderNick ml20"> 닉네임</p>
                    <p class="communityPageHeaderLevel ml20"> Lv.20</p>
                </div>
                <div class="communityPageItemMainT">
                    <h3 class="communityPageItemNameC">제목</h3>
                    <p class="communityPageTextT">내용</p>
                </div>
                <div class="communityPageItemFooter">
                </div>
            </div>
            <div class="communityPageItem" onclick="location.href='/community/communityItem'">
                <div class="communityPageItemHeader">
                    <p class="communityPageHeaderNick ml20"> 닉네임</p>
                    <p class="communityPageHeaderLevel ml20"> Lv.20</p>
                </div>
                <div class="communityPageItemImgBox">
                    <img src="/resources/img/캡처.PNG" alt="itemImg" class="communityPageItemImg">
                </div>
                <div class="communityPageItemMain">
                    <h3 class="communityPageItemNameC">제목</h3>
                    <p class="communityPageText">내용</p>
                </div>
            </div>
	    	<div class="communityPageItem" onclick="location.href='/community/communityItem'">
                <div class="communityPageItemHeader">
                    <p class="communityPageHeaderNick ml20"> 닉네임</p>
                    <p class="communityPageHeaderLevel ml20"> Lv.20</p>
                </div>
                <div class="communityPageItemMainT">
                    <h3 class="communityPageItemNameC">제목</h3>
                    <p class="communityPageTextT">내용</p>
                </div>
                <div class="communityPageItemFooter">
                </div>
            </div>
            <div class="communityPageItem" onclick="location.href='/community/communityItem'">
                <div class="communityPageItemHeader">
                    <p class="communityPageHeaderNick ml20"> 닉네임</p>
                    <p class="communityPageHeaderLevel ml20"> Lv.20</p>
                </div>
                <div class="communityPageItemImgBox">
                    <img src="/resources/img/캡처.PNG" alt="itemImg" class="communityPageItemImg">
                </div>
                <div class="communityPageItemMain">
                    <h3 class="communityPageItemNameC">제목</h3>
                    <p class="communityPageText">내용</p>
                </div>
            </div>
	    	<div class="communityPageItem" onclick="location.href='/community/communityItem'">
                <div class="communityPageItemHeader">
                    <p class="communityPageHeaderNick ml20"> 닉네임</p>
                    <p class="communityPageHeaderLevel ml20"> Lv.20</p>
                </div>
                <div class="communityPageItemMainT">
                    <h3 class="communityPageItemNameC">제목</h3>
                    <p class="communityPageTextT">내용</p>
                </div>
                <div class="communityPageItemFooter">
                </div>
            </div>
            <div class="communityPageItem" onclick="location.href='/community/communityItem'">
                <div class="communityPageItemHeader">
                    <p class="communityPageHeaderNick ml20"> 닉네임</p>
                    <p class="communityPageHeaderLevel ml20"> Lv.20</p>
                </div>
                <div class="communityPageItemImgBox">
                    <img src="/resources/img/캡처.PNG" alt="itemImg" class="communityPageItemImg">
                </div>
                <div class="communityPageItemMain">
                    <h3 class="communityPageItemNameC">제목</h3>
                    <p class="communityPageText">내용</p>
                </div>
            </div>
  	    </div>
    </div>
</body>
</html>