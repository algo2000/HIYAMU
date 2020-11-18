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
    <link href="${pageContext.request.contextPath}/static/css/sign/signUp.css" rel="stylesheet">
  </head>
  <body oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
  <div id="box">
    <div id="sign-up-box">
      <div id="title">
        HIYAMU.la
      </div>
      <form id="sign-up-form" action="/sign-up" method="POST">
        <input type="text" name="user_id" class="input-text" placeholder="id">
        <input type="password" name="password" class="input-text" placeholder="password">
        <input type="text" name="email" class="input-text" placeholder="email">
        <div class="sign-up-contents">
          <input type="submit" value="Sign Up" autocomplete="off" class="button">
        </div>
      </form>
    </div>
  </div>
  </body>
</html>
