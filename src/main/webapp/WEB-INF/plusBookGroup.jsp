<%--
  Created by IntelliJ IDEA.
  User: seven
  Date: 2024-05-12
  Time: 오후 8:33
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
<h1>북마크 그룹 추가</h1>

<div>
    <a href="index.jsp">홈 |</a>
    <a href="history.jsp"> 위치 히스토리 목록 |</a>
    <a href="openAPI.jsp"> Open API 와이파이 정보 가져오기 |</a>
    <a href="lookBook.jsp"> 북마크 보기 |</a>
    <a href="setBook.jsp"> 북마크 그룹 관리</a>
</div>

<table>
    <colgroup>
        <col style="width:20%;"/>
        <col style="width:80%;"/>
    </colgroup>
    <tbody>

    <tr>
        <th>북마크 이름</th>
        <td>
        </td>
    </tr>
    <tr>
        <th>순서</th>
        <td>
        </td>
    </tr>

    </tbody>

</table>

</body>
</html>
