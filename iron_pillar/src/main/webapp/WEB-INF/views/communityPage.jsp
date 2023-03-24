<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>커뮤니티 · ironPillar</title>
    <link href="/resources/css/ironPillar.css" rel="stylesheet">
</head>
<body>
<jsp:include page="menu.jsp"/>
	<div class="communityPageContainer">
		<div class="communityPageTitle">
			COMMUNITY
		</div>
		<div class="communityPageWriteButtonBox">
			<div class="communityPageWriteButton" onclick="location.href='/community/addCommunity'">글쓰기</div>
		</div>
	    <div class="communityPageContainer2">
	    	<c:forEach items="${communityList}" var="community">
	    	<c:choose>
	    	<c:when test="${community.communityImageName eq ''}">
	    	<div class="communityPageItem" onclick="location.href='/community/communityItem'">
                <div class="communityPageItemHeader">
                    <p class="communityPageHeaderNick ml20">${community.communityWriter}</p>
                    <p class="communityPageHeaderLevel ml20"> Lv.${community.communityWriterLevel}</p>
                </div>
                <div class="communityPageItemMainT">
                    <h3 class="communityPageItemNameC">${community.communityTitle}</h3>
                    <p class="communityPageTextT">${community.communityText}</p>
                </div>
                <div class="communityPageItemFooter">
                </div>
            </div>
            </c:when>
            <c:otherwise>
            <div class="communityPageItem" onclick="location.href='/community/communityItem'">
                <div class="communityPageItemHeader">
                    <p class="communityPageHeaderNick ml20">${community.communityWriter}</p>
                    <p class="communityPageHeaderLevel ml20"> Lv.${community.communityWriterLevel}</p>
                </div>
                <div class="communityPageItemImgBox">
                    <img src="/resources/img/${community.communityImageName}" alt="itemImg" class="communityPageItemImg">
                </div>
                <div class="communityPageItemMain">
                    <h3 class="communityPageItemNameC">${community.communityTitle}</h3>
                    <p class="communityPageText">${community.communityText}</p>
                </div>
            </div>
            </c:otherwise>
            </c:choose>
            </c:forEach>
  	    </div>
    </div>
</body>
</html>