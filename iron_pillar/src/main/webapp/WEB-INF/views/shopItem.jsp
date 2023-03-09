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
    .Icontainer {
        display: flex;
        justify-content: center;
        margin: 0 auto;
        padding-top: 150px;
    }
    .ImainItem {
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
    body {
        background-color: #F6F6F6;
    }
    .ReviewImgBox {
        display: flex;
        align-items: center;
    }
    .ReviewImgItem{
        width: 17px;
        height: 17px;
        margin-right: 5px;
    }
    .productImgBox {
        /* border: 1px solid red; */
        width: 35%;
        margin: 0 10px;
    }
    .productImgItem {
        width: 100%;
    }
    .productItemBox {
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        /* border: 1px solid blue; */
        width: 65%;
        margin: 0 10px;
        height: 85%;
    }
    .productItemBox1 {
        width: 100%;
    }
    .productInBox {
        /* border: 1px solid purple; */
        width: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
        border-bottom: 1px solid gray;
    }
    .InBoxItem1 {
        width: 80%;
        display: flex;
        justify-content: start;
        flex-direction: column;
        margin-left: 15px;
    }
    .InBoxFont1 {
        margin-top: 10px;
    }
    .InBoxFont2 {
        margin: 10px 0 10px 0;
    }
    .InBoxItem2 {
        width: 20%;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .InBoxButton {
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
    .InBoxButton:hover {
        background-color: #2478FF;
        border-style: solid;
        border: 1px solid #2478FF;
        color: white;
    }
    .productMainBox {
        /* border: 5px solid yellow; */
        border-bottom: 1px solid gray;
        height: 55%;
        margin-top: 10px;
        padding: 15px;
    }
    p {
        line-height: 30px;
        font-size: 15px;
    }
    .productItem {
        width: 100%;
        height: 15%;
        display: flex;
        justify-content: space-around;
        align-items: center;
        /* border: 1px solid red; */
    } 
    .productItemItem1 {
        width: 20%;
        height: 40px;
        font-weight: bold;
        text-align: center;
        font-size: 20px;
        border: 1px solid #2478FF;
        border-radius: 5px;
        box-sizing: border-box;
    }
    .productItemItem1:active {
        border: 1px solid #2478FF;
    }
    .productItemItem2 {
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
    .productItemItem2:hover {
        background-color: #2478FF;
        color: white;
    }
    .productItemItem3 {
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
    .productItemItem3:hover {
        background-color: white;
        color: #2478FF;
    }
    </style>
</head>
<body>
<jsp:include page="menu.jsp"/>
    <!-- body -->
    <div class="Icontainer">
        <div class="ImainItem">
           <div class="productImgBox">
                <img src="/resources/img/텐트.jpg" alt="error" class="productImgItem">
           </div>
           <div class="productItemBox">
                <div class="productItemBox1">
                    <div class="productInBox">
                        <div class="InBoxItem1">
                            <h3 class="InBoxFont1">초 고강도 내구성 휴대용 캠핑 의자</h3>
                            <div class="InBoxFont2">별점부여</div>
                            <h1 >50000원</h1>
                        </div>
                        <div class="InBoxItem2">
                            <input type="button" value="찜 하기" class="InBoxButton">
                        </div>
                    </div>
                </div>
                <div class="productMainBox">
                   <p>이 의자는 철기둥이 좋아하는 휴대용 캠핑 의자로써 굉장히 애정하는 의자이다.
                    이 의자는 철기둥이 좋아하는 휴대용 캠핑 의자로써 굉장히 애정하는 의자이다.
                    이 의자는 철기둥이 좋아하는 휴대용 캠핑 의자로써 굉장히 애정하는 의자이다.
                    이 의자는 철기둥이 좋아하는 휴대용 캠핑 의자로써 굉장히 애정하는 의자이다.
                   </p>
                </div>
                <div class="productItem">
                    <h2>수량</h2><input type="number" name="" id="" value="1" min="1" max="100" class="productItemItem1">
                    <input type="button" value="장바구니 담기" class="productItemItem2">
                    <input type="button" value="바로구매" class="productItemItem3">
                </div>
           </div>
        </div>
    </div>
</body>
</html>