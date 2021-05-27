
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="../../css/style.css">
    <title>로그인 </title>
</head>

<body width="100%" height="100%">
    <form action="./login" method="post" class="loginForm">
      <h2>로그인</h2>
      <div class="idForm">
        <input type="text" class="id" name="id" placeholder="ID">
      </div>
      <div class="passForm">
        <input type="password" class="pw" name="pass" placeholder="PW">
      </div>
      <button type="button" class="btn" onclick="button()">
        LOG IN
      </button>
      <script>
      	let button = () => {
        	alert('login Button !')
        }
      </script>
      <div class="bottomText">
        아이디가 없으세요? <a href="./insert">회원가입</a>
      </div>
    </form>
  </body>

</html>