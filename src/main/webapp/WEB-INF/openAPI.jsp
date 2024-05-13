<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="jdk.nashorn.internal.parser.JSONParser" %>
<%@ page import="com.google.gson.JsonObject" %>
<%@ page import="com.google.gson.JsonArray" %>
<%@ page import="com.google.gson.JsonParser" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader" %><%--
  Created by IntelliJ IDEA.
  User: seven
  Date: 2024-05-11
  Time: 오후 2:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

</head>
<body>
<%

    String key = "6867596a6564643336307556536879";
    String result = "";

    URL url = new URL("http://openapi.seoul.go.kr:8088/" + key + "/json/TbPublicWifiInfo/1/1000/");

    BufferedReader bf;

    bf = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));
    result = bf.readLine();

    System.out.println(result);

    String X_SWIFI_MGR_NO = request.getParameter("X_SWIFI_MGR_NO");
    String X_SWIFI_WRDOFC = request.getParameter("X_SWIFI_WRDOFC");
    String X_SWIFI_MAIN_NM = request.getParameter("X_SWIFI_MAIN_NM");
    String X_SWIFI_ADRES1 = request.getParameter("X_SWIFI_ADRES1");
    String X_SWIFI_ADRES2 = request.getParameter("X_SWIFI_ADRES2");
    String X_SWIFI_INSTL_FLOOR = request.getParameter("X_SWIFI_INSTL_FLOOR");
    String X_SWIFI_INSTL_TY = request.getParameter("X_SWIFI_INSTL_TY");
    String X_SWIFI_INSTL_MBY = request.getParameter("X_SWIFI_INSTL_MBY");
    String X_SWIFI_SVC_SE = request.getParameter("X_SWIFI_SVC_SE");
    String X_SWIFI_CMCWR = request.getParameter("X_SWIFI_CMCWR");
    String X_SWIFI_CNSTC_YEAR = request.getParameter("X_SWIFI_CNSTC_YEAR");
    String X_SWIFI_INOUT_DOOR = request.getParameter("X_SWIFI_INOUT_DOOR");
    String X_SWIFI_REMARS3 = request.getParameter("X_SWIFI_REMARS3");
    String LNT = request.getParameter("LNT");
    String LAT = request.getParameter("LAT");
    String WORK_DTTM = request.getParameter("WORK_DTTM");

    Class.forName("org.mariadb.jdbc.Driver");

    String url1 = "jdbc:mariadb://localhost:3305/mission1";
    String dbUserId = "mission1";
    String dbPassword = "mission";

    Connection connection = DriverManager.getConnection(url1, dbUserId, dbPassword);

    String sql = "insert into wifi " +
            " (X_SWIFI_MGR_NO , X_SWIFI_WRDOFC , X_SWIFI_MAIN_NM , X_SWIFI_ADRES1 ,X_SWIFI_ADRES2 " +
            ", X_SWIFI_INSTL_FLOOR , X_SWIFI_INSTL_TY , X_SWIFI_INSTL_MBY , X_SWIFI_SVC_SE , X_SWIFI_CMCWR " +
            ", X_SWIFI_CNSTC_YEAR , X_SWIFI_INOUT_DOOR , X_SWIFI_REMARS3 , LAT , LNT , WORK_DTTM) " +
            " values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?); ";


    PreparedStatement ps = connection.prepareStatement(sql);


    JsonParser jP = new JsonParser();
    JsonObject jsonObject = (JsonObject)jP.parse(result);
    JsonObject TbPublicWifiInfo = (JsonObject)jsonObject.get("TbPublicWifiInfo");
    JsonArray row = (JsonArray)TbPublicWifiInfo.get("row");



    for (int i = 0; i < row.size(); i++) {
        JsonObject row_X_SWIFI_MGR_NO = (JsonObject)row.get(i);
        X_SWIFI_MGR_NO = String.valueOf(row_X_SWIFI_MGR_NO.get("X_SWIFI_MGR_NO"));

        JsonObject row_X_SWIFI_WRDOFC = (JsonObject)row.get(i);
        X_SWIFI_WRDOFC = row_X_SWIFI_WRDOFC.get("X_SWIFI_WRDOFC") + " ";

        JsonObject row_X_SWIFI_MAIN_NM = (JsonObject)row.get(i);
        X_SWIFI_MAIN_NM = row_X_SWIFI_MAIN_NM.get("X_SWIFI_MAIN_NM") + " ";

        JsonObject row_X_SWIFI_ADRES1 = (JsonObject)row.get(i);
        X_SWIFI_ADRES1 = row_X_SWIFI_ADRES1.get("X_SWIFI_ADRES1") + " ";

        JsonObject row_X_SWIFI_ADRES2 = (JsonObject)row.get(i);
        X_SWIFI_ADRES2 = row_X_SWIFI_ADRES2.get("X_SWIFI_ADRES2") + " ";

        JsonObject row_X_SWIFI_INSTL_FLOOR = (JsonObject)row.get(i);
        X_SWIFI_INSTL_FLOOR = row_X_SWIFI_INSTL_FLOOR.get("X_SWIFI_INSTL_FLOOR") + " ";

        JsonObject row_X_SWIFI_INSTL_TY = (JsonObject)row.get(i);
        X_SWIFI_INSTL_TY = row_X_SWIFI_INSTL_TY.get("X_SWIFI_INSTL_TY") + " ";

        JsonObject row_X_SWIFI_INSTL_MBY = (JsonObject)row.get(i);
        X_SWIFI_INSTL_MBY = row_X_SWIFI_INSTL_MBY.get("X_SWIFI_INSTL_MBY") + " ";

        JsonObject row_X_SWIFI_SVC_SE = (JsonObject)row.get(i);
        X_SWIFI_SVC_SE = row_X_SWIFI_SVC_SE.get("X_SWIFI_SVC_SE") + " ";

        JsonObject row_X_SWIFI_CMCWR = (JsonObject)row.get(i);
        X_SWIFI_CMCWR = row_X_SWIFI_CMCWR.get("X_SWIFI_CMCWR") + " ";

        JsonObject row_X_SWIFI_CNSTC_YEAR = (JsonObject)row.get(i);
        X_SWIFI_CNSTC_YEAR = row_X_SWIFI_CNSTC_YEAR.get("X_SWIFI_CNSTC_YEAR") + " ";

        JsonObject row_X_SWIFI_INOUT_DOOR = (JsonObject)row.get(i);
        X_SWIFI_INOUT_DOOR = row_X_SWIFI_INOUT_DOOR.get("X_SWIFI_INOUT_DOOR") + " ";

        JsonObject row_X_SWIFI_REMARS3 = (JsonObject)row.get(i);
        X_SWIFI_REMARS3 = row_X_SWIFI_REMARS3.get("X_SWIFI_REMARS3") + " ";

        JsonObject row_LNT = (JsonObject)row.get(i);
        LNT = row_LNT.get("LNT") + " ";

        JsonObject row_LAT = (JsonObject)row.get(i);
        LAT = row_LAT.get("LAT") + " ";

        JsonObject row_WORK_DTTM = (JsonObject)row.get(i);
        WORK_DTTM = row_WORK_DTTM.get("WORK_DTTM") + " ";

        ps.setString(1, X_SWIFI_MGR_NO);
        ps.setString(2, X_SWIFI_WRDOFC);
        ps.setString(3, X_SWIFI_MAIN_NM);
        ps.setString(4, X_SWIFI_ADRES1);
        ps.setString(5, X_SWIFI_ADRES2);
        ps.setString(6, X_SWIFI_INSTL_FLOOR);
        ps.setString(7, X_SWIFI_INSTL_TY);
        ps.setString(8, X_SWIFI_INSTL_MBY);
        ps.setString(9, X_SWIFI_SVC_SE);
        ps.setString(10, X_SWIFI_CMCWR);
        ps.setString(11, X_SWIFI_CNSTC_YEAR);
        ps.setString(12, X_SWIFI_INOUT_DOOR);
        ps.setString(13, X_SWIFI_REMARS3);
        ps.setString(15, LNT);
        ps.setString(14, LAT);
        ps.setString(16, WORK_DTTM);

    }

    int affected = ps.executeUpdate();

    if (affected > 0) {
        System.out.println("23343개의 WIFI 정보를 정상적으로 저장했습니다.");
    }
    else {
        System.out.println("저장 실패");
    }




%>

out.write("23343개의 WIFI 정보를 정상적으로 저장했습니다.");
</body>
</html>