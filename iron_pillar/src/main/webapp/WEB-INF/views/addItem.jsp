<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품 등록 · ironPillar</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            text-decoration: none;
        }
        body {
            background-color: #F6F6F6;
        }
        .addItemContainer {
            width: 40%;
            height: 100vh;
            margin: 0 auto;
            padding-right: 15px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
        .addItem {
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
        .addItem:hover {
            box-shadow: 5px 5px 5px 5px #9E9E9E;
        }
        .addItemInput:focus {
            border: 1px dashed black;
            outline: none;
        }
        .addItemHeader {
            height: 100px;
            width: 100%;
            display: flex;
            align-items: center;
            border-bottom: 1px dashed #9E9E9E;
        }
        .addItemForm {
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }
        .additemMain {
            height: 100%;
            padding: 80px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }
        .addItemMaininput {
            height: 40px;
            background-color: #F6F6F6;
            border: 1px solid #D8D8D8;
            border-radius: 6px;
            padding: 0 20px;
            font-size: 15px;
            display: flex;
            align-items: center;
        }
        .fileR {
            position: relative;
        }
        .addItemMainFileLabel {
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
        .addItemMainFileLabel:hover {
            border: 1px dashed white;
            font-size: 15px;
            font-weight: bold;
            border-radius: 17.5px;
        }
        .addItemMainFile {
            margin: 0 6px;
            cursor: pointer;
        }
        .addItemMainText {
            height: 350px;
            background-color: #F6F6F6;
            border: 1px solid #D8D8D8;
            border-radius: 6px;
            padding: 20px;
            font-size: 15px;
            resize: none;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            text-decoration: none;
        }
        .addItemMainText:focus {
            border: 1px dashed black;
            outline: none;
        }
        .addItemFooter {
            border-top: 1px dashed #9E9E9E;
            height: 100px;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .addItemFooterContainer {
            width: 60%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .addItemFooterButton {
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
        .addItemFooterButton:hover {
            border: 2px dashed white;
            font-size: 15px;
            font-weight: bold;
            border-radius: 17.5px;
        }
    </style>
</head>
<body>
<jsp:include page="menu.jsp"/>
    <div class="addItemContainer">
        <div class="addItem">
            <div class="addItemHeader">
            </div>
            <form class="addItemForm" action="./additem?${_csrf.parameterName}=${_csrf.token}" enctype="multipart/form-data" method="post">
                <div class="addItemMain">
                    <input placeholder="상품명" class="addItemMaininput addItemInput"/>
                    <input placeholder="가격" class="addItemMaininput addItemInput"/>
                    <div class="itemMaininput fileR">
                        <input type="file" class="addItemMainFile" id="file"/>
                        <label for="file" class="addItemMainFileLabel">사진첨부</label>
                    </div>
                    <textarea class="addItemMainText" placeholder="설명"></textarea>
                </div>
                <div class="addItemFooter">
                    <div class="addItemFooterContainer">
                        <input type="submit" value="등 록" class="addItemFooterButton">
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>