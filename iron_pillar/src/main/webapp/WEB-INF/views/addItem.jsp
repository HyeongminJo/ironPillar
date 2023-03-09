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
        .container {
            width: 40%;
            height: 100vh;
            margin: 0 auto;
            padding-right: 15px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
        .mainItem {
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
        .mainItem:hover {
            box-shadow: 5px 5px 5px 5px #9E9E9E;
        }
        .addItemInput:focus {
            border: 1px dashed black;
            outline: none;
        }
        textarea {
            /* font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; */
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            text-decoration: none;
        }
        textarea:focus {
            border: 1px dashed black;
            outline: none;
        }
        .itemHeader {
            height: 100px;
            width: 100%;
            display: flex;
            align-items: center;
            border-bottom: 1px dashed #9E9E9E;
        }
        form {
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }
        .itemMain {
            height: 100%;
            padding: 80px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }
        .itemMaininput {
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
        .itemMainFileLabel {
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
        .itemMainFileLabel:hover {
            border: 1px dashed white;
            font-size: 15px;
            font-weight: bold;
            border-radius: 17.5px;
        }
        .itemMainFile {
            margin: 0 6px;
            cursor: pointer;
        }
        .itemMainText {
            height: 350px;
            background-color: #F6F6F6;
            border: 1px solid #D8D8D8;
            border-radius: 6px;
            padding: 20px;
            font-size: 15px;
            resize: none;
        }
        .itemFooter {
            border-top: 1px dashed #9E9E9E;
            height: 100px;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .itemFooterContainer {
            width: 60%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .itemFooterButton {
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
        .itemFooterButton:hover {
            border: 2px dashed white;
            font-size: 15px;
            font-weight: bold;
            border-radius: 17.5px;
        }
    </style>
</head>
<body>
<jsp:include page="menu.jsp"/>
    <div class="container">
        <div class="mainItem">
            <div class="itemHeader">
            </div>
            <form action="./additem?${_csrf.parameterName}=${_csrf.token}" enctype="multipart/form-data" method="post">
                <div class="itemMain">
                    <input placeholder="상품명" class="itemMaininput addItemInput"/>
                    <input placeholder="가격" class="itemMaininput addItemInput"/>
                    <div class="itemMaininput fileR">
                        <input type="file" class="itemMainFile" id="file"/>
                        <label for="file" class="itemMainFileLabel">사진첨부</label>
                    </div>
                    <textarea class="itemMainText" placeholder="설명"></textarea>
                </div>
                <div class="itemFooter">
                    <div class="itemFooterContainer">
                        <input type="submit" value="등 록" class="itemFooterButton">
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>