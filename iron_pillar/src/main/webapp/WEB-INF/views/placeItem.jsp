<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>캠핑장 · ironPillar</title>
<style>
    * {
        margin: 0;
        padding: 0;
        text-decoration: none;
        list-style: none;
    }
    body {
        background-color: #F6F6F6;
    }
    /* main css */
    .placeItemContainer {
        display: flex;
        justify-content: center;
        margin: 0 auto;
        padding-top: 150px;
    }
    .placeItemMainItem {
        background-color: white;
        box-shadow: 2px 2px 2px 2px #9E9E9E;
        border-radius: 30px;
        width: 1000px;
        /* height: 800px; */
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        align-items: center;
    }
    .placeItemBox {
        /* border: 1px solid red; */
        display: flex;
        flex-direction: column;
        align-items: center;
        width: 90%;
        margin: 20px 0 10px 0;
    }
    .placeItemImgBox {
        border: 1px solid red;
    }
    .placeItemImg {
        width: 100%;
    }
    .placeItemBox2 {
        display: flex;
        justify-content: center;
        align-items: center;
        width: 100%;
        border: 1px solid black;
        margin-top: 10px;
    }
    .placeItemBox3 {
        width: 28%;
        padding: 0 10px;
        /* border: 1px solid green; */
    }
    .placeItemPbox {
        /* border: 1px solid red; */
        padding: 10px 0;
    }
    .placeItemMainBox {
        /* border: 2px solid yellow; */
        border-left: 1px dashed black;
        padding: 0 10px;
        width: 72%;
        height: 100%;
    }
    .placeItemPpp {
        line-height: 30px;
        font-size: 15px;
    }
    .placeItemB {
        border: 1px solid red;
        margin: 20px 0 10px 0;
    }
</style>
</head>
<body>
<jsp:include page="menu.jsp"/>
    <!-- body -->
    <div class="placeItemContainer">
        <div class="placeItemMainItem">
            <div class="placeItemBox">
                <div class="placeItemImgBox">
                    <img src="/resources/img/캠핑1.png" alt="error" class="placeItemImg">
                </div>
                <div class="placeItemBox2">
                    <div class="placeItemBox3">
                        <div class="placeItemPbox">
                            <h4>대장금 캠핑장</h4>
                            <div>별점부여</div>
                        </div>
                        <div class="box">
                            <h4>경기도 용인시 처인구 백암면 용천리 778-1</h4>
                            <h4>가 격 : 100000 원</h4>
                        </div>
                    </div>
                    <div class="placeItemMainBox">
                        <p class="placeItemPpp">캠핑장 설명 캠핑장 설명 캠핑장 설명 캠핑장 설명 캠핑장 설명 캠핑장 설명 캠핑장 설명 캠핑장 설명 캠핑장 설명 
                    </div>
                </div>
            </div>
            <!-- 지도 -->
            <div class="placeItemB">
                지도api
            </div>
        </div>
    </div>
</body>
</html>