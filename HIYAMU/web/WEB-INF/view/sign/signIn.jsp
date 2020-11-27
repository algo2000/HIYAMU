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
    <link href="${pageContext.request.contextPath}/static/css/init/init.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/sign/signIn.css" rel="stylesheet">
    <script type="module" src="${pageContext.request.contextPath}/static/js/sign/signIn_ajax.js"></script>
  </head>
  <body>
  <jsp:include page="../include/header.jsp"/>
  <div id="box">
    <svg id="logo" xmlns="http://www.w3.org/2000/svg" width="108.28" height="29" viewBox="0 0 108.28 29">
      <g id="그룹_14" data-name="그룹 14" transform="translate(-1425.72 -352)">
        <path id="패스_2" data-name="패스 2" d="M1.72-.84H3.2V-12.18h.06L7.14-.84H8.62l3.92-11.34h.06V-.84h1.6V-14.26H11.86L8-2.92H7.96L4.08-14.26H1.72ZM19.8-.66A3.264,3.264,0,0,0,22.44-1.7h.1l.16.86h1.24V-8.02c0-2.02-1.22-2.92-3.4-2.92a7.518,7.518,0,0,0-2.96.54v1.1a8.4,8.4,0,0,1,2.36-.32c1.78,0,2.46.4,2.46,1.94v1.04l-2.68.32c-1.9.22-3.02,1.14-3.02,2.88C16.7-1.58,18-.66,19.8-.66Zm.38-1.2c-1.14,0-1.88-.54-1.88-1.62,0-1.14.6-1.64,1.82-1.76L22.4-5.5v2.92A3.344,3.344,0,0,1,20.18-1.86ZM26.82-.84h1.52V-8.9a7.076,7.076,0,0,1,2.8-.72c1.58,0,2,.5,2,1.7V-.84h1.52v-7.4c0-1.92-.94-2.7-2.88-2.7A6.561,6.561,0,0,0,28.36-9.9h-.08v-.86H26.82ZM41,2.1c3.38,0,4.74-1.34,4.74-3.04,0-1.84-1.34-2.38-3.14-2.38H39.86c-.66,0-.98-.2-.98-.74a1.117,1.117,0,0,1,.46-.8,5.136,5.136,0,0,0,1.7.28c2.08,0,3.72-1.06,3.72-3.18v-.02a2.407,2.407,0,0,0-.72-1.82h1.78v-1.18H42.46a6.25,6.25,0,0,0-1.4-.16c-2.18,0-3.74,1.14-3.74,3.2v.04a2.777,2.777,0,0,0,1.24,2.48c-.76.56-1.12,1.02-1.12,1.64a1.268,1.268,0,0,0,1,1.24v.1c-1.02.34-1.88.96-1.88,2.02C36.56,1.22,37.98,2.1,41,2.1ZM40.96.9C39,.9,38.16.46,38.16-.42c0-.84.58-1.28,1.34-1.54h2.86c1.3,0,1.78.3,1.78,1.22C44.14.3,43.3.9,40.96.9Zm.08-6.68c-1.32,0-2.2-.64-2.2-1.94v-.1c0-1.24.84-1.96,2.2-1.96,1.34,0,2.18.62,2.18,1.98v.1C43.22-6.42,42.42-5.78,41.04-5.78ZM50.08-.66A3.264,3.264,0,0,0,52.72-1.7h.1l.16.86h1.24V-8.02c0-2.02-1.22-2.92-3.4-2.92a7.518,7.518,0,0,0-2.96.54v1.1a8.4,8.4,0,0,1,2.36-.32c1.78,0,2.46.4,2.46,1.94v1.04L50-6.32c-1.9.22-3.02,1.14-3.02,2.88C46.98-1.58,48.28-.66,50.08-.66Zm.38-1.2c-1.14,0-1.88-.54-1.88-1.62,0-1.14.6-1.64,1.82-1.76l2.28-.26v2.92A3.344,3.344,0,0,1,50.46-1.86Z" transform="translate(1424 373)" fill="#f0f0f0"/>
        <rect id="rect" data-name="사각형 11" width="49" height="29" rx="10" transform="translate(1485 352)" fill="#f4f4f4"/>
        <path id="hub" data-name="패스 3" d="M1.72-.84h1.6V-7.1h6.72V-.84h1.58V-14.26H10.04v5.82H3.32v-5.82H1.72ZM17.8-.66a5.563,5.563,0,0,0,3.16-1.08h.08l.14.9H22.5v-9.92H20.98v8a6.169,6.169,0,0,1-2.76.78c-1.46,0-1.92-.52-1.92-1.8v-6.98H14.76v7.2C14.76-1.64,15.86-.66,17.8-.66Zm11.24.04c3.2,0,4.94-1.88,4.94-5.2v-.26c0-3.72-1.96-4.86-3.86-4.86a5.622,5.622,0,0,0-3.06.84h-.1v-5.06H25.42v14A11.871,11.871,0,0,0,29.04-.62Zm.08-1.28a5.481,5.481,0,0,1-2.16-.36V-9a5.989,5.989,0,0,1,2.46-.64c2,0,2.96.9,2.96,3.66v.4C32.38-2.74,30.9-1.9,29.12-1.9Z" transform="translate(1492 373)" fill="#ffb833"/>
      </g>
    </svg>
    <form id="sign-in-form" name="sign-in-form">
      <div class="sign-in-box" id="js-id">
        <div class="sign-input-box">
          <input class="sign-input" autocomplete="off" type="text" placeholder="ID" name="user_id" autofocus>
        </div>
        <div class="button-box">
          <span class="button next-button sign-button-big">Next</span>
        </div>
      </div>
      <div class="sign-in-box" id="js-password" style="display: none;">
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
