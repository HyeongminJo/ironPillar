<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>쇼핑 · ironPillar</title>
    <script src="https://kit.fontawesome.com/9fd6563fdd.js" crossorigin="anonymous"></script>
    <link href="/resources/css/ironPillar.css" rel="stylesheet">
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
<script>
	for(var i = 1; i < itemList.size(); i++)
	{
		var item = itemList[i];
		if(item.itemCategory == '1')
		{
			document.getElementById("")
		}
	}
</script>
</head>
<body>
<jsp:include page="menu.jsp"/>
    <!-- shop페이지 -->
    <div class="shopPageSessionContainer">
        <div class="shopPageSessionHeader">
            SHOP
        </div>
        <div class="shopPageSearch_box">
            <form action="" method="get" class="shopPageSearch_box1">
                <input type="text" name="search_keyword" onfocus="textBoxFocusColor('search_box')"
                    onblur="textBoxBlurColor('search_box')" class="shopPageSearch_box2">
                <input type="submit" value="&#xf002" class="shopPageBtn_submit">
            </form>
        </div>
        <div class="shopPageSessionBox">
            <input type="radio" name="group" id="1" class="shopPageInput shopPageInput1" checked>
            <input type="radio" name="group" id="2" class="shopPageInput shopPageInput2">
            <input type="radio" name="group" id="3" class="shopPageInput shopPageInput3">
            <input type="radio" name="group" id="4" class="shopPageInput shopPageInput4">
            <div class="shopPageSessionBox1">
                <label for="1" class="shopPageSessionItem shopPageInputItem1" onclick="location.href='#'">텐트/침구류</label>
                <label for="2" class="shopPageSessionItem shopPageInputItem2" onclick="location.href='#'">취사도구</label>
                <label for="3" class="shopPageSessionItem shopPageInputItem3" onclick="location.href='#'">랜턴/조명</label>
                <label for="4" class="shopPageSessionItem shopPageInputItem4" onclick="location.href='#'">기타 캠핑용품</label>
            </div>
            <div class="shopPageSessions shopPageSessionOne">
            	<c:forEach items="${itemList}" var="item">
                <div class="shopPageSItem" onclick="location.href='/shop/shopItem'" id="${item.itemCategory}">
                    <div class="shopPageSitemHeader">
                        <div class="shopPageSheaderImgBox ml20">
                            <img src="resources/img/logo.png" alt="로고" class="shopPageSheaderImg">
                        </div>
                    </div>
                    <div class="shopPageSitemImgBox">
                        <img src="resources/img/${item.itemImage}.jpg" alt="itemImg" class="shopPageSitemImg">
                    </div>
                    <div class="shopPageSitemMain">
                        <h3 class="shopPageSitemName">${item.itemTitle}</h3>
                        <p class="shopPageSitemText">${item.itemText}</p>
                        <p class="shopPageSitemPrice">${item.itemPrice}원</p>
                    </div>
                </div>
                </c:forEach>
            </div>
        </div>
    </div>
</body>
</html>