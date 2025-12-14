package dal;

import java.util.List;
import models.UserProfile;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import models.UserProfileDTO;

public class UserProfileDAO extends DBContext {

    PreparedStatement ps;
    ResultSet rs;

    public List<UserProfile> getUserProfile() {
        List<UserProfile> users = new ArrayList<>();
        try {
            String sql = "select * from UserProfiles";
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                int profileId = rs.getInt("profileId");
                int accountId = rs.getInt("accountId");
                String fullName = rs.getString("fullName");
                int age = rs.getInt("age");
                String gender = rs.getString("gender");
                String hobbies = rs.getString("hobbies");
                String email = rs.getString("email");
                String des = rs.getString("description");

                users.add(new UserProfile(profileId, accountId, fullName, age, gender, hobbies, email, des));
            }
        } catch (SQLException e) {

        }
        return users;
    }

    public void createUserInfo(UserProfileDTO user) {
        try {
            String sql = "insert into UserProfiles (accountId, fullName, age, gender, hobbies, email, description) values "
                    + "(?,?,?,?,?,?,?)";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, user.getAccountId());
            ps.setString(2, user.getFullName());
            ps.setInt(3, user.getAge());
            ps.setString(4, user.getGender());
            ps.setString(5, user.getHobbies());
            ps.setString(6, user.getEmail());
            ps.setString(7, user.getDes());

            int rows = ps.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public UserProfile getUserProfileById(int profileId) {
        UserProfile user;
        try {
            String sql = "select * from UserProfiles where profileId = ?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, profileId);
            rs = ps.executeQuery();
            while (rs.next()) {
                int accountId = rs.getInt("accountId");
                String fullName = rs.getString("fullName");
                int age = rs.getInt("age");
                String gender = rs.getString("gender");
                String hobbies = rs.getString("hobbies");
                String email = rs.getString("email");
                String des = rs.getString("description");

                return new UserProfile(profileId, accountId, fullName, age, gender, hobbies, email, des);
            }

        } catch (Exception e) {

        }
        return null;
    }
}
