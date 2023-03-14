<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 · ironPillar</title>
<link href="/resources/css/ironPillar.css" rel="stylesheet">
<style>
    table {
        width: 90%;
        text-align: center;
    }
    .noticePageTableBox {
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