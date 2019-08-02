package Compras;

import Clases.Compra;
import java.awt.Color;
import javax.swing.JOptionPane;
import javax.swing.SwingConstants;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.DefaultTableModel;

public class reporteCompras extends javax.swing.JDialog {

 public static DefaultTableModel m;
  Compra com = new Compra();
  private String[] titulos;
  public String strTituloPDF = "UTN - FRT";
  public DefaultTableCellRenderer modelocentrar = new DefaultTableCellRenderer();
  
  public reporteCompras(java.awt.Frame parent, boolean modal) {
    super(parent, modal);
    initComponents();
    com.prov.cargarProveedores(3);

    nuevo();
   }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jLabel4 = new javax.swing.JLabel();
        jPanel3 = new javax.swing.JPanel();
        btnMostrar = new javax.swing.JButton();
        btnCancelar = new javax.swing.JButton();
        btnImprimir1 = new javax.swing.JButton();
        radioTodos = new javax.swing.JRadioButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        tablaReportes = new javax.swing.JTable();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setResizable(false);

        jPanel1.setBackground(new java.awt.Color(0, 204, 204));

        jPanel2.setBackground(new java.awt.Color(0, 102, 102));

        jLabel4.setFont(new java.awt.Font("Segoe UI Light", 1, 14)); // NOI18N
        jLabel4.setForeground(new java.awt.Color(255, 255, 255));
        jLabel4.setText("LISTADO DE COMPRAS");

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel4)
                .addContainerGap(754, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel4)
                .addContainerGap(24, Short.MAX_VALUE))
        );

        jPanel3.setBackground(new java.awt.Color(0, 102, 102));

        btnMostrar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/reportee.png"))); // NOI18N
        btnMostrar.setText("MOSTRAR");
        btnMostrar.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        btnMostrar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnMostrarActionPerformed(evt);
            }
        });

        btnCancelar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/cancelar.png"))); // NOI18N
        btnCancelar.setText("CANCELAR");
        btnCancelar.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        btnCancelar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCancelarActionPerformed(evt);
            }
        });

        btnImprimir1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/sali.png"))); // NOI18N
        btnImprimir1.setText("ATRAS");
        btnImprimir1.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        btnImprimir1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnImprimir1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(btnMostrar)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(btnCancelar)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 653, Short.MAX_VALUE)
                .addComponent(btnImprimir1)
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnMostrar)
                    .addComponent(btnCancelar, javax.swing.GroupLayout.PREFERRED_SIZE, 38, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnImprimir1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(22, 22, 22))
        );

        radioTodos.setBackground(new java.awt.Color(0, 204, 204));
        radioTodos.setFont(new java.awt.Font("Segoe UI Light", 1, 14)); // NOI18N
        radioTodos.setSelected(true);
        radioTodos.setText("MOSTRAR TODAS");
        radioTodos.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                radioTodosMouseClicked(evt);
            }
        });

        tablaReportes.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        tablaReportes.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        tablaReportes.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tablaReportesMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(tablaReportes);

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 922, Short.MAX_VALUE)
            .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(10, 10, 10)
                .addComponent(radioTodos, javax.swing.GroupLayout.PREFERRED_SIZE, 197, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(radioTodos)
                .addGap(48, 48, 48)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 341, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(5, 5, 5)
                .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        setSize(new java.awt.Dimension(938, 579));
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void btnMostrarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnMostrarActionPerformed
        if(radioTodos.isSelected()){

          muestra3();
         }
         
}//GEN-LAST:event_btnMostrarActionPerformed

    private void btnCancelarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCancelarActionPerformed
     m.setRowCount(0);
     btnMostrar.setEnabled(true);
     radioTodos.setEnabled(true);
     radioTodos.setSelected(true);

}//GEN-LAST:event_btnCancelarActionPerformed

    private void radioTodosMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_radioTodosMouseClicked
      
}//GEN-LAST:event_radioTodosMouseClicked

    private void tablaReportesMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tablaReportesMouseClicked
     tablaReportes.setSelectionBackground(Color.YELLOW);
     mostrarLineaCompra lc = new mostrarLineaCompra(null,true);
     lc.setVisible(true);
    }//GEN-LAST:event_tablaReportesMouseClicked

    private void btnImprimir1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnImprimir1ActionPerformed
      dispose();
    }//GEN-LAST:event_btnImprimir1ActionPerformed

    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                reporteCompras dialog = new reporteCompras(new javax.swing.JFrame(), true);
                dialog.addWindowListener(new java.awt.event.WindowAdapter() {
                    public void windowClosing(java.awt.event.WindowEvent e) {
                        System.exit(0);
                    }
                });
                dialog.setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnCancelar;
    private javax.swing.JButton btnImprimir1;
    public static javax.swing.JButton btnMostrar;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JRadioButton radioTodos;
    public static javax.swing.JTable tablaReportes;
    // End of variables declaration//GEN-END:variables

  /*  private void muestra() {
    if(!txtFechaDel.getText().equals("")&& !txtFechaAl.getText().equals("")){
     btnMostrar.setEnabled(false);
     radioProveedor.setEnabled(false);
     radioTodos.setEnabled(false);
     String fechadel = txtFechaDel.getText();
     String fechaAl = txtFechaAl.getText();
     com.reporteCompleto(fechadel,fechaAl);
    }
    else{
     JOptionPane.showMessageDialog(this,"Ingrese Rango de Fechas a buscar","Error",JOptionPane.ERROR_MESSAGE);
     btnMostrar.setEnabled(true);
    }
    }

  /* private void muestra2() {
    if(!txtFechaDel.getText().equals("") && !txtFechaAl.getText().equals("")){
     btnMostrar.setEnabled(false);
     radioTodos.setEnabled(false);

     }
     else{
      JOptionPane.showMessageDialog(this,"Ingrese Rango de Fechas a buscar","Error",JOptionPane.ERROR_MESSAGE);
     }
    }
*/
    private void muestra3() {
     btnMostrar.setEnabled(false);
     radioTodos.setEnabled(false);
     com.reporteCompras();
    }

    private void nuevo() {

     titulos = new String[5];
     titulos[0]= "Numero de Compra";
//     titulos[1] = "DniEmpleado";
     titulos[1] = "Razon Social";
     titulos[2] = "Fecha";
     titulos[3] = "Hora";
     titulos[4] = "Total";
     m = new DefaultTableModel(null,titulos);
     tablaReportes.setModel(m);
     for(int i=0; i < 5; i++){
     modelocentrar.setHorizontalAlignment(SwingConstants.CENTER);
     tablaReportes.getColumnModel().getColumn(i).setCellRenderer(modelocentrar);
     }
    }

    private void muestra4() {
     btnMostrar.setEnabled(false);
     radioTodos.setEnabled(false);
     com.reporteProveedor();
    }


}
