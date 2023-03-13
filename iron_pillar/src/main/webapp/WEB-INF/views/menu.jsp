<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String memberNick = (String) session.getAttribute("memberNick");
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MENU · ironPillar</title>
    <style>
        *{
            margin: 0;
            padding: 0;
            text-decoration: none;
        }
        .menuBox
        {
            width: 100%;
            margin: 0 auto;
            background-color: white;
            position: fixed;
            z-index: 1;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .menuContainer
        {
            width: 70%;
            height: 100px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .menuLogoBox
        {
            width: 150px;
            height: 53px;
            cursor: pointer;
        }
        .menuLogoImg
        {
            width: 100%;
            height: 100%;
        }
        .menuItemBox
        {
            width: 500px;
            height: 100%;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .menuItem
        {
            padding: 0 10px;
            height: 35px;
            display: flex;
            justify-content: center;
            align-items: center;
            font-weight: bold;
            color: #353535;
            transition-duration: 300ms;
        }
        .menuItem:hover
        {
            color: orange;
            cursor: pointer;
        }
        .menuItemR
        {
            position: relative;
        }
        .menuItemR:hover .menuItemSub
        {
            display: block;
        }
        .menuItemSub
        {
            position: absolute;
            width: 180px;
            height: 40px;
            top: 35px;
            display: none;
        }
        .menuItemSubF
        {
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .menuItemSubItem
        {
            padding: 0 7px;
            height: 35px;
            display: flex;
            justify-content: center;
            align-items: center;
            font-weight: bold;
            color: #353535;
            transition-duration: 300ms;
        }
        .menuItemSubItem:hover
        {
            color: orange;
            cursor: pointer;
        }
        .menuRight
        {
            display: flex;
            height: 100%;
            width: 150px;
            justify-content: end;
            align-items: center;
        }
    </style>
</head>
<body>
    <div class="menuBox">
        <div class="menuContainer">
            <div class="menuLogoBox" onclick="location.href='/main'">
                <img src="/resources/img/logo.png" alt="로고" class="menuLogoImg">
            </div>
            <div class="menuItemBox">
                <div class="menuItem" onclick="location.href='/shop'">
                    <p>SHOP</p>
                </div>
                <div class="menuItem" onclick="location.href='/place'">
                    <p>PLACE</p>
                </div>
                <div class="menuItem" onclick="location.href='/community'">
                    <p>COMMUNITY</p>
                </div>
                <div class="menuItem menuItemR" onclick="location.href='#'">
                    <p>INFORMATION</p>
                    <div class="menuItemSub">
                        <div class="menuItemSubF">
                            <div class="menuItemSubItem" onclick="location.href='/notice'">
                                <p>NOTICE</p>
                            </div>
                            <div class="menuItemSubItem" onclick="location.href='/contact'">
                                <p>CONTACT</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="menuRight">
            	<%
            		if(memberNick == null)
            		{
            	%>
                <div class="menuItem" onclick="location.href='/login'">
                    <p>LOGIN</p>
                </div>
                <%
            		}
            		else
            		{
                %>
                <div class="menuItem" onclick="location.href='/myPage'">
                	<p><%=memberNick%>
                </div>
                <%
            		}
                %>
            </div>
        </div>
    </div>
</body>
</html>