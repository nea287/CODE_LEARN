/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import DBtills.DBUtils;
import dto.StudentDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author nearl
 */
public class StudentDAO {
    public static StudentDTO getAccount(String studentname, String password) 
            throws ClassNotFoundException, SQLException{
        String LOGIN = "SELECT Id_Student, Username, Password FROM Student WHERE Username = ? AND Password = ? ";
        StudentDTO acc = null;
        Connection conn = DBUtils.getConnection();
        if(conn != null){
            PreparedStatement ptm = conn.prepareStatement(LOGIN);
            ptm.setString(1, studentname);
            ptm.setString(2, password);
            ResultSet rs = ptm.executeQuery();
            if(rs != null && rs.next()){
                int id_student = rs.getInt("Id_Student");
                acc = new StudentDTO(id_student, studentname, password);
            }
            conn.close();
        }
        return acc;
    }
    public static boolean createStudentAccount(StudentDTO dto) throws ClassNotFoundException, SQLException {
        if (dto == null){
            return false;
        }
        Connection con = null;
        PreparedStatement stm = null;
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "insert into dbo.Student (Username, Password) values (?, ?)";
                stm = con.prepareStatement(sql);
                stm.setString(1, dto.getUsername());
                stm.setString(2, dto.getPassword());
                int effectRows = stm.executeUpdate();
                if (effectRows > 0) {
                    return true;
                }
            }
        } finally {
            if (con != null) {
                con.close();
            }
            if (stm != null) {
                stm.close();
            }
        }
        return false;
    }
    
    public boolean changePassword(StudentDTO dto, String newPassword, String oldPassword) throws ClassNotFoundException, SQLException {
        if (dto == null) {
            return false;
        }
        Connection con = null;
        PreparedStatement stm = null;
        String validAccSQL = "select Id_Student from dbo.Student where Username = ? and Password = ?";
        String changePassSQL = "update dbo.Student set Password = ? where Username = ?";
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                stm = con.prepareStatement(validAccSQL);
                stm.setString(1, dto.getUsername());
                stm.setString(2, oldPassword);
                int effectedRows = stm.executeUpdate();
                if (effectedRows > 0) {
                    stm = con.prepareStatement(changePassSQL);
                    stm.setString(1, newPassword);
                    stm.setString(2, dto.getUsername());
                    stm.executeUpdate();
                    return true;
                } else {
                    return false;
                }
            }
        } catch (Exception ex) {

        } finally {
            if (con != null) {
                con.close();
            }
            if (stm != null) {
                con.close();
            }
        }
        return false;
    }
    
   public boolean checkLogin(String username, String password) throws SQLException {
       Connection conn = null;
       PreparedStatement stm = null;
       ResultSet rs = null;
       String sql = "select Id_Student from dbo.Student where Username = ? and Password = ?";
       try {
           conn = DBUtils.getConnection();
           if (conn != null) {
               stm = conn.prepareStatement(sql);
               stm.setString(1, username);
               stm.setString(2, password);
               rs = stm.executeQuery();
               if (rs.next()) {
                   return true;
               }
           }
       } catch (Exception ex) {
           ex.printStackTrace();
       } finally {
           if (conn != null){
               conn.close();
           }
           if (stm != null) {
               stm.close();
           }
           if (rs != null ){
               rs.close();
           }
        }
       return false;
   }
}

