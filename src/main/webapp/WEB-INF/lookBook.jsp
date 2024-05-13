<%--
  Created by IntelliJ IDEA.
  User: seven
  Date: 2024-05-12
  Time: 오후 8:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        table {
            width:100%;
        }
        th, td {
            border:solid 1px #000;}
    </style>
</head>
<body>
<h1>북마크 목록</h1>

<div>
    <a href="index.jsp">홈 |</a>
    <a href="history.jsp"> 위치 히스토리 목록 |</a>
    <a href="openAPI.jsp"> Open API 와이파이 정보 가져오기 |</a>
    <a href="openAPI.jsp"> 북마크 보기 |</a>
    <a href="openAPI.jsp"> 북마크 그룹 관리</a>
</div>

<table>
    <thread>
        <tr>
            <th>ID</th>
            <th>북마크 이름</th>
            <th>와이파이명</th>
            <th>등록일자</th>
            <th>비고</th>
        </tr>
    </thread>
</table>

</body>
</html>
