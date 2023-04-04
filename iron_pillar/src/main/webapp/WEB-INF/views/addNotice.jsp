<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 · ironPillar</title>
<link href="/resources/css/ironPillar.css" rel="stylesheet">
</head>
<body>
<jsp:include page="menu.jsp"/>
    <div class="writePageContainer">
        <div class="writePageItem">
            <div class="writePageItemHeader">
            	<h1>Notice</h1>
            </div>
            <form:form modelAttribute="write" action="/notice/addNotice?${_csrf.parameterName}=${_csrf.token}" class="writePageForm" method="post">
                <div class="NwritePageItemMain">
                    <form:input path="wTitle" placeholder="제목" class="writePageItemMaininput writePageAddItemInput"/>
                    <form:textarea path="wDescription" class="NwritePageItemMainText" placeholder="내용" />
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