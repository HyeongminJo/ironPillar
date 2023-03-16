<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String memberNick = (String) session.getAttribute("memberNick");
	String memberId = (String) session.getAttribute("memberId");
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MENU · ironPillar</title>
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
            		else if(memberId.equals("admin"))
                	{
                %>
                <div class="menuItem" onclick="location.href='/admin/addItem'">
                	<p>상품
                	<br>등록
                </div>
                <div class="menuItem" onclick="location.href='/admin/addPlace'">
                	<p>캠핑장<br>
                	등록
                </div>
                <div class="menuItem" onclick="location.href='/login/logout'">
                	<p>LOGOUT
                </div>
                <%
            		}
            		else
            		{
                %>
                <div class="menuItem" onclick="location.href='/myPage'">
                	<p><%=memberNick%>
                </div>
                <div class="menuItem" onclick="location.href='/login/logout'">
                	<p>LOGOUT
                </div>
                <%
            		}
                %>
            </div>
        </div>
    </div>
</body>
</html>