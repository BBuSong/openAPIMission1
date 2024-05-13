<%--
  Created by IntelliJ IDEA.
  User: seven
  Date: 2024-05-11
  Time: 오후 12:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            text-align: center;
            padding: 8px;
        }

        tr:nth-child(even){background-color: #f2f2f2}

        th {
            background-color: #04AA6D;
            color: white;
        }
    </style>
</head>
<body>

<h2>위치 히스토리 목록</h2>

<div>
    <a href="index.jsp">홈 |</a>
    <a href="history.jsp">위치 히스토리 목록 |</a>
    <a href="openAPI.jsp">Open API 와이파이 정보 가져오기 </a>
</div>


<table>
    <tr>
        <th>ID</th>
        <th>X좌표</th>
        <th>Y좌표</th>
        <th>조회일자</th>
        <th>비고</th>
    </tr>
</table>

</body>
</html>

