package Clases;

import BaseDeDatos.Operaciones;
import direccion.Domicilio;

public class Proveedor {

    public FechayHora fr = new FechayHora();

    private Operaciones op = new Operaciones();
    private int idProveedor;
    private String razonSocial;
    private long telefono;
    private String email;
    private String fechaAlta;
    private String fechaBaja;
    private int estado;
    private Domicilio domicilio;

    public Domicilio getDomicilio() {
        return domicilio;
    }

    public void setDomicilio(Domicilio domicilio) {
        this.domicilio = domicilio;
    }

    public int getIdProveedor() {
        return idProveedor;
    }

    public void setIdProveedor(int idProveedor) {
        this.idProveedor = idProveedor;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public String getFechaAlta() {
        return fechaAlta;
    }

    public void setFechaAlta(String fechaAlta) {
        this.fechaAlta = fechaAlta;
    }

    public String getFechaBaja() {
        return fechaBaja;
    }

    public void setFechaBaja(String fechaBaja) {
        this.fechaBaja = fechaBaja;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRazonSocial() {
        return razonSocial;
    }

    public void setRazonSocial(String razonSocial) {
        this.razonSocial = razonSocial;
    }

    public long getTelefono() {
        return telefono;
    }

    public void setTelefono(long telefono) {
        this.telefono = telefono;
    }

    public void nuevoProveedor() {
        op.nuevoProveedor(razonSocial, telefono, email, fechaAlta, estado, domicilio);
    }

    public void busquedaDeProveedores() {
        op.BuscarProveedores(razonSocial);
    }

    public void listadoDeProveedores() {
        op.listaDeProveedores();
    }

    public void eliminarProveedor() {
        op.eliminarProveedor(razonSocial, estado, fechaBaja);
    }

    public void actualizarProveedor() {
        op.actualizarProveedor(razonSocial, telefono, email, direccion, provincia);
    }

    public void cargarProveedores(int tipo) {
        op.cargarProveedores(tipo);
    }

}
