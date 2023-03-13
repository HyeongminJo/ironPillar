<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시글 · ironPillar</title>
    <style>
    * {
        margin: 0;
        padding: 0;
        text-decoration: none;
    }
    body {
        background-color: #F6F6F6;
    }
    .communityItemContainer {
        width: 70%;
        margin: 0 auto;
        padding-top: 150px;
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    .communityItem {
        background-color: white;
        border-radius: 30px;
        width: 800px;
        min-height: 900px;
        display: flex;
        flex-direction: column;
        transition-duration: 400ms;
        box-shadow: 10px 10px 10px 10px #9E9E9E;
        justify-content: space-around;
        align-items: center;
        padding: 50px;
        box-sizing: border-box;
    }
    .communityItemImgBox {
        width: 700px;
        height: 500px;
    }
    .communityItemImg {
        width: 100%;
        height: 100%;
    }
    .communityItemTitle {
        width: 700px;
        height: 70px;
        font-size: 25px;
        display: flex;
        align-items: center;
        border-bottom: 1px dashed black;
    }
    .communityItemText {
        width: 700px;
        min-height: 200px;
        display: flex;
        align-items: center;
    }
    </style>
</head>
<body>
    <div class="communityItemContainer">
        <div class="communityItem">
            <div class="communityItemImgBox">
                <img src="/resources/img/텐트.jpg" alt="error" class="communityItemImg">
            </div>
            <div class="communityItemTitle">
                제목
            </div>
            <div class="communityItemText">
                내용
            </div>
        </div>
    </div>
</body>
</html>