<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시글 · ironPillar</title>
    <link href="/resources/css/ironPillar.css" rel="stylesheet">
</head>
<body>
<jsp:include page="menu.jsp"/>
    <div class="communityItemContainer">
    	<c:choose>
    	<c:when test="${community.communityImageName eq ''}">
        <div class="communityItem">
            <div class="communityItemTitle">
                ${community.communityTitle}
            </div>
            <div class="communityItemWriterBox">
            	<p class="communityItemWriter">Lv.${community.communityWriterLevel} ${community.communityWriter}</p>
            	<p>${community.communityDate}</p>
            </div>
            <div class="communityItemText">
                ${community.communityText}
            </div>
        </div>
        </c:when>
        <c:otherwise>
        	<div class="communityItem">
            <div class="communityItemImgBox">
                <img src="/resources/img/${community.communityImageName}" alt="error" class="communityItemImg">
            </div>
            <div class="communityItemTitle">
                ${community.communityTitle}
            </div>
            <div class="communityItemWriterBox">
            	<p class="communityItemWriter">Lv.${community.communityWriterLevel} ${community.communityWriter}</p>
            	<p>${community.communityDate}</p>
            </div>
            <div class="communityItemText">
                ${community.communityText}
            </div>
        </div>	
        </c:otherwise>
        </c:choose>
    </div>
</body>
</html>