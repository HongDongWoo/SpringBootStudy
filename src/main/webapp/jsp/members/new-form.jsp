<%@ page contentType="text/html;charset=utf-8" %>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<form action="/jsp/members/save.jsp" method="post">
    username:   <input type="text" name="username" >
    age:        <input type="text" name="age">
    <button type="submit">전송</button>
</form>
</body>
</html>