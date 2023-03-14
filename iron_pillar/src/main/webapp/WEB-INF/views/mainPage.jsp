<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ironPillar</title>
    <link href="/resources/css/ironPillar.css" rel="stylesheet">
</head>
<body>
    <jsp:include page="menu.jsp"/>
    <div class="paddingCon">
        <div class="videoSession">
            <div class="container">
                <div class="videoBox">
                    <video src="/resources/img/exam.mp4" muted autoplay loop class="homeVideo">왜 안됨</video>
                    <div class="beHappyBox">
                        <img src="/resources/img/beHappy.png" alt="메인영상" class="beHappy">
                    </div>
                </div>
            </div>
        </div>
        <div class="shopSession">
            <div class="sessionNameBox">
                <div class="container sessionNameOn" onclick="location.href='/shop'">
                    <h3 class="sessionName">HOT ITEM</h3>
                </div>
            </div>
            <div class="Ccontainer">
                <div class="CItem" onclick="location.href='/shop/shopItem'">
                    <div class="CitemHeader">
                        <div class="CheaderImgBox ml20">
                            <img src="/resources/img/logo.png" alt="로고" class="CheaderImg">
                        </div>
                    </div>
                    <div class="CitemImgBox">
                        <img src="/resources/img/의자.png" alt="이미지" class="CitemImg">
                    </div>
                    <div class="CitemMain">
                        <h3 class="CitemName">상품명</h3>
                        <p class="CitemText">내용</p>
                        <p class="CitemPrice">가격</p>
                    </div>
                    <div class="hotSticker">
                        <img src="/resources/img/1.png" alt="1" class="hotStickerImg">
                    </div>
                </div>
                <div class="CItem" onclick="location.href='/shop/shopItem'">
                    <div class="CitemHeader">
                        <div class="CheaderImgBox ml20">
                            <img src="/resources/img/logo.png" alt="로고" class="CheaderImg">
                        </div>
                    </div>
                    <div class="CitemImgBox">
                        <img src="/resources/img/랜턴.png" alt="이미지" class="CitemImg">
                    </div>
                    <div class="CitemMain">
                        <h3 class="CitemName">상품명</h3>
                        <p class="CitemText">내용</p>
                        <p class="CitemPrice">가격</p>
                    </div>
                    <div class="hotSticker">
                        <img src="/resources/img/2.png" alt="2" class="hotStickerImg">
                    </div>
                </div>
                <div class="CItem" onclick="location.href='/shop/shopItem'">
                    <div class="CitemHeader">
                        <div class="CheaderImgBox ml20">
                            <img src="/resources/img/logo.png" alt="로고" class="CheaderImg">
                        </div>
                    </div>
                    <div class="CitemImgBox">
                        <img src="/resources/img/버너.png" alt="이미지" class="CitemImg">
                    </div>
                    <div class="CitemMain">
                        <h3 class="CitemName">상품명</h3>
                        <p class="CitemText">내용</p>
                        <p class="CitemPrice">가격</p>
                    </div>
                    <div class="hotSticker">
                        <img src="/resources/img/3.png" alt="3" class="hotStickerImg">
                    </div>
                </div>
            </div>
        </div>
        <div class="placeSession">
            <div class="sessionNameBox">
                <div class="container sessionNameOn" onclick="location.href='/place'">
                    <h3 class="sessionName">HOT PLACE</h3>
                </div>
            </div>
            <div class="Ccontainer">
                <div class="CItem" onclick="location.href='/place/placeItem'">
                    <div class="CitemHeader">
                        <div class="CheaderImgBox ml20">
                            <img src="/resources/img/logo.png" alt="로고" class="CheaderImg">
                        </div>
                    </div>
                    <div class="CitemImgBox">
                        <img src="/resources/img/캠핑1.png" alt="이미지" class="CitemImg">
                    </div>
                    <div class="CitemMain">
                        <h3 class="CitemName">캠핑장</h3>
                        <p class="CitemAddress">마산</p>
                    </div>
                    <div class="hotSticker">
                        <img src="/resources/img/1.png" alt="1" class="hotStickerImg">
                    </div>
                </div>
                <div class="CItem" onclick="location.href='/place/placeItem'">
                    <div class="CitemHeader">
                        <div class="CheaderImgBox ml20">
                            <img src="/resources/img/logo.png" alt="로고" class="CheaderImg">
                        </div>
                    </div>
                    <div class="CitemImgBox">
                        <img src="/resources/img/캠핑2.jpg" alt="이미지" class="CitemImg">
                    </div>
                    <div class="CitemMain">
                        <h3 class="CitemName">캠핑장</h3>
                        <p class="CitemAddress">창원</p>
                    </div>
                    <div class="hotSticker">
                        <img src="/resources/img/2.png" alt="2" class="hotStickerImg">
                    </div>
                </div>
                <div class="CItem" onclick="location.href='/place/placeItem'">
                    <div class="CitemHeader">
                        <div class="CheaderImgBox ml20">
                            <img src="/resources/img/logo.png" alt="로고" class="CheaderImg">
                        </div>
                    </div>
                    <div class="CitemImgBox">
                        <img src="/resources/img/캠핑3.jpg" alt="이미지" class="CitemImg">
                    </div>
                    <div class="CitemMain">
                        <h3 class="CitemName">캠핑장</h3>
                        <p class="CitemAddress">진해</p>
                    </div>
                    <div class="hotSticker">
                        <img src="/resources/img/3.png" alt="3" class="hotStickerImg">
                    </div>
                </div>
            </div>
        </div>
        <div class="communitySession">
            <div class="sessionNameBox">
                <div class="container sessionNameOn" onclick="location.href='/community'">
                    <h3 class="sessionName">COMMUNITY</h3>
                </div>
            </div>
            <div class="Ccontainer">
                <div class="CItem" onclick="location.href='/community/communityItem'">
                    <div class="CitemHeader">
                        <p class="CheaderNick ml20"> 닉네임</p>
                        <p class="CheaderLevel ml20"> Lv.20</p>
                    </div>
                    <div class="CitemImgBox">
                        <img src="/resources/img/캡처.PNG" alt="이미지" class="CitemImg">
                    </div>
                    <div class="CitemMain">
                        <h3 class="CitemNameC">제목</h3>
                        <p class="CitemAddress">내용</p>
                    </div>
                </div>
                <div class="CItem" onclick="location.href='/community/communityItem'">
                    <div class="CitemHeader">
                        <p class="CheaderNick ml20"> 닉네임</p>
                        <p class="CheaderLevel ml20"> Lv.20</p>
                    </div>
                    <div class="CitemMainT">
                        <h3 class="CitemNameC">제목</h3>
                        <p class="CitemTextT">내용</p>
                    </div>
                    <div class="CitemFooter">
                    </div>
                </div>
                <div class="CItem" onclick="location.href='/community/communityItem'">
                    <div class="CitemHeader">
                        <p class="CheaderNick ml20"> 닉네임</p>
                        <p class="CheaderLevel ml20"> Lv.20</p>
                    </div>
                    <div class="CitemImgBox">
                        <img src="/resources/img/캡처.PNG" alt="이미지" class="CitemImg">
                    </div>
                    <div class="CitemMain">
                        <h3 class="CitemNameC">제목</h3>
                        <p class="CitemAddress">내용</p>
                    </div>
                </div>
            </div>
        </div>
        <footer>
            <div class="container">
                ironPillar
            </div>
        </footer>
    </div>
</body>
</html>