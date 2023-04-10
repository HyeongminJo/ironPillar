<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰작성 · ironPillar</title>
<link href="/resources/css/ironPillar.css" rel="stylesheet">
</head>
<body>
<jsp:include page="menu.jsp"/>
	<div class="writePageContainer">
        <div class="writePageItem">
            <div class="addReviewItemHeader">
            	REVIEW
            </div>
            <form:form modelAttribute="review" action="/myPage/addReview?itemTitle=${itemTitle}&orderDate=${orderDate}" class="writePageForm" enctype="multipart/form-data" method="post">
                <div class="addReviewItemMain">
                	<p>상품명 : ${itemTitle}</p>
                    <div class="writePageItemMaininput writePageFileR">
                        <form:input path="reviewImage" type="file" class="writePageItemMainFile" id="file"/>
                        <label for="file" class="writePageItemMainFileLabel">사진첨부</label>
                    </div>
                    <div class="writePageItemMaininput writePageAddItemInput">
	                    <div class="starBox">
					        <form:radiobutton path="reviewStar" id="star5" name="reviewStar" value="5" checked="checked"/>
					        <label for="star5" class="star">&#9733;</label>
					        <form:radiobutton path="reviewStar" id="star4" name="reviewStar" value="4"/>
					        <label for="star4" class="star">&#9733;</label>
					        <form:radiobutton path="reviewStar" id="star3" name="reviewStar" value="3"/>
					        <label for="star3" class="star">&#9733;</label>
					        <form:radiobutton path="reviewStar" id="star2" name="reviewStar" value="2"/>
					        <label for="star2" class="star">&#9733;</label>
					        <form:radiobutton path="reviewStar" id="star1" name="reviewStar" value="1"/>
					        <label for="star1" class="star">&#9733;</label>
					        <p class="starText">별점</p>
					    </div>
					</div>
                    <form:textarea path="reviewText" class="writePageItemMainText" placeholder="내용"/>
                </div>
                <div class="writePageItemFooter">
                    <div class="writePageItemFooterContainer">
                        <input type="submit" value="등 록" class="writePageItemFooterButton">
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>