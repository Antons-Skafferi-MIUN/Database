/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Rosen
 */
public class Lunch {
    private String lunchID;
    private String name;
    private String week;
    private String day;
    
    public Lunch(String lunchID, String name, String week, String day){
        this.lunchID = lunchID;
        this.name = name;
        this.week = week;
        this.day = day;
    }
    
    public Lunch(){}
    
    public String getLunchID(){
        return lunchID;
    }
    
    public void setLunchID(String lunchID){
        this.lunchID = lunchID;
    }
    
    public String getName(){
        return name;
    }
    
    public void setName(String name){
        this.name = name;
    }
    
    public String getWeek(){
        return week;
    }
    
    public void setWeek(String week){
        this.week = week;
    }
    
    public String getDay(){
        return day;
    }
    
    public void setDay(String day){
        this.day = day;
    }
}