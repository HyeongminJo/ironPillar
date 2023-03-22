<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품 등록 · ironPillar</title>
    <link href="/resources/css/ironPillar.css" rel="stylesheet">
</head>
<body>
<jsp:include page="menu.jsp"/>
    <div class="addItemContainer">
        <div class="addItem">
            <div class="addItemHeader">
            </div>
            <form:form modelAttribute="item" class="addItemForm" action="/admin/addItem?${_csrf.parameterName}=${_csrf.token}" enctype="multipart/form-data" method="POST">
                <div class="addItemMain">
	                <div class="addItemCategoryBox">
	                	<form:radiobutton class="addItemCategory" path="itemCategory" value="one" label="텐트/침구류"/>
		            	<form:radiobutton class="addItemCategory" path="itemCategory" value="two" label="취사도구"/>
		            	<form:radiobutton class="addItemCategory" path="itemCategory" value="three" label="랜턴/조명"/>
		            	<form:radiobutton class="addItemCategory" path="itemCategory" value="four" label="기타"/>
		            </div>
                    <form:input path="itemTitle" placeholder="상품명" class="addItemMaininput addItemInput"/>
                    <form:input path="itemPrice" placeholder="가격" class="addItemMaininput addItemInput"/>
                    <div class="addItemMaininput addItemFileR">
                        <form:input path="itemImage" type="file" class="addItemMainFile" id="file"/>
                        <label for="file" class="addItemMainFileLabel">사진첨부</label>
                    </div>
                    <form:textarea path="itemText" class="addItemMainText" placeholder="설명"/>
                </div>
                <div class="addItemFooter">
                    <div class="addItemFooterContainer">
                        <input type="submit" value="등 록" class="addItemFooterButton">
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>