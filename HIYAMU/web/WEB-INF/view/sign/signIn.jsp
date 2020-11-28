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
    <link href="${pageContext.request.contextPath}/static/css/sign/sign.css" rel="stylesheet">
    <script type="module" src="${pageContext.request.contextPath}/static/js/sign/sign_ajax.js"></script>
  </head>
  <body>
    <jsp:include page="../include/header.jsp"/>
    <div id="box">
      <jsp:include page="../include/logo.jsp"/>
      <form id="sign-form" name="sign-form">
        <div class="sign-box" id="js-id">
          <div class="sign-input-box">
            <input class="sign-input" autocomplete="off" type="text" placeholder="ID" name="user_id" autofocus>
          </div>
          <div class="button-box">
            <span class="button next-button sign-button-big">Next</span>
          </div>
        </div>
        <div class="sign-box" id="js-password" style="display: none;">
          <div class="sign-input-box">
            <input class="sign-input" autocomplete="off" type="password" placeholder="Password" name="password">
          </div>
          <div class="button-box">
            <span class="button back-button sign-button-small button-left">Back</span>
            <span class="button sign-button-small button-right" id="sign-button">Sign In</span>
          </div>
        </div>
      </form>
    </div>
  </body>
</html>
