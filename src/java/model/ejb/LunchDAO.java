/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.ejb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.annotation.Resource;
import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.sql.DataSource;
import model.Lunch;

/**
 *
 * @author Rosen
 */
@Stateless
@LocalBean
public class LunchDAO {

    @Resource(name="jdbc/sample")
    private DataSource ds;
    
    public void addLunch(Lunch lunch){
        String sql = "INSERT INTO LUNCHES VALUES('"+ lunch.getLunchID() +"', '"+ lunch.getName() +"', '"+
                lunch.getWeek() +"', '"+ lunch.getDay()+"')";
        System.out.println(sql);
        executeModifyQuery(sql);
    }
    
    public void editLunch(Lunch lunch){
        String sql = "UPDATE LUNCHES SET LUNCH_NAME='"+ lunch.getName() +"', LUNCH_WEEK='"+ lunch.getWeek() +
                "', LUNCH_DAY='"+ lunch.getDay()+ "' WHERE LUNCH_ID='"+ lunch.getLunchID()+"'";
        executeModifyQuery(sql);
    }
    
    public void deleteLunch(Lunch lunch){
        String sql = "DELETE FROM LUNCHES WHERE LUNCH_ID='"+ lunch.getLunchID()+"'";
        executeModifyQuery(sql);
    }
    
    public Lunch getLunch(String id){
        Lunch lunch = new Lunch();
        String sql = "SELECT * FROM LUNCHES WHERE LUNCH_ID='"+ id + "'";
        System.out.println(sql);
        ResultSet rs = executeFetchQuery(sql);
        try{
            if(rs.next()){
                lunch.setLunchID(rs.getString("LUNCH_ID"));
                lunch.setName(rs.getString("LUNCH_NAME"));
                lunch.setWeek(rs.getString("LUNCH_WEEK"));
                lunch.setDay(rs.getString("LUNCH_DAY"));
            }
        } catch (Exception ex){
            System.err.println("GS" + ex.getMessage());
        }
        return lunch;
    }
    
    public ArrayList<Lunch> getAllLunches(){
        ArrayList<Lunch> list = new ArrayList<Lunch>();
        ResultSet rs = null;
        Statement query=null;
        String sql = "SELECT * FROM LUNCHES";
        System.out.println(sql);
        try {
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/restaurantDB", "app", "app");
            query = conn.createStatement();
            rs = query.executeQuery(sql);
            conn.setAutoCommit(false);
            try {
                while(rs.next()){
                    Lunch lunch = new Lunch();
                    lunch.setLunchID(rs.getString("LUNCH_ID"));
                    System.out.println(rs.getString("LUNCH_ID"));
                    lunch.setName(rs.getString("LUNCH_NAME"));
                    System.out.println(rs.getString("LUNCH_NAME"));
                    lunch.setWeek(rs.getString("LUNCH_WEEK"));
                    lunch.setDay(rs.getString("LUNCH_DAY"));
                    list.add(lunch);
                }
            } catch (SQLException ex){
                System.err.println(ex.getMessage());
            }
            conn.close();
        } catch (Exception e) {
            System.err.println(e.getMessage());
        } finally{
            if(query!=null) {
                try {
                     query.close();
                }
                catch(SQLException ex) {
                      System.out.println("Could not close query");
                }
            }
        }
        //ResultSet rs = executeFetchQuery(sql);
        return list;
    }
    
    public void executeModifyQuery(String sql){
        try {
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/restaurantDB", "app", "app");
            //Connection conn = ds.getConnection();
            conn.createStatement().execute(sql);
            conn.close();
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
    }
    
    public ResultSet executeFetchQuery(String sql){
        ResultSet rs = null;
        try {
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/restaurantDB", "app", "app");
            //Connection conn = ds.getConnection();
            rs = conn.createStatement().executeQuery(sql);
            conn.setAutoCommit(false);
            //System.out.println(rs);
            conn.close();
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return rs;
    }
}