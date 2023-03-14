<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기 · ironPillar</title>
<link href="/resources/css/ironPillar.css" rel="stylesheet">
</head>
<body>
<jsp:include page="menu.jsp"/>
    <div class="writePageContainer">
        <div class="writePageItem">
            <div class="writePageItemHeader">
            </div>
            <form action="./additem?${_csrf.parameterName}=${_csrf.token}" class="writePageForm" enctype="multipart/form-data" method="post">
                <div class="writePageItemMain">
                    <input placeholder="제목" class="writePageItemMaininput writePageAddItemInput"/>
                    <div class="writePageItemMaininput writePageFileR">
                        <input type="file" class="writePageItemMainFile" id="file"/>
                        <label for="file" class="writePageItemMainFileLabel">사진첨부</label>
                    </div>
                    <textarea class="writePageItemMainText" placeholder="내용"></textarea>
                </div>
                <div class="writePageItemFooter">
                    <div class="writePageItemFooterContainer">
                        <input type="submit" value="등 록" class="writePageItemFooterButton">
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>