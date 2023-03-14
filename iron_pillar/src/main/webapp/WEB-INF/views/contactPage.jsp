<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>문의하기 · ironPillar</title>
<link href="/resources/css/ironPillar.css" rel="stylesheet">
<style>
    table {
        width: 90%;
        text-align: center;
    }
    .tableBox {
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
    <div class="contactPageContainer">
    	<div class="contactPageTitle">
    		CONTACT US
    	</div>
        <div class="contactPageItem">
	       	<div class="contactPageWriteButtonBox">
				<div class="contactPageWriteButton" onclick="location.href='/item'">글쓰기</div>
			</div>
            <table cellspacing="0" class="tableBox">
                <thead>
                    <tr  class="table_top">
                        <th class="th_num">번호</th>
                        <th class="th_title">제목</th>
                        <th class="th_writer">글쓴이</th>
                        <th class="th_date">날짜</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td class="contactPageTextitem"><a href="#" class="contactPageFontColor">개인 거래 문의</a></td>
                        <td>조형민</td>
                        <td class="text-center">2022.03.14</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td class="contactPageTextitem"><a href="#" class="contactPageFontColor">개인 거래 사기 문의</a></td>
                        <td>조형민</td>
                        <td class="text-center">2022.03.14</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td class="contactPageTextitem"><a href="#" class="contactPageFontColor">김우빈 덕질 과다 고발 문의dddddddddd</a></td>
                        <td>김민재</td>
                        <td class="text-center">2022.03.14</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td class="contactPageTextitem"><a href="#" class="contactPageFontColor">편의점 2개월 먹방 문의</a></td>
                        <td>김동건</td>
                        <td class="text-center">2022.03.14</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td class="contactPageTextitem"><a href="#" class="contactPageFontColor">노래방 2시간 aaaaaaaaaaaaaaaaaaa지옥 문의d</a></td>
                        <td>박성일</td>
                        <td class="text-center">2022.03.14</td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td class="contactPageTextitem"><a href="#" class="contactPageFontColor">개인 거래 문의</a></td>
                        <td>조형민</td>
                        <td class="text-center">2022.03.14</td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td class="contactPageTextitem"><a href="#" class="contactPageFontColor">개인 거래 문의dddddddddddddddddddddd</a></td>
                        <td>조형민</td>
                        <td class="text-center">2022.03.14</td>
                    </tr>
                    <tr>
                        <td>8</td>
                        <td class="contactPageTextitem"><a href="#" class="contactPageFontColor">개인 문의</a></td>
                        <td>조형민</td>
                        <td class="text-center">2022.03.14</td>
                    </tr>
                    <tr>
                        <td>9</td>
                        <td class="contactPageTextitem"><a href="#" class="contactPageFontColor">개인</a></td>
                        <td>조형민</td>
                        <td class="text-center">2022.03.14</td>
                    </tr>
                    <tr>
                        <td>10</td>
                        <td class="contactPageTextitem"><a href="#" class="contactPageFontColor">개인 거래 문의asdfasfasfafasdfasf</a></td>
                        <td>조형민</td>
                        <td class="text-center">2022.03.14</td>
                    </tr>
                </tbody>
            </table>
            <footer class="contactPageFooter">
                <a href="#" class="contactPageFontColor">1</a>
                <a href="#" class="contactPageFontColor">2</a>
                <a href="#" class="contactPageFontColor">3</a>
                <a href="#" class="contactPageFontColor">4</a>
                <a href="#" class="contactPageFontColor">5</a>
            </footer>
        </div>
    </div>
</body>
</html>