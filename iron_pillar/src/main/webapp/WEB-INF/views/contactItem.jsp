<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의 · ironPillar</title>
<link href="/resources/css/ironPillar.css" rel="stylesheet">
<style>
.contactPageContainer {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	padding-top: 100px;
}

.contactPageTitle {
	height: 150px;
	width: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	font-weight: bold;
	font-size: 35px;
}

.contactWriteItem {
	background-color: white;
	box-sizing: border-box;
	border-radius: 30px;
	width: 800px;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	transition-duration: 400ms;
	box-shadow: 5px 5px 5px 5px #9E9E9E;
	padding: 20px 0;
}

.contactWriteBox {
	width: 90%;
	height: 100%;
}

.contactWriteTitle {
	height: 8%;
	display: flex;
	align-items: end;
	margin: 0 5px 5px 5px;
}

.contactWriteTitleItem {
	height: 6%;
	display: flex;
	justify-content: start;
	align-items: end;
	margin-bottom: 5px;
}

.contactWriteTitleItem h4 {
	margin: 0 5px;
}

.contactWriteMainBox {
	height: 75%;
	display: flex;
	justify-content: start;
	margin: 20px 0;
	border-bottom: 1px solid gray;
}

.contactWriteImgBox {
	margin-right: 20px;
}

.contactWriteImg {
	width: 350px;
	height: 350px;
}

.contactWriteItemButtonBox {
	width: 90%;
	height: 40px;
	display: flex;
	justify-content: end;
}

.contactWriteItemButton {
	width: 80px;
	height: 25px;
	display: flex;
	justify-content: center;
	align-items: center;
	border: 1px solid black;
	border-radius: 7px;
	transition-duration: 300ms;
	font-weight: bold;
	cursor: pointer;
	margin: 0 5px;
}
/* reply */
.replyContainer {
	display: flex;
	flex-direction: column;
	border: 1px solid #9E9E9E;
	border-radius: 10px;
	padding: 10px;
	height: 100%;
}

.replyTopBox {
	padding: 10px;
}

.replyTop {
	margin-bottom: 15px;
}

.replyMainBox {
	margin-top: 15px;
}

.replyMainItem {
	display: flex;
	margin: 10px 0;
}

.replyMainItem_2 {
	font-size: 15px;
	margin-bottom: 10px;
}

.replyFooterBox {
	margin-top: 15px;
}

.replyFooterIn {
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.replyFooterInItem {
	width: 600px;
	height: 50px;
	padding: 10px;
	resize: none;
	font-size: 15px;
	border-radius: 5px;
}

.replyButton {
	width: 50px;
	height: 70px;
	font-size: 15px;
	transition-duration: 300ms;
	border: 1px solid gray;
	border-radius: 5px;
	cursor: pointer;
	background-color: black;
	color: white;
	margin-left: 10px;
}

.replyButton:hover {
	border: 2px dashed white;
	font-size: 15px;
	font-weight: bold;
	border-radius: 17.5px;
}

.contactWriteItemButton {
	width: 80px;
	height: 25px;
	display: flex;
	justify-content: center;
	align-items: center;
	border: 1px solid black;
	border-radius: 7px;
	transition-duration: 300ms;
	font-weight: bold;
	cursor: pointer;
	margin: 0 5px;
	margin-left: 610px;
}
</style>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="contactPageContainer">
		<div class="contactPageTitle">CONTACT US</div>
		<div class="contactWriteItem">
			<div class="contactWriteBox">
				<div class="contactWriteTitle">
					<h2>${write.wTitle }</h2>
				</div>
				<div class="contactWriteTitleItem">
					<h4>작성자:</h4>
					<p>민재</p>
					<h4>날짜:</h4>
					<p>${write.wDate }</p>
				</div>
				<hr>
				<div class="contactWriteMainBox">
					<c:if test="${not empty write.wImageName}">
						<div class="contactWriteImgBox ">
							<img src="/resources/img/${write.wImageName}" alt="error"
								class="contactWriteImg">
						</div>
					</c:if>
					<div>
						<p>${write.wDescription}</p>
					</div>
				</div>
			</div>
			<!-- 댓글 출력부분 -->
			<div class="replyContainer">
				<div class="replyTopBox">
					<div class="replyTop">댓글목록</div>
					<ul>
						<hr>
						<!-- 댓글 목록 반복문 시작 -->
						<c:forEach var="reply" items="${replyList}">
							<li>
								<div class="replyMainBox">
									<div class="replyMainItem">
										<div>작성자&nbsp;&nbsp;&nbsp;</div>
										<div>${reply.rDate}</div>
									</div>
									<div class="replyMainItem_2">${reply.content}</div>
								</div>
							</li>
							<hr>
						</c:forEach>
						<!-- 댓글 목록 반복문 끝 -->
					</ul>
					<!-- 댓글 입력 부분 -->
					<div class="replyFooterBox">
						<form action="/contact/contactItem/${wNum}/reply"
							method="post">
							<div class="replyFooterIn">
								<div>
									<textarea class="replyFooterInItem" placeholder="댓글내용"
										name="content"></textarea>
								</div>
								<div>
									<input type="submit" value="등록" class="replyButton">
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="contactWriteItemButton" onclick="location.href='/contact'">글목록</div>
			</div>
		</div>
</body>
</html>