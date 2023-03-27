<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>캠핑장 · ironPillar</title>
<link href="/resources/css/ironPillar.css" rel="stylesheet">
</head>
<body>
<jsp:include page="menu.jsp"/>
    <!-- body -->
    <div class="placeItemContainer">
        <div class="placeItemMainItem">
            <div class="placeItemBox">
                <div class="placeItemImgBox">
                    <img src="/resources/img/${place.placeImageName}" alt="error" class="placeItemImg">
                </div>
                <div class="placeItemBox2">
                    <div class="placeItemBox3">
                        <div class="placeItemPbox">
                            <h4>${place.placeTitle}</h4>
                            <div>별점부여</div>
                        </div>
                        <div class="box">
                            <h4>${place.placeAddress}</h4>
                            <h4>가 격 : ${place.placePrice}원</h4>
                        </div>
                    </div>
                    <div class="placeItemMainBox">
                        <p class="placeItemPpp">${place.placeText}</p> 
                    </div>
                </div>
            </div>
            <!-- 지도 -->
            <div class="placeItemB">
                지도api
            </div>
        </div>
    </div>
</body>
</html>