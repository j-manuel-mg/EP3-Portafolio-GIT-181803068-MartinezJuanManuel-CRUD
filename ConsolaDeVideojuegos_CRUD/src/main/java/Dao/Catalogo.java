/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

/**
 *
 * @author Juan Manuel
 */
public class Catalogo {
    
    private int idMarca;
    private String marca;

    public Catalogo() {
        
    }

    public Catalogo(String marca) {
        this.marca = marca;
    }

    public Catalogo(int idMarca) {
        this.idMarca = idMarca;
    }

    public Catalogo(int idMarca, String marca) {
        this.idMarca = idMarca;
        this.marca = marca;
    }

    public int getIdMarca() {
        return this.idMarca;
    }

    public void setIdMarca(int idMarca) {
        this.idMarca = idMarca;
    }

    public String getMarca() {
        return this.marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }
}
