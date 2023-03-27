<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ironPillar</title>
    <link href="/resources/css/ironPillar.css" rel="stylesheet">
</head>
<body>
    <jsp:include page="menu.jsp"/>
    <div class="paddingCon">
        <div class="videoSession">
            <div class="container">
                <div class="videoBox">
                    <video src="/resources/img/exam.mp4" muted autoplay loop class="homeVideo">메인비디오</video>
                    <div class="beHappyBox">
                        <img src="/resources/img/beHappy.png" alt="메인영상" class="beHappy">
                    </div>
                </div>
            </div>
        </div>
        <div class="shopSession">
            <div class="sessionNameBox">
                <div class="container sessionNameOn" onclick="location.href='/shop'">
                    <h3 class="sessionName">SHOP</h3>
                </div>
            </div>
            <div class="Ccontainer">
            	<c:forEach items="${rankItemList}" var="item" varStatus="status">
                <div class="CItem" onclick="location.href='/shop/shopItem?itemTitle=${item.itemTitle}'">
                    <div class="CitemHeader">
                        <div class="CheaderImgBox ml20">
                            <img src="/resources/img/logo.png" alt="로고" class="CheaderImg">
                        </div>
                    </div>
                    <div class="CitemImgBox">
                        <img src="/resources/img/${item.itemImageName}" alt="이미지" class="CitemImg">
                    </div>
                    <div class="CitemMain">
                        <h3 class="CitemName">${item.itemTitle}</h3>
                        <p class="CitemText">${item.itemText}</p>
                        <p class="CitemPrice">${item.itemPrice}원</p>
                    </div>
                    <div class="hotSticker">
                    <c:if test="${status.index eq 0}">
                        <img src="/resources/img/1.png" alt="1" class="hotStickerImg">
                    </c:if>
                    <c:if test="${status.index eq 1}">
                        <img src="/resources/img/2.png" alt="2" class="hotStickerImg">
                    </c:if>
                    <c:if test="${status.index eq 2}">
                        <img src="/resources/img/3.png" alt="3" class="hotStickerImg">
                    </c:if>
                    </div>
                </div>
            	</c:forEach>
            </div>
        </div>
        <div class="placeSession">
            <div class="sessionNameBox">
                <div class="container sessionNameOn" onclick="location.href='/place'">
                    <h3 class="sessionName">PLACE</h3>
                </div>
            </div>
            <div class="Ccontainer">
            	<c:forEach items="${rankPlaceList}" var="place" varStatus="status">
                <div class="CItem" onclick="location.href='/place/placeItem?placeTitle=${place.placeTitle}'">
                    <div class="CitemHeader">
                        <div class="CheaderImgBox ml20">
                            <img src="/resources/img/logo.png" alt="로고" class="CheaderImg">
                        </div>
                    </div>
                    <div class="CitemImgBox">
                        <img src="/resources/img/${place.placeImageName}" alt="이미지" class="CitemImg">
                    </div>
                    <div class="CitemMain">
                        <h3 class="CitemName">${place.placeTitle}</h3>
                        <p class="CitemAddress">${place.placeText}</p>
                    </div>
                    <div class="hotSticker">
                    <c:if test="${status.index eq 0}">
                        <img src="/resources/img/1.png" alt="1" class="hotStickerImg">
                    </c:if>
                    <c:if test="${status.index eq 1}">
                        <img src="/resources/img/2.png" alt="2" class="hotStickerImg">
                    </c:if>
                    <c:if test="${status.index eq 2}">
                        <img src="/resources/img/3.png" alt="3" class="hotStickerImg">
                    </c:if>
                    </div>
                </div>
                </c:forEach>
            </div>
        </div>
        <div class="communitySession">
            <div class="sessionNameBox">
                <div class="container sessionNameOn" onclick="location.href='/community'">
                    <h3 class="sessionName">COMMUNITY</h3>
                </div>
            </div>
            <div class="Ccontainer">
            	<c:forEach items="${newCommunityList}" var="community" varStatus="status">
            	<c:choose>
	    		<c:when test="${community.communityImageName eq ''}">
                <div class="CItem" onclick="location.href='/community/communityItem'">
                    <div class="CitemHeader">
                        <p class="CheaderNick ml20">${community.communityWriter}</p>
                        <p class="CheaderLevel ml20">Lv.${community.communityWriterLevel}</p>
                    </div>
                    <div class="CitemMainT">
                        <h3 class="CitemNameC">${community.communityTitle}</h3>
                        <p class="CitemTextT">${community.communityText}</p>
                    </div>
                    <div class="CitemFooter">
                    </div>
                </div>
                </c:when>
            	<c:otherwise>
                <div class="CItem" onclick="location.href='/community/communityItem'">
                    <div class="CitemHeader">
                        <p class="CheaderNick ml20">${community.communityWriter}</p>
                        <p class="CheaderLevel ml20">Lv.${community.communityWriterLevel}</p>
                    </div>
                    <div class="CitemImgBox">
                        <img src="/resources/img/${community.communityImageName}" alt="이미지" class="CitemImg">
                    </div>
                    <div class="CitemMain">
                        <h3 class="CitemNameC">${community.communityTitle}</h3>
                        <p class="CitemAddress">${community.communityText}</p>
                    </div>
                </div>
                </c:otherwise>
            	</c:choose>
                </c:forEach>
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