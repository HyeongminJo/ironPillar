<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장소 등록 · ironPillar</title>
<link href="/resources/css/ironPillar.css" rel="stylesheet">
</head>
<body>
<jsp:include page="menu.jsp"/>
    <div class="addPlaceContainer">
        <div class="addPlaceItem">
            <div class="addPlaceHeader">
            </div>
            <form:form modelAttribute="place" class="addPlaceForm" action="/admin/addPlace?${_csrf.parameterName}=${_csrf.token}" enctype="multipart/form-data" method="post">
                <div class="addPlaceMain">
                	<div class="addPlaceCategoryBox">
                		<form:radiobutton class="addPlaceCategory" id="1" path="placeCategory" value="one"/>
                		<label for="1" class="addPlaceCategory">경기도</label>
                		<form:radiobutton class="addPlaceCategory" id="2" path="placeCategory" value="two"/>
                		<label for="2" class="addPlaceCategory">충청도</label>
                		<form:radiobutton class="addPlaceCategory" id="3" path="placeCategory" value="three"/>
                		<label for="3" class="addPlaceCategory">전라도</label>
                		<form:radiobutton class="addPlaceCategory" id="4" path="placeCategory" value="four"/>
                		<label for="4" class="addPlaceCategory">경상도</label>
                		<form:radiobutton class="addPlaceCategory" id="5" path="placeCategory" value="five"/>
                		<label for="5" class="addPlaceCategory">강원도</label>
                		<form:radiobutton class="addPlaceCategory" id="6" path="placeCategory" value="six"/>
                		<label for="6" class="addPlaceCategory">제주도</label>
                	</div>
                    <form:input path="placeTitle" placeholder="캠핑장이름" class="addPlaceMainInput addPlaceInput"/>
                    <form:input path="placeAddress" placeholder="주소" class="addPlaceMainInput addPlaceInput"/>
                    <form:input path="placePrice" placeholder="가격" class="addPlaceMainInput addPlaceInput"/>
                    <div class="addPlaceMainInput addPlaceFileR">
                        <form:input path="placeImage" type="file" class="addPlaceMainFile" id="file"/>
                        <label for="file" class="addPlaceMainFileLabel">사진첨부</label>
                    </div>
                    <form:textarea path="placeText" class="addPlaceMainText addPlaceTextarea" placeholder="설명"/>
                </div>
                <div class="addPlaceFooter">
                    <div class="addPlaceFooterContainer">
                        <input type="submit" value="등 록" class="addPlaceFooterButton">
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>