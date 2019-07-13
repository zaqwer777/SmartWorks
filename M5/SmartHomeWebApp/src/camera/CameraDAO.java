package camera;

import util.DatabaseUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CameraDAO {

    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;

    public CameraDAO() {
        conn = DatabaseUtil.getConnection();
    }

    public int addCamera(String name) {
        String SQL = "INSERT INTO sensor VALUES (?,?)";
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, name);
            pstmt.setString(2, "camera");
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }
}
