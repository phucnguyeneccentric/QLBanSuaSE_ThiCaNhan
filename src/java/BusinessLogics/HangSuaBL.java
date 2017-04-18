/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BusinessLogics;

import JavaBeans.HangSua;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *Các nghiệp vụ của bảng Hang_Sua
 * @author hv
 */
public class HangSuaBL {
    public static List<HangSua> docTatCa(){
        List<HangSua> dshs = null;
        try {
            dshs = new ArrayList<>();
            Connection con = ConnectionDB.connect();
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery("select * from hang_sua");
            while(rs.next()){
                HangSua hs = new HangSua();
                hs.setMaHangSua(rs.getString("Ma_hang_sua"));
                hs.setTenHangSua(rs.getString("Ten_hang_sua"));
                dshs.add(hs);
            }
        } catch (SQLException ex) {
            Logger.getLogger(LoaiSuaBL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return dshs;
    }
    
}
