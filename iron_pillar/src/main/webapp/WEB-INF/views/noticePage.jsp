<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 · ironPillar</title>
<style>
    * {
        margin: 0;
        padding: 0;
        text-decoration: none;
    }
    body {
        background-color: #F6F6F6;
    }
    .noticePageCcontainer {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        padding-top: 100px;
    }
    .noticePageTitle {
   		height: 150px;
        width: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
        font-weight: bold;
        font-size: 35px;
   	}
    .noticePageMainItem {
        background-image: url(img/My\ project-1\ \(1\).png);
        background-position: center center;
        background-size: cover;
        box-sizing: border-box;
        border-radius: 30px;
        width: 1200px;
        height: 700px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        transition-duration: 400ms;
        box-shadow: 5px 5px 5px 5px #9E9E9E;
        padding-top: 20px;
    }
    .noticePageImgBox {
        width: 80%;
        height: 200px;
        overflow: hidden;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .noticePageImgitem {
        width: 450px;
        height: 150px;
    }
    table {
        width: 90%;
        text-align: center;
    }
    tableBox {
        border-bottom: 1px solid black;
    }
    table th{
        background-color: black;
        color: white;
    }
    table td{
        border-top: 1px solid black;
    }      
    table thead .th_num {
        width: 70px;
        border-radius: 10px 0 0 0;
    }
    table thead .th_title {
        width: 400px;
    }
    table thead .th_writer {
        width: 100px;
    }
    table thead .th_date {
        width: 120px;
        border-radius: 0 10px 0 0;
    }
    table thead th ,table tbody td{
        padding: 12px 0;
    }
    .noticePageFooter {
        margin-top: 35px;
        display: flex;
        justify-content: center;
    }
    .noticePageFooter a {
        margin: 0 10px;
        padding: 0 10px;
        font-size: 16px;
    }
    .noticePageTextitem {
        text-align: left;
        padding-left: 15px;
    }
    .noticePagefontColor {
    	color: black;
    }
</style>
</head>
<body>
<jsp:include page="menu.jsp"/>
    <div class="noticePageCcontainer">
    	<div class="noticePageTitle">
    		NOTICE
    	</div>
        <div class="noticePageMainItem">
            <table cellspacing="0" class="noticePageTable noticePageTableBox">
                <thead>
                    <tr  class="table_top">
                        <th class="th_num noticePageTh">번호</th>
                        <th class="th_title noticePageTh">제목</th>
                        <th class="th_writer noticePageTh">글쓴이</th>
                        <th class="th_date noticePageTh">날짜</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="noticePageTd">1</td>
                        <td class="noticePageTextitem noticePageTd"><a href="#" class="noticePagefontColor">공지</a></td>
                        <td class="noticePageTd">관리자</td>
                        <td class="text-center noticePageTd">2022.03.14</td>
                    </tr>
                    <tr>
                        <td class="noticePageTd">2</td>
                        <td class="noticePageTextitem noticePageTd"><a href="#" class="noticePagefontColor">공지</a></td>
                        <td class="noticePageTd">관리자</td>
                        <td class="text-center noticePageTd">2022.03.14</td>
                    </tr>
                    <tr>
                        <td class="noticePageTd">3</td>
                        <td class="noticePageTextitem noticePageTd"><a href="#" class="noticePagefontColor">공지</a></td>
                        <td class="noticePageTd">관리자</td>
                        <td class="text-center noticePageTd">2022.03.14</td>
                    </tr>
                    <tr>
                        <td class="noticePageTd">4</td>
                        <td class="noticePageTextitem noticePageTd"><a href="#" class="noticePagefontColor">공지</a></td>
                        <td class="noticePageTd">관리자</td>
                        <td class="text-center noticePageTd">2022.03.14</td>
                    </tr>
                    <tr>
                        <td class="noticePageTd">5</td>
                        <td class="noticePageTextitem noticePageTd"><a href="#" class="noticePagefontColor">공지</a></td>
                        <td class="noticePageTd">관리자</td>
                        <td class="text-center noticePageTd">2022.03.14</td>
                    </tr>
                    <tr>
                        <td class="noticePageTd">6</td>
                        <td class="noticePageTextitem noticePageTd"><a href="#" class="noticePagefontColor">공지</a></td>
                        <td class="noticePageTd">관리자</td>
                        <td class="text-center noticePageTd">2022.03.14</td>
                    </tr>
                    <tr>
                        <td class="noticePageTd">7</td>
                        <td class="noticePageTextitem noticePageTd"><a href="#" class="noticePagefontColor">공지</a></td>
                        <td class="noticePageTd">관리자</td>
                        <td class="text-center noticePageTd">2022.03.14</td>
                    </tr>
                    <tr>
                        <td class="noticePageTd">8</td>
                        <td class="noticePageTextitem noticePageTd"><a href="#" class="noticePagefontColor">공지</a></td>
                        <td class="noticePageTd">관리자</td>
                        <td class="text-center noticePageTd">2022.03.14</td>
                    </tr>
                    <tr>
                        <td class="noticePageTd">9</td>
                        <td class="noticePageTextitem noticePageTd"><a href="#" class="noticePagefontColor">공지</a></td>
                        <td class="noticePageTd">관리자</td>
                        <td class="text-center noticePageTd">2022.03.14</td>
                    </tr>
                    <tr>
                        <td class="noticePageTd">10</td>
                        <td class="noticePageTextitem noticePageTd"><a href="#" class="noticePagefontColor">공지</a></td>
                        <td class="noticePageTd">관리자</td>
                        <td class="text-center noticePageTd">2022.03.14</td>
                    </tr>
                </tbody>
            </table>
            <footer class="noticePageFooter">
                <a href="#" class="noticePagefontColor">1</a>
                <a href="#" class="noticePagefontColor">2</a>
                <a href="#" class="noticePagefontColor">3</a>
                <a href="#" class="noticePagefontColor">4</a>
                <a href="#" class="noticePagefontColor">5</a>
            </footer>
        </div>
    </div>
</body>
</html>