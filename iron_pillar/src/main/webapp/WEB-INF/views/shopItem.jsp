<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품 · ironPillar</title>
    <style>
    * {
        margin: 0;
        padding: 0;
        text-decoration: none;
    }
     /* menu css */
    body {
           background-color: #F6F6F6;
    }
    .shopItemContainer {
        display: flex;
        justify-content: center;
        margin: 0 auto;
        padding-top: 150px;
    }
    .shopItemMainItem {
        background-color: white;
        border-radius: 30px;
        width: 1000px;
        height: 500px;
        display: flex;
        transition-duration: 400ms;
        box-shadow: 2px 2px 2px 2px #9E9E9E;
        justify-content: space-around;
        align-items: center;
        margin-top: 100px;
    }
    .shopItemReviewImgBox {
        display: flex;
        align-items: center;
    }
    .shopItemReviewImgItem{
        width: 17px;
        height: 17px;
        margin-right: 5px;
    }
    .shopItemProductImgBox {
        /* border: 1px solid red; */
        width: 35%;
        margin: 0 10px;
    }
    .shopItemProductImgItem {
        width: 100%;
    }
    .shopItemProductItemBox {
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        /* border: 1px solid blue; */
        width: 65%;
        margin: 0 10px;
        height: 85%;
    }
    .shopItemProductItemBox1 {
        width: 100%;
    }
    .shopItemProductInBox {
        /* border: 1px solid purple; */
        width: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
        border-bottom: 1px solid gray;
    }
    .shopItemInBoxItem1 {
        width: 80%;
        display: flex;
        justify-content: start;
        flex-direction: column;
        margin-left: 15px;
    }
    .shopItemInBoxFont1 {
        margin-top: 10px;
    }
    .shopItemInBoxFont2 {
        margin: 10px 0 10px 0;
    }
    .shopItemInBoxItem2 {
        width: 20%;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .shopItemInBoxButton {
        border-radius: 5px;
        cursor: pointer;
        height: 40px;
        background-color: white;
        border: 1px solid #2478FF;
        color: #2478FF;
        width: 100px;
        font-size: 15px;
        font-weight: bold;
        margin-right: 15px;
        transition-duration: 300ms;
    }
    .shopItemInBoxButton:hover {
        background-color: #2478FF;
        border-style: solid;
        border: 1px solid #2478FF;
        color: white;
    }
    .shopItemProductMainBox {
        /* border: 5px solid yellow; */
        border-bottom: 1px solid gray;
        height: 55%;
        margin-top: 10px;
        padding: 15px;
    }
    .shopItemP {
        line-height: 30px;
        font-size: 15px;
    }
    .shopItemProductItem {
        width: 100%;
        height: 15%;
        display: flex;
        justify-content: space-around;
        align-items: center;
        /* border: 1px solid red; */
    } 
    .shopItemProductItemItem1 {
        width: 20%;
        height: 40px;
        font-weight: bold;
        text-align: center;
        font-size: 20px;
        border: 1px solid #2478FF;
        border-radius: 5px;
        box-sizing: border-box;
    }
    .shopItemProductItemItem1:active {
        border: 1px solid #2478FF;
    }
    .shopItemProductItemItem2 {
        font-weight: bold;
        font-size: 20px;
        width: 25%;
        height: 40px;
        background-color: white;
        border: 1px solid #2478FF;
        border-radius: 5px;
        color: #2478FF;
        cursor: pointer;
        transition-duration: 300ms;
    }
    .shopItemProductItemItem2:hover {
        background-color: #2478FF;
        color: white;
    }
    .shopItemProductItemItem3 {
        font-weight: bold;
        font-size: 20px;
        width: 25%;
        height: 40px;
        background-color: #2478FF;
        border: 1px solid #2478FF;
        border-radius: 5px;
        color: white;
        cursor: pointer;
        transition-duration: 300ms;
    }
    .shopItemProductItemItem3:hover {
        background-color: white;
        color: #2478FF;
    }
    </style>
</head>
<body>
<jsp:include page="menu.jsp"/>
    <!-- body -->
    <div class="shopItemContainer">
        <div class="shopItemMainItem">
           <div class="shopItemProductImgBox">
                <img src="/resources/img/텐트.jpg" alt="error" class="shopItemProductImgItem">
           </div>
           <div class="shopItemProductItemBox">
                <div class="shopItemProductItemBox1">
                    <div class="shopItemProductInBox">
                        <div class="shopItemInBoxItem1">
                            <h3 class="shopItemInBoxFont1">초 고강도 내구성 휴대용 캠핑 의자</h3>
                            <div class="shopItemInBoxFont2">별점부여</div>
                            <h1 >50000원</h1>
                        </div>
                        <div class="shopItemInBoxItem2">
                            <input type="button" value="찜 하기" class="shopItemInBoxButton">
                        </div>
                    </div>
                </div>
                <div class="shopItemProductMainBox">
                   <p class="shopItemP">이 의자는 철기둥이 좋아하는 휴대용 캠핑 의자로써 굉장히 애정하는 의자이다.
                    이 의자는 철기둥이 좋아하는 휴대용 캠핑 의자로써 굉장히 애정하는 의자이다.
                    이 의자는 철기둥이 좋아하는 휴대용 캠핑 의자로써 굉장히 애정하는 의자이다.
                    이 의자는 철기둥이 좋아하는 휴대용 캠핑 의자로써 굉장히 애정하는 의자이다.
                   </p>
                </div>
                <div class="shopItemProductItem">
                    <h2>수량</h2><input type="number" name="" id="" value="1" min="1" max="100" class="shopItemProductItemItem1">
                    <input type="button" value="장바구니 담기" class="shopItemProductItemItem2">
                    <input type="button" value="바로구매" class="shopItemProductItemItem3">
                </div>
           </div>
        </div>
    </div>
</body>
</html>