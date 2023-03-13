<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장소 등록 · ironPillar</title>
<style>
    * {
        margin: 0;
        padding: 0;
        text-decoration: none;
    }
    body {
        background-color: #F6F6F6;
    }
    .addPlaceContainer {
        width: 40%;
        height: 100vh;
        margin: 0 auto;
        padding-right: 15px;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
    }
    .addPlaceItem {
        background-color: white;
        border-radius: 30px;
        width: 550px;
        height: 900px;
        margin-top: 70px;
        margin-bottom: 20px;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        transition-duration: 400ms;
        box-shadow: 30px 30px 30px 30px #9E9E9E;
    }
    .addPlaceItem:hover {
        box-shadow: 5px 5px 5px 5px #9E9E9E;
    }
    .addPlaceInput:focus {
        border: 1px dashed black;
        outline: none;
    }
    .addPlaceTextarea {
        /* font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; */
        font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        text-decoration: none;
    }
    .addPlaceTextarea:focus {
        border: 1px dashed black;
        outline: none;
    }
    .addPlaceHeader {
        height: 100px;
        width: 100%;
        display: flex;
        align-items: center;
        border-bottom: 1px dashed #9E9E9E;
    }
    .addPlaceForm {
        height: 100%;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
    }
    .addPlaceMain {
        height: 100%;
        padding: 80px;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
    }
    .addPlaceMainInput {
        height: 40px;
        background-color: #F6F6F6;
        border: 1px solid #D8D8D8;
        border-radius: 6px;
        padding: 0 20px;
        font-size: 15px;
        display: flex;
        align-items: center;
    }
    .addPlaceFileR {
        position: relative;
    }
    .addPlaceMainFileLabel {
        width: 80px;
        height: 30px;
        border: 1px solid gray;
        border-radius: 6px;
        position: absolute;
        background-color: black;
        color: white;
        cursor: pointer;
        display: flex;
        justify-content: center;
        align-items: center;
        transition-duration: 400ms;
    }
    .addPlaceMainFileLabel:hover {
        border: 1px dashed white;
        font-size: 15px;
        font-weight: bold;
        border-radius: 17.5px;
    }
    .addPlaceMainFile {
        margin: 0 6px;
        cursor: pointer;
    }
    .addPlaceMainText {
        height: 410px;
        background-color: #F6F6F6;
        border: 1px solid #D8D8D8;
        border-radius: 6px;
        padding: 20px;
        font-size: 15px;
        resize: none;
    }
    .addPlaceFooter {
        border-top: 1px dashed #9E9E9E;
        height: 100px;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .addPlaceFooterContainer {
        width: 60%;
        height: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .addPlaceFooterButton {
        background-color: black;
        color: white;
        width: 150px;
        height: 35px;
        font-size: 15px;
        transition-duration: 300ms;
        border: 1px solid gray;
        border-radius: 5px;
        cursor: pointer;
    }
    .addPlaceFooterButton:hover {
        border: 2px dashed white;
        font-size: 15px;
        font-weight: bold;
        border-radius: 17.5px;
    }
</style>
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