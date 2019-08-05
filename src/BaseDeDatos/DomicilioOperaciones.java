/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BaseDeDatos;

import Empleados.nuevoEmpleados;
import direccion.Localidad;
import direccion.Provincia;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.DefaultComboBoxModel;

/**
 *
 * @author jesus
 */
public class DomicilioOperaciones {
    Conexion con = new Conexion();
    
    public void obtenerLocalidad(Provincia provincia){
        con.conectarBaseDeDatos();
            
        try {
            PreparedStatement pstm = con.getConnection().prepareStatement("SELECT loc.idLocalidad, loc.nombre as nombrelocalidad, loc.codigoPostal, prov.idProvincia, prov.nombre as nombreprovincia FROM localidad as loc LEFT JOIN provincia as prov ON loc.idProvincia=prov.idProvincia where prov.idProvincia="+provincia.getIdProvincia()); // puede haber error
            ResultSet res = pstm.executeQuery();
            ResultSetMetaData rsmd = res.getMetaData();
            DefaultComboBoxModel model = new DefaultComboBoxModel();
            while(res.next()){
                Localidad localidad = new Localidad(res.getInt("idLocalidad"),res.getString("nombrelocalidad"),
                        res.getInt("codigoPostal"),new Provincia(res.getInt("idProvincia"),res.getString("nombreprovincia")));
                nuevoEmpleados.getComboLocalidad().removeAll();
                nuevoEmpleados.getComboLocalidad().addItem(localidad);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DomicilioOperaciones.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void obtenerProvincias(){
        con.conectarBaseDeDatos();
            
        try {
            PreparedStatement pstm = con.getConnection().prepareStatement("SELECT prov.idProvincia, prov.nombre as nombreprovincia FROM provincia as prov"); // puede haber error
            ResultSet res = pstm.executeQuery();
            ResultSetMetaData rsmd = res.getMetaData();
            DefaultComboBoxModel model = new DefaultComboBoxModel();
            while(res.next()){
                Provincia prov = new Provincia(res.getInt("idProvincia"), res.getString("nombreprovincia"));
                nuevoEmpleados.getComboProvincia().removeAll();
                nuevoEmpleados.getComboProvincia().addItem(prov);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DomicilioOperaciones.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
