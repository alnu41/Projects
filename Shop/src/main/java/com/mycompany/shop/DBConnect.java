/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.shop;

/**
 *
 * @author alnu41
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.*;


public class DBConnect {
    static Connection ConnectDb() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    private Connection con;
    private Statement st;
    private ResultSet rs;
   
    @SuppressWarnings({"BroadCatchBlock", "TooBroadCatch"})
    public DBConnect(){
    try{
          Class.forName("com.sqlite.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:sqlite:C:/Users/alnu41/Desktop/Course Structure New/IDS 401/Temp/SQLiteStudio/fs","root","");
          st = con.createStatement();
    
          
    }catch(Exception e){System.out.println("Error"+e);}
    
    } 
}
