/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Configuracion.Conexion;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Juan Manuel
 */
public class ConsolaBD {

    Connection conexion = new Conexion().getConexion();
    PreparedStatement stmt = null;
    ResultSet rs = null;
    
    //Consulta Listado consolas ---> Correcta
    private static final String listadoConsola = "SELECT id_consola, plataforma, modelo, almacenamiento, color, precio, cat_marca.marca\n"
            + "FROM consola\n"
            + "JOIN cat_marca\n"
            + "ON consola.id_marca = cat_marca.id_marca";
    
    //
    private static final String buscarConsola = "SELECT plataforma, modelo, almacenamiento, color, precio, cat_marca.marca FROM consola\n"
            + "JOIN cat_marca\n"
            + "ON consola.id_marca = cat_marca.id_marca\n"
            + "WHERE id_consola = ?";

    //Querty Agregar Consola ---> Correcto
    private static final String agregarConsola = "INSERT INTO consola SET plataforma = ?, modelo = ?, almacenamiento = ?, color = ?, precio = ?, id_marca = ?";

    private static final String editarConsola = "UPDATE consola SET plataforma = ?, modelo = ?, almacenamiento = ?, color = ?, precio = ?, id_marca = ? WHERE id_consola = ?";
    
    private static final String eliminarConsola = "DELETE FROM consola WHERE id_consola = ?";
    

    //Lista Consolas --> Correcta
    public List<Consola> listadoConsolas() throws SQLException {
        List<Consola> consolas = new ArrayList<>();
        this.stmt = this.conexion.prepareStatement(this.listadoConsola);
        this.rs = this.stmt.executeQuery();
        while (this.rs.next()) {
            consolas.add(new Consola(this.rs.getInt("id_consola"), this.rs.getString("plataforma"), this.rs.getString("modelo"), this.rs.getString("almacenamiento"), this.rs.getString("color"), this.rs.getInt("precio"), this.rs.getString("marca")));
        }
        return consolas;
    }
    
    //Lista Buscar Consola --> Correcta
    public List<Consola> buscarConsola(int id) throws SQLException {
        List<Consola> consolaId = new ArrayList<>();
        this.stmt = this.conexion.prepareStatement(this.buscarConsola);
        this.stmt.setInt(1, id);
        this.rs = this.stmt.executeQuery();
        while (this.rs.next()) {
            consolaId.add(new Consola(this.rs.getString("plataforma"), this.rs.getString("modelo"), this.rs.getString("almacenamiento"), this.rs.getString("color"), this.rs.getInt("precio"),this.rs.getString("marca")));
        }
        return consolaId;
    }
    
    //AgregarConsola ---> Correcta
    public boolean agregarConsola(Consola consola) throws SQLException {
        this.stmt = this.conexion.prepareStatement(this.agregarConsola);
        this.stmt.setString(1, consola.getPlataforma());
        this.stmt.setString(2, consola.getModelo());
        this.stmt.setString(3, consola.getAlmacenamiento());
        this.stmt.setString(4, consola.getColor());
        this.stmt.setInt(5, consola.getPrecio());
        this.stmt.setInt(6, consola.getIdMarca());
        if (this.stmt.executeUpdate() > 0) {
            return true;
        } else {
            return false;
        }
    }
    
    //CRUD EditarConsola ---> Correcta
    public boolean editarConsola(Consola consola) throws SQLException {
        this.stmt = this.conexion.prepareStatement(this.editarConsola);
        this.stmt.setString(1, consola.getPlataforma());
        this.stmt.setString(2, consola.getModelo());
        this.stmt.setString(3, consola.getAlmacenamiento());
        this.stmt.setString(4, consola.getColor());
        this.stmt.setInt(5, consola.getPrecio());
        this.stmt.setInt(6, consola.getIdMarca());
        this.stmt.setInt(7, consola.getIdConsola());
        if (this.stmt.executeUpdate() > 0) {
            return true;
        } else {
            return false;
        }
    }
    
    //CRUD EliminarConsola ---> Correcta
    public boolean eliminarConsola(Consola consola) throws SQLException {
        this.stmt = this.conexion.prepareStatement(this.eliminarConsola);
        stmt.setInt(1, consola.getIdConsola());
        if (this.stmt.executeUpdate() > 0) {
            return true;
        } else {
            return false;
        }
    }

}
