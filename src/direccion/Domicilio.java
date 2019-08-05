/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package direccion;

import BaseDeDatos.DomicilioOperaciones;
import javax.swing.JComboBox;

/**
 *
 * @author Jesus Pacheco
 */
public class Domicilio {
    private Integer idDomicilio;
    private String calle;
    private Integer numero;
    private Localidad localidad;
    private DomicilioOperaciones op = new DomicilioOperaciones();

    public Domicilio() {
    }

    public Integer getIdDomicilio() {
        return idDomicilio;
    }

    public void setIdDomicilio(Integer idDomicilio) {
        this.idDomicilio = idDomicilio;
    }

    public String getCalle() {
        return calle;
    }

    public void setCalle(String calle) {
        this.calle = calle;
    }

    public Integer getNumero() {
        return numero;
    }

    public void setNumero(Integer numero) {
        this.numero = numero;
    }

    public Localidad getLocalidad() {
        return localidad;
    }

    public void setLocalidad(Localidad localidad) {
        this.localidad = localidad;
    }

    public DomicilioOperaciones getOp() {
        return op;
    }

    public void setOp(DomicilioOperaciones op) {
        this.op = op;
    }

    
    public Domicilio(String calle, Integer numero, Localidad localidad) {
        this.calle = calle;
        this.numero = numero;
        this.localidad = localidad;
    }
    public void obtenerLocalidad(Provincia provincia, JComboBox comboBox){
        op.obtenerLocalidad(provincia,comboBox);
    }
    public void obtenerProvincias(JComboBox comboBox){
        op.obtenerProvincias(comboBox);
    }
}
