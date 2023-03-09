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
    	.communityCon
    	{
    		border: 1px solid red;
    		width: 100%;
    		display: flex;
    		flex-direction: column;
    		justify-content: center;
    		align-items: center;
    		padding-top: 100px;
    		
    	}
    	.title {
    		height: 150px;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            font-weight: bold;
            font-size: 35px;
    	}
    	.writeButtonBox {
    		width: 70%;
    		height: 60px;
    		display: flex;
    		justify-content: end;
    	}
    	.writeButton {
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
    	.writeButton:hover {
    		background-color: black;
    		color: white;
    		border: 1px dashed white;
    		border-radius: 15px;
    	}
        .container2 {
        	width: 70%;
            margin: 0 auto;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }
        .CItem {
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
    </style>
</head>
<body>
<jsp:include page="menu.jsp"/>
	<div class="communityCon">
		<div class="title">
			COMMUNITY
		</div>
		<div class="writeButtonBox">
			<div class="writeButton" onclick="location.href='/item'">글쓰기</div>
		</div>
	    <div class="container2">
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
                <div class="CitemImgBox">
                    <img src="/esources/img/캡처.PNG" alt="itemImg" class="CitemImg">
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
</body>
</html>