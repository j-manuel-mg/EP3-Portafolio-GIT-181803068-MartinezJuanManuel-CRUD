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
public class Consola {

    private int idConsola;
    private String plataforma;
    private String modelo;
    private String almacenamiento;
    private String color;
    private int precio;

    //Marca o Id
    private int idMarca;
    private String marca;

    public Consola() {

    }

    //idConsola
    public Consola(int idConsola) {
        this.idConsola = idConsola;
    }
    
    //Contructor ---> Listado Consola
    public Consola(int idConsola, String plataforma, String modelo, String almacenamiento, String color, int precio, String marca) {
        this.idConsola = idConsola;
        this.plataforma = plataforma;
        this.modelo = modelo;
        this.almacenamiento = almacenamiento;
        this.color = color;
        this.precio = precio;
        this.marca = marca;
    }
    
    //Constructor ---> Agregar Consola 
    public Consola(String plataforma, String modelo, String almacenamiento, String color, int precio, int idMarca) {
        this.plataforma = plataforma;
        this.modelo = modelo;
        this.almacenamiento = almacenamiento;
        this.color = color;
        this.precio = precio;
        this.idMarca = idMarca;
    }
    
    //Contructor ---> Buscar Consola
    public Consola(String plataforma, String modelo, String almacenamiento, String color, int precio, String marca) {
        this.plataforma = plataforma;
        this.modelo = modelo;
        this.almacenamiento = almacenamiento;
        this.color = color;
        this.precio = precio;
        this.marca = marca;
    }
    
    //Constructor ---> Editar Consola
    public Consola(String plataforma, String modelo, String almacenamiento, String color, int precio, int  idMarca, int idConsola) {
        this.plataforma = plataforma;
        this.modelo = modelo;
        this.almacenamiento = almacenamiento;
        this.color = color;
        this.precio = precio;
        this.idMarca = idMarca;
        this.idConsola = idConsola;
    }
    

    //Metodos
    public int getIdConsola() {
        return this.idConsola;
    }

    public void setIdConsola(int idConsola) {
        this.idConsola = idConsola;
    }

    public String getPlataforma() {
        return this.plataforma;
    }

    public void setPlataforma(String plataforma) {
        this.plataforma = plataforma;
    }

    public String getModelo() {
        return this.modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getAlmacenamiento() {
        return this.almacenamiento;
    }

    public void setAlmacenamiento(String almacenamiento) {
        this.almacenamiento = almacenamiento;
    }

    public String getColor() {
        return this.color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getPrecio() {
        return this.precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    //idMarca o marca
    public int getIdMarca() {
        return this.idMarca;
    }

    public void setIdMarca(int idMarca) {
        this.idMarca = idMarca;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

}
