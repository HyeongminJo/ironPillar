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
                		<form:radiobutton class="addPlaceCategory" path="placeCategory" value="one" label="경기도"/>
                		<form:radiobutton class="addPlaceCategory" path="placeCategory" value="two" label="충청도"/>
                		<form:radiobutton class="addPlaceCategory" path="placeCategory" value="three" label="전라도"/><br>
                		<form:radiobutton class="addPlaceCategory" path="placeCategory" value="four" label="경상도"/>
                		<form:radiobutton class="addPlaceCategory" path="placeCategory" value="five" label="강원도"/>
                		<form:radiobutton class="addPlaceCategory" path="placeCategory" value="six" label="제주도"/>
                	</div>
                    <form:input path="placeTitle" placeholder="제목" class="addPlaceMainInput addPlaceInput"/>
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