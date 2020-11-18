<%--
  Created by IntelliJ IDEA.
  User: leo
  Date: 20. 11. 3.
  Time: 오후 9:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <jsp:include page="../include/head.jsp"/>
    <title>Manga</title>
    <link href="${pageContext.request.contextPath}/static/css/sign/signIn.css" rel="stylesheet">
  </head>
  <body oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
  <div id="box">
    <div id="sign-in-box">
      <div id="title">
        HIYAMU.la
      </div>
      <form id="sign-in-form" action="/sign-in" method="POST">
        <input type="text" class="input-text" placeholder="id">
        <input type="password" class="input-text" placeholder="password">
        <div class="sign-in-contents">
          <input type="submit" value="Sign In" autocomplete="off" class="button">
        </div>
      </form>
      <div class="sign-in-contents">
        <a href="/sign-up" id="sign-up">Sign Up</a>
      </div>
    </div>
  </div>
  </body>
</html>
