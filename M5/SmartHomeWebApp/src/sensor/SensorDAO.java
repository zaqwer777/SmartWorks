package sensor;

import util.DatabaseUtil;

import java.sql.*;

public class SensorDAO {

    private Connection conn;
    private Statement st = conn.createStatement();
    private ResultSet rs;

    public SensorDAO() throws SQLException {
        conn = DatabaseUtil.getConnection();
    }

    public int addSensor(String name, String type) throws SQLException {
        int i = st.executeUpdate("INSERT INTO sensor(deviceName,deviceType,userID,startTime,endTime)" +
                "values('" + name + "','" + type + "','" + "" + "','" + "" + "','" + "" + "')");
        return -1;
    }
}
