<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	}
	table thead .th_view {
		width: 70px;
		border-radius: 0 10px 0 0;
	}
	table thead th, table tbody td {
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
				<div class="contactPageWriteButton" onclick="location.href='/contact/addContact'">글쓰기</div>
			</div>
            <table cellspacing="0" class="tableBox">
				<thead>
					<tr class="table_top">
						<th class="th_num">번호</th>
						<th class="th_title">제목</th>
						<th class="th_writer">글쓴이</th>
						<th class="th_date">날짜</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="write">
						<tr>
							<td>${write.wNum}</td>
							<td class="contactPageTextitem"><a href="/contact/contactItem/${write.wNum}" class="contactPageFontColor">${write.wTitle }</a></td>
							<td>조형민</td>
							<td class="text-center">${write.wDate }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<ul class="contactPageFooter">
				<!-- 이전페이지 버튼 -->
                <c:if test="${page.prev}">
                    <li class="pageInfo_btn previous"><a href="/contact/${page.startPage-1}">이전</a></li>
                </c:if>
				<c:forEach begin="${page.startPage}" end="${page.endPage}" var="num">
					<li><span><a href='<c:url value="/contact/${num}"/>'>${num}</a></span></li>
				</c:forEach>
				<!-- 다음페이지 버튼 -->
                <c:if test="${page.next}">
                    <li class="pageInfo_btn next"><a href="/contact/${page.endPage + 1 }">다음</a></li>
                </c:if>
			</ul>
        </div>
    </div>
</body>
</html>