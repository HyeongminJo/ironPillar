<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의하기 · ironPillar</title>
<link href="/resources/css/ironPillar.css" rel="stylesheet">
</head>
<body>
<jsp:include page="menu.jsp"/>
    <div class="writePageContainer">
        <div class="writePageItem">
            <div class="writePageItemHeader">
            	<h1>Contact</h1>
            </div>
            <form:form modelAttribute="write" action="/contact/addContact?${_csrf.parameterName}=${_csrf.token}" class="writePageForm" enctype="multipart/form-data" method="POST">
                <div class="writePageItemMain">
                    <form:input path="wTitle" placeholder="제목" class="writePageItemMaininput writePageAddItemInput"/>
                    <div class="writePageItemMaininput writePageFileR">
                        <form:input path="wImage" type="file" class="writePageItemMainFile" id="file" multiple="multiple"/>
                        <label for="file" class="writePageItemMainFileLabel">사진첨부</label>
                    </div>
                    <form:textarea path="wDescription" class="writePageItemMainText" placeholder="내용" />
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