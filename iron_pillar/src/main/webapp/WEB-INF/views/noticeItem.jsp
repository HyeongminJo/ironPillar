<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 · ironPillar</title>
<link href="/resources/css/ironPillar.css" rel="stylesheet">
<style>
	.contactPageContainer 
    {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        padding-top: 100px;
    }

    .contactPageTitle {
        height: 150px;
        width: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
        font-weight: bold;
        font-size: 35px;
    }
    .contactWriteItem 
    {
        background-color: white;
        box-sizing: border-box;
        border-radius: 30px;
        width: 800px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        transition-duration: 400ms;
        box-shadow: 5px 5px 5px 5px #9E9E9E;
        padding: 20px 0;
    }
    .contactWriteBox {
        width: 90%;
        height: 100%;
    }
    .contactWriteTitle 
    {
        height: 8%;
        display: flex;
        align-items: end;
        margin: 0 5px 5px 5px;
    }
    .contactWriteTitleItem
    {
        height: 6%;
        display: flex;
        justify-content: start;
        align-items: end;
        margin-bottom: 5px;
    }
    .contactWriteTitleItem h4 {
        margin: 0 5px;
    }
    .contactWriteMainBox
    {
        height: 75%;
        display: flex;
        justify-content: start;
        margin: 20px 0;
        border-bottom: 1px solid gray;
    }
    .contactWriteImgBox
    {
        margin-right: 20px;
    }
    .contactWriteImg 
    {
        width: 350px;
        height: 350px;
    }
    .contactWriteItemButtonBox
    {
        width: 90%;
        height: 40px;
        display: flex;
        justify-content: end;
    }
    .contactWriteItemButton 
    {
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
        margin: 0 5px;
    }
</style>
</head>
<body>
<jsp:include page="menu.jsp"/>
   <div class="contactPageContainer">
        <div class="contactPageTitle">
    		Notice
    	</div>
          <div class="contactWriteItem">
            <div class="contactWriteBox">
                <div class="contactWriteTitle">
                    <h2>${write.wTitle}</h2>
                </div>
                <div class="contactWriteTitleItem">
                    <h4>�ۼ���: </h4>
                    <p>����</p>
                    <h4>��¥: </h4>
                    <p>${write.wDate }</p>
                </div>
                <hr>
                <div class="contactWriteMainBox">
                    <div>
                        <p>
                            ${write.wDescription}
                        </p>
                    </div>
                </div>
            </div>
            <div class="contactWriteItemButtonBox">
                <div class="contactWriteItemButton" onclick="location.href='/notice'">�۸��</div>
            </div>
        </div>
    </div>
</body>
</html>