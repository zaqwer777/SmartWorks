package sensor;

import util.DatabaseUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 * Data Access Object for sensor
 */
public class SensorDAO {

    private Connection conn;
    private String currentUserID;

    /**
     * Constructor for SensorDAO
     * Stores session userID.
     *
     * @param currentUserID current user's session userID
     */
    public SensorDAO(String currentUserID) {
        conn = DatabaseUtil.getConnection();
        this.currentUserID = currentUserID;
    }

    /**
     * Adds to sensor table using SQL statement.
     *
     * @param name device name that the user desires to input
     * @param type device type that the user desires to input
     * @return status code displaying completion/error for SQL process
     */
    public int addSensor(String name, String type) {
        //No need to mind error here
        String SQL = "INSERT INTO sensor (deviceName, deviceType, userID) VALUES (?,?,?)";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, name);
            pstmt.setString(2, type);
            pstmt.setString(3, currentUserID);
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }
}
