<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<%
	String memberNick = (String) session.getAttribute("memberNick");
	String memberPhone = (String) session.getAttribute("memberPhone");
	String memberAddress = (String) session.getAttribute("memberAddress");
	String phone2 = memberPhone.substring(3, 7);
	String phone3 = memberPhone.substring(7, 11);
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지 · ironPillar</title>
    <script>
        function checkForm()
        {
            if(document.newMember.pw.value != document.newMember.pwCheck.value)
            {
                alert("비밀번호를 동일하게 입력해주세요.");
                return false;
            }
            else
            {
            	alert("정보가 수정 저장되었습니다.")
            }
        }
        function selectAll(selectAll)  
        {
            const checkboxes = document.querySelectorAll('input[type="checkbox"]');
            
            checkboxes.forEach((checkbox) => 
            {
                checkbox.checked = selectAll.checked
            })
        }
        function toCart()
    	{
   			alert("장바구니에 추가되었습니다");
    	}
        function order()
        {
        	alert("주문이 완료되었습니다");
        }
    </script>
    <link href="/resources/css/ironPillar.css" rel="stylesheet">
</head>
<body>
<jsp:include page="menu.jsp"/>
    <div class="myPageSessionContainer">
        <div class="myPageSessionHeader">
            MY PAGE
        </div>
        <div class="myPageSessionBox">
            <input type="radio" name="group" id="1" class="myPageInput myPageInput1" checked>
            <input type="radio" name="group" id="2" class="myPageInput myPageInput2">
            <input type="radio" name="group" id="3" class="myPageInput myPageInput3">
            <input type="radio" name="group" id="4" class="myPageInput myPageInput4">
            <input type="radio" name="group" id="5" class="myPageInput myPageInput5">
            <div class="myPageSessionBox1">
                <label for="1" class="myPageSessionItem myPageInputItem1">ORDER LIST</label>
                <label for="2" class="myPageSessionItem myPageInputItem2">REVIEW</label>
                <label for="3" class="myPageSessionItem myPageInputItem3">WISH LIST</label>
                <label for="4" class="myPageSessionItem myPageInputItem4">CART</label>
                <label for="5" class="myPageSessionItem myPageInputItem5">PRIVACY</label>
            </div>
            <div class="myPageSessions myPageOrderSession">
            	<c:forEach items="${orderList}" var="item">
                <div class="myPageSessionBox2">
                    <div class="myPageOrderItem">
                        <div class="myPageOrderItemImgbox">
                            <img class="myPageImgItem" src="resources/img/${item.itemImageName}" alt="오류" onclick="location.href='#'">
                        </div>
                        <div class="myPageOrderItemBoxRight">
                            <div class="myPageOrderInItem1">
                                <div>주문 날짜 : ${item.orderDate}</div>
                                <div class="myPageOrderItem3">
                                    <div class="myPageOrderItemFont1 myPageFontItem1" onclick="location.href='#'">${item.itemTitle}</div>
                                    <div>
                                    <div class="myPageOrderItemFont1 myPageFontItem2" onclick="location.href='#'">${item.itemPrice}원 / 수량 : ${item.orderQuantity} / 합계 = ${item.itemPrice * item.orderQuantity}원</div>
                                    </div>
                                </div>
                            </div>
                            <div class="myPageOrderInItem2">
                                <div class="myPageOrderItemFont2 myPageButtonSize" onclick="location.href='/myPage/addReview?itemTitle=${item.itemTitle}'">리뷰 작성하기</div>
                                <div class="myPageOrderItemFont2 myPageButtonSize" onclick="location.href='#'">교환/반품/환불</div>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
            <div class="myPageSessions myPageReviewSession">
                <div class="myPageSessionBox2">
                    <div class="myPageOrderItem">
                        <div class="myPageReviewItemImgbox">
                            <img class="myPageImgItem" src="resources/img/텐트.jpg" alt="오류" onclick="location.href='#'">
                        </div>
                        <div class="myPageOrderItemBoxRight">
                            <div class="myPageOrderInItem1">
                                <div>2023-03-02</div>
                                <div class="myPageReviewImgBox">
                                    <img src="resources/img/star.png" class="myPageReviewImgItem"><span>4.5</span>
                                </div>
                                <div class="myPageReviewItem3">
                                    <div class="myPageReviewItemFont1 myPageReviewFontItem1" onclick="location.href='#'">4인 가족 대형 텐트</div>
                                    <div class="myPageReviewFontItem2">4인 가족용으로 사용하기에 너무 안성맞춤이여서 좋아요 공간도 넓고, <br>튼튼해서 안심하고 사용합니다 ^^</div>
                                </div>
                            </div>
                            <div class="myPageOrderInItem2">
                                <div class="myPageOrderItemFont2 myPageButtonSize" onclick="location.href='#'">수정하기</div>
                                <div class="myPageOrderItemFont2 myPageButtonSize" onclick="location.href='#'">삭제하기</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="myPageSessions myPageWishSession">
                <div class="myPageWishHeader">
                    <input type="checkbox" name="Allcheck" class="myPageCheckBoxItem1" onclick="selectAll(this)"><b>전체선택</b>
                    <input type="button" value="삭제" class="myPageButtonItem">
                </div>
                <c:forEach items="${wishList}" var="item">
                <div class="myPageSessionBox2 myPageWishBox">
                    <div class="myPageCheckBoxItem">
                        <input type="checkbox" name="P1" class="myPageCheckBoxItem2">                    
                    </div>
                    <div class="myPageWishItem">
                        <div class="myPageOrderItemImgbox">
                            <img class="myPageImgItem" src="resources/img/${item.itemImageName}" alt="오류" onclick="location.href='#'">
                        </div>
                        <div class="myPageOrderItemBoxRight">
                        	<form class="myPageWishItemBox" action="/shop/toCart2">
                            <div class="myPageOrderInItem1">
                                <div class="myPageWishItem3">
                                    <div class="myPageOrderItemFont1 myPageFontItem1">${item.itemTitle}</div>
                                    <div class="myPageFontItem2">${item.itemPrice}원</div>
                                    <div class="myPageQuantityBox">
                                    <p>수량 : </p><input type="number" name="itemQuantity" value="1" min="1" max="100" class="myPageQuantity">
                                    <input type="text" value="${item.itemTitle}" name="itemTitle" class="shopItemHidden">
                                    </div>
                                </div>
                            </div>
                            <div class="myPageOrderInItem2">
                            	<input type="submit" class="myPageWishItemFont2 myPageWishItemInputSize" value="장바구니에 담기" onclick="toCart()">
                                <div class="myPageWishItemFont2 myPageButtonSize" onclick="location.href='#'">삭제하기</div>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
            <div class="myPageSessions myPageCartSession">
                <div class="myPageWishHeader">
                    <input type="checkbox" name="Allcheck" class="myPageCheckBoxItem1" onclick="selectAll(this)"><b>전체선택</b>
                    <input type="button" value="삭제" class="myPageButtonItem">
                </div>
                <c:forEach items="${cart}" var="item">
                <div class="myPageSessionBox2 myPageWishBox">
                    <div class="myPageCheckBoxItem">
                        <input type="checkbox" name="P1" class="myPageCheckBoxItem2">
                    </div>
                    <div class="myPageWishItem">
                        <div class="myPageOrderItemImgbox">
                            <img class="myPageImgItem" src="resources/img/${item.itemImageName}" alt="오류" onclick="location.href='#'">
                        </div>
                        <div class="myPageOrderItemBoxRight">
                        	<form class="myPageWishItemBox" action="/shop/orderItem2">
                            <div class="myPageOrderInItem1">
                                <div class="myPageWishItem3">
                                    <div class="myPageOrderItemFont1 myPageFontItem1" >${item.itemTitle}</div>
                                    <div class="myPageFontItem2">${item.itemPrice}원</div>
                                    <div class="myPageQuantityBox">
                                    <p>수량 : </p><input type="number" name="itemQuantity" value="${item.cartQuantity}" min="1" max="100" class="myPageQuantity">
                                    <input type="text" value="${item.itemTitle}" name="itemTitle" class="shopItemHidden">
                                    </div>
                                </div>
                            </div>
                            <div class="myPageOrderInItem2">
                                <input type="submit" value="바로구매" class="myPageWishItemFont2 myPageWishItemInputSize" onclick="order()">
                                <div class="myPageWishItemFont2 myPageButtonSize" onclick="location.href='#'">삭제하기</div>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
            <div class="myPageSessions myPagePrivacySession">
                <div class="myPagePcontainer">
			        <div class="myPageLoginLeft">
			            <video src="resources/img/exam.mp4" autoplay muted loop class="myPageLoginVideo"></video>
			        </div>
			        <div class="myPageLoginRight">
			            <div class="myPageLoginBox">
			                <div class="myPageLoginBox2">
			                    <div class="myPageLoginBox3">
			                        <div>
			                            <img src="resources/img/logo.png" alt="logo" class="myPageLogo">
			                        </div>
			                        <form name="newMember" action="/login" method="post" onsubmit="return checkForm()">
			                            <input type="password" name="pw" placeholder="새로운 비밀번호" maxlength="15" class="myPageIdBox" required><br>
			                            <input type="password" name="pwCheck" placeholder="새로운 비밀번호확인" maxlength="15" class="myPageIdBox" required><br>
			                            <input type="text" name="nick" value="<%=memberNick%>" maxlength="8"class="myPageIdBox" required><br>
			                            <select name="phone1" class="myPagePhoneBox myPageSelect">
			                                <option value="010">010</option>
			                                <option value="011">011</option>
			                                <option value="012">012</option>
			                                <option value="013">013</option>
			                                <option value="014">014</option>
			                                <option value="015">015</option>
			                                <option value="016">016</option>
			                                <option value="017">017</option>
			                                <option value="018">018</option>
			                                <option value="019">019</option>
			                            </select>
			                             - <input type="text" maxlength="4" size="3" value="<%=phone2%>" class="myPagePhoneBox myPagePB" required>
			                             - <input type="text" maxlength="4" size="3" value="<%=phone3%>" class="myPagePhoneBox myPagePB" required><br>
			                            <input type="text" name="address" value="<%=memberAddress%>" maxlength="60" class="myPagePwBox" required>
			                            <input type="submit" value="저장" class="myPageSubmitButton">
			                        </form>
			                    </div> 
			                </div>
			            </div>
			        </div>
			    </div>
            </div>
        </div>
    </div>
</body>
</html>