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
			<div class="communityPageWriteButton" onclick="location.href='/community/addWrite'">글쓰기</div>
		</div>
	    <div class="communityPageContainer2">
	    	<c:forEach items="${writeList}" var="write">
	    	<c:choose>
	    	<c:when test="${write.writeImageName eq ''}">
	    	<div class="communityPageItem" onclick="location.href='/community/communityItem'">
                <div class="communityPageItemHeader">
                    <p class="communityPageHeaderNick ml20"> 닉네임</p>
                    <p class="communityPageHeaderLevel ml20"> Lv.20</p>
                </div>
                <div class="communityPageItemMainT">
                    <h3 class="communityPageItemNameC">${write.writeTitle}</h3>
                    <p class="communityPageTextT">${write.writeText}</p>
                </div>
                <div class="communityPageItemFooter">
                </div>
            </div>
            </c:when>
            <c:otherwise>
            <div class="communityPageItem" onclick="location.href='/community/communityItem'">
                <div class="communityPageItemHeader">
                    <p class="communityPageHeaderNick ml20"> 닉네임</p>
                    <p class="communityPageHeaderLevel ml20"> Lv.20</p>
                </div>
                <div class="communityPageItemImgBox">
                    <img src="/resources/img/${write.writeImageName}" alt="itemImg" class="communityPageItemImg">
                </div>
                <div class="communityPageItemMain">
                    <h3 class="communityPageItemNameC">${write.writeTitle}</h3>
                    <p class="communityPageText">${write.writeText}</p>
                </div>
            </div>
            </c:otherwise>
            </c:choose>
            </c:forEach>
  	    </div>
    </div>
</body>
</html>