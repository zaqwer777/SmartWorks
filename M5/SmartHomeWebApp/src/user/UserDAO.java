/**
 * @author brian7989
 * java version 10.0.1
 */

package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import util.DatabaseUtil;


/**
 * Data Access Object, accesses user table
 */
public class UserDAO {

    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;

    public UserDAO() {
        conn = DatabaseUtil.getConnection();
    }

    /**
     * Adds userID and userPW into database
     * @param userID user's ID to enter
     * @param userPW user's corresponding PW to enter
     * @return 1 if successfully added, -1 if database error
     */
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

    /**
     * Seeks to match user's credential with ID and PW stored in database
     * @param userID user's login ID
     * @param userPW user's corresponding PW
     * @return 1 if ID & PW successfully matches,
     * 0 if password is not found,
     * -1 if ID is not found,
     * -2 if database error
     */
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
