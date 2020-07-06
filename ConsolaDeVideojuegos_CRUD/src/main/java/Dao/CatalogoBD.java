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
public class CatalogoBD {

    Connection conexion = new Conexion().getConexion();
    PreparedStatement stmt = null;
    ResultSet rs = null;

    private static final String listadoCatalogo = "SELECT * FROM cat_marca";

    private static final String buscarMarca = "SELECT * FROM cat_marca WHERE id_marca = ?";

    private static final String agregarMarca = "INSERT INTO cat_marca SET marca = ?";

    private static final String eliminarMarca = "DELETE FROM cat_marca WHERE id_marca = ?";

    public List<Catalogo> listadoCatalogo() throws SQLException {
        List<Catalogo> catalogo = new ArrayList<>();
        this.stmt = this.conexion.prepareStatement(this.listadoCatalogo);
        this.rs = this.stmt.executeQuery();
        while (this.rs.next()) {
            catalogo.add(new Catalogo(this.rs.getInt("id_marca"), this.rs.getString("marca")));
        }
        return catalogo;
    }

    public List<Catalogo> buscarMarcaId(int id) throws SQLException {
        List<Catalogo> marcaId = new ArrayList<>();
        this.stmt = this.conexion.prepareStatement(this.buscarMarca);
        this.stmt.setInt(1, id);
        this.rs = this.stmt.executeQuery();
        while (this.rs.next()) {
            marcaId.add(new Catalogo(this.rs.getString("marca")));
        }
        return marcaId;
    }

    public boolean agregarMarca(Catalogo marca) throws SQLException {
        this.stmt = this.conexion.prepareStatement(this.agregarMarca);
        this.stmt.setString(1, marca.getMarca());
        if (this.stmt.executeUpdate() > 0) {
            return true;
        } else {
            return false;
        }
    }
    
    public boolean eliminarMarca(Catalogo marca) throws SQLException {
        this.stmt = this.conexion.prepareStatement(this.eliminarMarca);
        stmt.setInt(1, marca.getIdMarca());
        if (this.stmt.executeUpdate() > 0) {
            return true;
        } else {
            return false;
        }
    }

}
