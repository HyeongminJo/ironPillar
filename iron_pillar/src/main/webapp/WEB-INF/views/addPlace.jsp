<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <form class="addPlaceForm" action="./additem?${_csrf.parameterName}=${_csrf.token}" enctype="multipart/form-data" method="post">
                <div class="addPlaceMain">
                    <input placeholder="제목" class="addPlaceMainInput addPlaceInput"/>
                    <div class="addPlaceMainInput addPlaceFileR">
                        <input type="file" class="addPlaceMainFile" id="file"/>
                        <label for="file" class="addPlaceMainFileLabel">사진첨부</label>
                    </div>
                    <textarea class="addPlaceMainText addPlaceTextarea" placeholder="설명"></textarea>
                </div>
                <div class="addPlaceFooter">
                    <div class="addPlaceFooterContainer">
                        <input type="submit" value="등 록" class="addPlaceFooterButton">
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>