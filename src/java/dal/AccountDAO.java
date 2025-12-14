
package dal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import models.Account;
import models.AccountDTO;

public class AccountDAO extends DBContext{
    PreparedStatement ps;
    ResultSet rs;
    
    public List<Account> getAccount(){
        List<Account> accounts = new ArrayList<>();
        try{
            String sql = "select * from Accounts";
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                int accountId = rs.getInt("accountId");
                String username = rs.getString("username");
                String password = rs.getString("password");
                int roleId =rs.getInt("roleId");
                
                accounts.add(new Account(accountId, username, password, roleId));
            }
        }catch(SQLException e){
        }
        return accounts;
    }
    
    public List<AccountDTO> getAccountWithRoleName(){
        List<AccountDTO> accounts = new ArrayList<>();
        try{
            String sql = "select * from Accounts a join Roles r on a.roleId = r.roleId";
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                int accountId = rs.getInt("accountId");
                String username = rs.getString("username");
                String password = rs.getString("password");
                String roleName =rs.getString("roleName");
                
                accounts.add(new AccountDTO(accountId, username, password, roleName));
            }
        }catch(SQLException e){
        }
        return accounts;
    }
    
    public Account getAccountByUsername(String username){
        try{
            String sql = "select * from Accounts where username = ?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            rs = ps.executeQuery();
            
            while(rs.next()){
                int accountId = rs.getInt("accountId");
                String password = rs.getString("password");
                int roleId = rs.getInt("roleId");
                
                return new Account(accountId, username, password, roleId);
            }
        }catch(SQLException e){
        }
        return null;
    }
    
    public AccountDTO getAccountWithRoleNameByAccountId(int accountId){
        try{
            String sql = "select * from Accounts a join Roles r on a.roleId = r.roleId where a.accountId like ? ";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, accountId);
            rs = ps.executeQuery();
            
            while(rs.next()){
                String username = rs.getString("username");
                String password = rs.getString("password");
                String roleName = rs.getString("roleName");
                
                return new AccountDTO(accountId, username, password, roleName);
            }
        }catch(SQLException e){
        }
        return null;
    }
    
    public void createAccount(Account newAcc){
        try{
            String sql = "insert into Accounts(username, password, roleId) values(?, ?, ?)";
            ps = connection.prepareStatement(sql);
            ps.setString(1, newAcc.getUsername());
            ps.setString(2, newAcc.getPassword());
            ps.setInt(3, 2);
            int rows = ps.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
    
    public void updateAccount(Account acc){
        try{
            String sql = "update Accounts set password = ?, roleId = ? where accountId = ?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, acc.getPassword());
            ps.setInt(2, acc.getRoleId());
            ps.setInt(3, acc.getAccountId());
            
            int rows = ps.executeUpdate();
        }catch(SQLException e){
        }
    }

    public Account getAccountById(int id) {
        try{
            String sql = "select * from Accounts where accountId = ?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                String user = rs.getString("username");
                String pass = rs.getString("password");
                int roleId = rs.getInt("roleId");
                
                return new Account(id, user, pass, roleId);
            }
        }catch(SQLException e){
        }
        return null;
    }
    
    public Account deleteAccountById(int id){
        try{
            String sql = "delete from Accounts where accountId = ?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            
            while(rs.next()){
                String accountId = rs.getString("accountId");
                String username = rs.getString("username");
                String pass = rs.getString("password");
                int roleId = rs.getInt("roleId");
                return new Account(id,username, pass, roleId);
            }
            
        }catch(SQLException e){
        }
        return null;
    }
    
}
