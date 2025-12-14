
package dal;

import java.util.ArrayList;
import java.util.List;
import models.Roles;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class RoleDAO extends DBContext{
    PreparedStatement ps;
    ResultSet rs;
    
    public List<Roles> getRoles(){
        List<Roles> roles = new ArrayList<>();
        try{
            String sql = "select * from Roles";
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                int roleId = rs.getInt("roleId");
                String roleName = rs.getString("roleName");
                String des = rs.getString("description");
                
                roles.add(new Roles(roleId, roleName, des));
            }
        }catch(Exception e){
        }
        return roles;
    }
}
