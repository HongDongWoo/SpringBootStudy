<%@ page import="hello.servlet.domain.member.MemberRepository" %>
<%@ page import="hello.servlet.domain.member.Member" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=utf-8" %>
<%
    MemberRepository memberRepository = MemberRepository.getInstance();

    List<Member> members = memberRepository.findAll();
%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<ul>
    <% for (Member member :
            members) {

    %>

    <li>id: <%= member.getId()%></li>
    <li>username: <%= member.getUsername()%></li>
    <li>age: <%= member.getAge()%></li>
    <% }%>
</ul>
</body>
</html>