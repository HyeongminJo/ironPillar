<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>캠핑장 · ironPillar</title>
    <script src="https://kit.fontawesome.com/9fd6563fdd.js" crossorigin="anonymous"></script>
    <link href="/resources/css/ironPillar.css" rel="stylesheet">
<script>
	// 인풋 텍스트 박스 포커스 색상
	function textBoxFocusColor(targetElement) {
		const inputbox = document.getElementsByClassName(targetElement);
		inputbox[0].style.border = "1px dashed black";
	}
	// 인풋 텍스트 박스 포커스 색상

	// 인풋 텍스트 박스 빠져나갈때 색상
	function textBoxBlurColor(targetElement) {
		const inputbox = document.getElementsByClassName(targetElement);
		inputbox[0].style.border = "1px solid black";
	}
	// 인풋 텍스트 박스 빠져나갈때 색상
</script>
</style>
</head>
<body>
<jsp:include page="menu.jsp"/>
    <div class="placePageSessionContainer">
        <div class="placePageSessionHeader">
            PLACE
        </div>
        <div class="placePageSearch_box">
            <form action="" method="get" class="placePageSearch_box1">
                <input type="text" name="search_keyword" onfocus="textBoxFocusColor('search_box')"
                    onblur="textBoxBlurColor('search_box')" class="placePageSearch_box2">
                <input type="submit" value="&#xf002" class="placePageBtn_submit">
            </form>
        </div>
        <div class="placePageSessionBox">
            <input type="radio" name="group" id="1" class="placePageInput placePageInput1" checked>
            <input type="radio" name="group" id="2" class="placePageInput placePageInput2">
            <input type="radio" name="group" id="3" class="placePageInput placePageInput3">
            <input type="radio" name="group" id="4" class="placePageInput placePageInput4">
            <input type="radio" name="group" id="5" class="placePageInput placePageInput5">
            <input type="radio" name="group" id="6" class="placePageInput placePageInput6">
            <div class="placePageSessionBox1">
                <label for="1" class="placePageSessionItem placePageInputItem1">경기도</label>
                <label for="2" class="placePageSessionItem placePageInputItem2">충청도</label>
                <label for="3" class="placePageSessionItem placePageInputItem3">전라도</label>
                <label for="4" class="placePageSessionItem placePageInputItem4">경상도</label>
                <label for="5" class="placePageSessionItem placePageInputItem5">강원도</label>
                <label for="6" class="placePageSessionItem placePageInputItem6">제주도</label>
            </div>
            <div class="placePageSessions placePageSessionOne">
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/경기도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">경기도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/경기도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">경기도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/경기도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">경기도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/경기도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">경기도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/경기도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">경기도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/경기도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">경기도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/경기도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">경기도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
            </div>
            <div class="placePageSessions placePageSessionTwo">
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/충청도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">충청도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/충청도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">충청도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/충청도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">충청도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/충청도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">충청도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/충청도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">충청도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/충청도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">충청도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/충청도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">충청도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
            </div>
            <div class="placePageSessions placePageSessionThree">
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox Ml20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/전라도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">전라도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox Ml20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/전라도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">전라도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox Ml20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/전라도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">전라도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox Ml20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/전라도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">전라도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox Ml20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/전라도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">전라도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox Ml20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/전라도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">전라도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox Ml20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/전라도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">전라도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
            </div>
            <div class="placePageSessions placePageSessionFour">
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/경상도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">경상도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/경상도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">경상도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/경상도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">경상도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/경상도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">경상도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/경상도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">경상도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/경상도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">경상도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/경상도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">경상도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
            </div>
            <div class="placePageSessions placePageSessionFive">
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/강원도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">강원도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/강원도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">강원도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/강원도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">강원도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/강원도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">강원도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/강원도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">강원도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/강원도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">강원도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/강원도.png" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">강원도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
            </div>
            <div class="placePageSessions placePageSessionSix">
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/제주도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">제주도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/제주도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">제주도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/제주도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">제주도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/제주도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">제주도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/제주도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">제주도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/제주도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">제주도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
                <div class="placePageSItem" onclick="location.href='/place/placeItem'">
                    <div class="placePageSitemHeader">
                        <div class="placePageSheaderImgBox placePageMl20">
                            <img src="resources/img/logo.png" alt="로고" class="placePageSheaderImg">
                        </div>
                    </div>
                    <div class="placePageSitemImgBox">
                        <img src="resources/img/제주도.jpg" alt="itemImg" class="placePageSitemImg">
                    </div>
                    <div class="placePageSitemMain">
                        <h3 class="placePageSitemName">제주도 캠핑장</h3>
                        <p class="placePageSitemText">내용</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>