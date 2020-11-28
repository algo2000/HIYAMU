<%--
  Created by IntelliJ IDEA.
  User: leo
  Date: 20. 11. 27.
  Time: 오후 10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<script type="module" src="${pageContext.request.contextPath}/static/js/init/init.js"></script>--%>
<%--<link href="${pageContext.request.contextPath}/static/css/header/header.css" rel="stylesheet">--%>
<div id="header">
    <div id="nav-box">
        <div id="menu-box">
            <svg id="burgur-menu" xmlns="http://www.w3.org/2000/svg" width="22" height="20" viewBox="0 0 20 18">
                <g id="burgur" transform="translate(-11 -12)">
                    <rect id="rect1" width="20" height="2" rx="1" transform="translate(11 12)" fill="#fff"/>
                    <rect id="rect2" width="20" height="2" rx="1" transform="translate(11 20)" fill="#fff"/>
                    <rect id="rect3" width="20" height="2" rx="1" transform="translate(11 28)" fill="#fff"/>
                </g>
            </svg>
        </div>
        <div id="sign-box">
            <%
                //    HttpSession session = new HttpServlet();
                String user_id = (String)session.getAttribute("id");
                String uri = request.getRequestURI();
                uri = uri.replace("/WEB-INF/view/sign/","").replace(".jsp","");
                if(user_id != null)
                {
            %>
                    <button class="sign-button" id="sign-out-button" onClick="location.href='/sign-out'">Sign Out</button>
            <%
                }
                else
                {
                    if(uri.equals("signUp"))
                    {
            %>
                        <button class="sign-button" id="sign-in-button" onClick="location.href='/sign-in'">Sign In</button>
            <%
                    }
                    else
                    {
            %>
                        <button class="sign-button" id="sign-up-button" onClick="location.href='/sign-up'">Sign Up</button>
            <%
                    }
                }
            %>
        </div>
    </div>
</div>
