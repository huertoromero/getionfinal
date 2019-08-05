/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package direccion;

/**
 *
 * @author Jesus Pacheco
 */
public class Localidad {
    private Integer idLocalidad;
    private String nombre;
    private Integer codigoPostal;
    private Provincia provincia;

    public Localidad(Integer idLocalidad, String nombre, Integer codigoPostal, Provincia provincia) {
        this.idLocalidad = idLocalidad;
        this.nombre = nombre;
        this.codigoPostal = codigoPostal;
        this.provincia = provincia;
    }

    public Localidad(String nombre, Integer codigoPostal, Provincia provincia) {
        this.nombre = nombre;
        this.codigoPostal = codigoPostal;
        this.provincia = provincia;
    }

    public Integer getIdLocalidad() {
        return idLocalidad;
    }

    public void setIdLocalidad(Integer idLocalidad) {
        this.idLocalidad = idLocalidad;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Integer getCodigoPostal() {
        return codigoPostal;
    }

    public void setCodigoPostal(Integer codigoPostal) {
        this.codigoPostal = codigoPostal;
    }

    public Provincia getProvincia() {
        return provincia;
    }

    public void setProvincia(Provincia provincia) {
        this.provincia = provincia;
    }

    
    @Override
    public String toString() {
        return idLocalidad+"-"+nombre;
    }
    
    
}
