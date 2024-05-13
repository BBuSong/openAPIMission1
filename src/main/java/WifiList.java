import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class WifiList {

    public List<Wifi> list () {
        String url = "jdbc:mariadb://localhost:3305/mission1";
        String dbUserId = "mission1";
        String dbPassword = "mission";

        List<Wifi> list = new ArrayList<>();

        try {
            Class.forName("org.mariadb.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;

        try {
            connection = DriverManager.getConnection(url, dbUserId, dbPassword);

            String sql = "select X_SWIFI_MGR_NO , X_SWIFI_WRDOFC , X_SWIFI_MAIN_NM , X_SWIFI_ADRES1 ,X_SWIFI_ADRES2 " +
                    ", X_SWIFI_INSTL_FLOOR , X_SWIFI_INSTL_TY , X_SWIFI_INSTL_MBY , X_SWIFI_SVC_SE , X_SWIFI_CMCWR " +
                    ", X_SWIFI_CNSTC_YEAR , X_SWIFI_INOUT_DOOR , X_SWIFI_REMARS3 , LAT , LNT , WORK_DTTM " +
                    "from wifi; ";

            preparedStatement = connection.prepareStatement(sql);
            rs = preparedStatement.executeQuery();

            while (rs.next()) {

                Wifi ad = new Wifi();
                ad.setX_SWIFI_MGR_NO(rs.getString("X_SWIFI_MGR_NO"));
                ad.setX_SWIFI_WRDOFC(rs.getString("X_SWIFI_WRDOFC"));;
                ad.setX_SWIFI_MAIN_NM(rs.getString("X_SWIFI_MAIN_NM"));
                ad.setX_SWIFI_ADRES1(rs.getString("X_SWIFI_ADRES1"));
                ad.setX_SWIFI_ADRES2(rs.getString("X_SWIFI_ADRES2"));
                ad.setX_SWIFI_INSTL_FLOOR(rs.getString("X_SWIFI_INSTL_FLOOR"));
                ad.setX_SWIFI_INSTL_TY(rs.getString("X_SWIFI_INSTL_TY"));
                ad.setX_SWIFI_INSTL_MBY(rs.getString("X_SWIFI_INSTL_MBY"));
                ad.setX_SWIFI_SVC_SE(rs.getString("X_SWIFI_SVC_SE"));
                ad.setX_SWIFI_CMCWR(rs.getString("X_SWIFI_CMCWR"));
                ad.setX_SWIFI_CNSTC_YEAR(rs.getString("X_SWIFI_CNSTC_YEAR"));
                ad.setX_SWIFI_INOUT_DOOR(rs.getString("X_SWIFI_INOUT_DOOR"));;
                ad.setX_SWIFI_REMARS3(rs.getString("X_SWIFI_REMARS3"));
                ad.setLNT(rs.getString("LNT"));;
                ad.setLAT(rs.getString("LAT"));
                ad.setWORK_DTTM(rs.getString("WORK_DTTM"));
                list.add(ad);
            }


        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            try {
                if (rs != null && !rs.isClosed()) {
                    rs.close();
                }
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

            try {
                if (preparedStatement != null && !preparedStatement.isClosed()) {
                    preparedStatement.close();
                }
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

            try {
                if (connection != null && !connection.isClosed()) {
                    connection.close();
                }
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }

        return list;
    }

}
