package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import util.DatabaseUtil;

public class UserDAO {

    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;

    public UserDAO() {
        conn = DatabaseUtil.getConnection();
    }

    public int join (String userID, String userPW) {
        String SQL = "INSERT INTO USER VALUES (?,?)";
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, userID);
            pstmt.setString(2, userPW);
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }

    public int login(String userID, String userPW) {
        String SQL = "SELECT userPW FROM USER WHERE userID = ?";
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, userID);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                if (rs.getString(1).equals(userPW)) {
                    return 1;
                } else
                    return 0;
            }
            return -1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -2;
    }
}
