package com.emergentes;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class ConexionDB {
    private String url = "jdbc:mysql://localhost:3306/bd_proyectos";
    private String usuario = "root";
    private String password = "";
    
    
    protected Connection conn = null;

    
    public ConexionDB() {
    try {
    Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection(url,usuario,password);
    }catch(ClassNotFoundException ex)
            {
                System.out.println("Falta driver "+ex.getMessage());
            
            } 
    catch(SQLException ex)
    {
        System.out.println("Error de sql"+ex.getMessage());
    }
    
    
}
public Connection conectar()
{
return conn;
}

    /**
     *
     */
    public void desconectar()
{}}
