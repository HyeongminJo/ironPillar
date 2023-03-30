<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품 · ironPillar</title>
    <link href="/resources/css/ironPillar.css" rel="stylesheet">
    <script>
    	function itemLove()
    	{
    		if(${sessionScope.memberId == null})
    		{
    			alert("로그인 후 이용해주세요");
    			location.href="/login";
    		}
    		else
    		{
    			alert("찜목록에 추가되었습니다");
    			location.href="/shop/itemLove?loveItemTitle=${item.itemTitle}";
   			}
    	}
    	function toCart()
    	{
    		if(${sessionScope.memberId == null})
    		{
    			alert("로그인 후 이용해주세요");
    			location.href="/login";
    		}
    		else
    		{
    			const quantity = document.getElementById('quantity');
      	        const data = quantity.value;
      	        alert("장바구니에 " + data + "개 추가되었습니다");
      	        location.href = "/shop/toCart?itemTitle=${item.itemTitle}&quantity="+data;
    		}
    	}
    	function order()
    	{
    		if(${sessionScope.memberId == null})
    		{
    			alert("로그인 후 이용해주세요");
    			location.href="/login";
    		}
    		else
    		{
    			const quantity = document.getElementById('quantity');
      	        const data = quantity.value;
    			alert(data + "개 주문이 완료되었습니다");
    			location.href = "/shop/orderItem?itemTitle=${item.itemTitle}&quantity="+data;
    		}
    	}
    </script>
</head>
<body>
<jsp:include page="menu.jsp"/>
    <div class="shopItemContainer">
        <div class="shopItemMainItem">
           <div class="shopItemProductImgBox">
                <img src="/resources/img/${item.itemImageName}" alt="error" class="shopItemProductImgItem">
           </div>
           <div class="shopItemProductItemBox">
                <div class="shopItemProductItemBox1">
                    <div class="shopItemProductInBox">
                        <div class="shopItemInBoxItem1">
                            <h3 class="shopItemInBoxFont1">${item.itemTitle}</h3>
                            <div class="shopItemInBoxFont2">별점부여</div>
                            <h1>${item.itemPrice}원</h1>
                        </div>
                        <div class="shopItemInBoxItem2">
                            <input type="button" value="찜 하기" class="shopItemInBoxButton" onclick="itemLove()">
                        </div>
                    </div>
                </div>
                <div class="shopItemProductMainBox">
                   <p class="shopItemP">${item.itemText}</p>
                </div>
                <div class="shopItemProductItem">
                    <h2>수량</h2><input type="number" name="" id="quantity" value="1" min="1" max="100" class="shopItemProductItemItem1"/>
                    <input type="button" value="장바구니 담기" class="shopItemProductItemItem2" id="toCart" onclick="toCart()">
                    <input type="button" value="바로구매" class="shopItemProductItemItem3" onclick="order()">
                </div>
           </div>
        </div>
    </div>
</body>
</html>