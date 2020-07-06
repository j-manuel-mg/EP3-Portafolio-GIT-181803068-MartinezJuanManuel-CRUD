/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Configuracion;

import java.sql.*;
import java.sql.DriverManager;

/**
 *
 * @author Juan Manuel
 */
public class Conexion {
    
    private Connection conexion = null;
    private static final String localhost = "localhost";
    private static final String bd = "consolas";
    private static final String autoReconectar = "?autoReconnet=true&useSSL=false";
    private static final String usuario = "root";
    private static final String password = "";
    
    public Connection getConexion() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://"+localhost+"/"+bd+autoReconectar,usuario,password);
        } catch (Exception e) { 
            System.out.println("Error: " + e.getMessage());
        }
        return conexion;
    }
    
}
