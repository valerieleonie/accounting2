
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import util.DbConn;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author admin
 */
public class DlgLogin extends javax.swing.JDialog {

    /**
     * Creates new form Login
     */
    public static DlgLogin instance;
    private Connection conn;
    
    public DlgLogin() {
       try {
            instance = this;
            initComponents();
            databaseConnection();
            
            setLocationRelativeTo(null);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DlgLogin.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        txtUsername = new javax.swing.JTextField();
        txtPassword = new javax.swing.JPasswordField();
        btnLogin = new javax.swing.JButton();
        btnRegister = new javax.swing.JButton();
        jLabel4 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("Program");
        setMinimumSize(new java.awt.Dimension(480, 320));
        setResizable(false);
        getContentPane().setLayout(null);

        jLabel1.setFont(new java.awt.Font("Lucida Grande", 0, 24)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        jLabel1.setText("Welcome");
        getContentPane().add(jLabel1);
        jLabel1.setBounds(190, 50, 110, 32);

        jLabel2.setForeground(new java.awt.Color(255, 255, 255));
        jLabel2.setText("Username");
        getContentPane().add(jLabel2);
        jLabel2.setBounds(80, 110, 80, 25);

        jLabel3.setForeground(new java.awt.Color(255, 255, 255));
        jLabel3.setText("Password");
        getContentPane().add(jLabel3);
        jLabel3.setBounds(80, 150, 80, 25);
        getContentPane().add(txtUsername);
        txtUsername.setBounds(170, 110, 200, 25);
        getContentPane().add(txtPassword);
        txtPassword.setBounds(170, 150, 200, 25);

        btnLogin.setText("Login");
        btnLogin.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnLoginActionPerformed(evt);
            }
        });
        getContentPane().add(btnLogin);
        btnLogin.setBounds(80, 210, 100, 25);

        btnRegister.setText("Register");
        btnRegister.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnRegisterActionPerformed(evt);
            }
        });
        getContentPane().add(btnRegister);
        btnRegister.setBounds(270, 210, 100, 25);

        jLabel4.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/anggaran.jpg"))); // NOI18N
        getContentPane().add(jLabel4);
        jLabel4.setBounds(0, 0, 480, 320);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnLoginActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnLoginActionPerformed
        // TODO add your handling code here:
        String username = txtUsername.getText().trim();
        String password = txtPassword.getText().trim();

        if (username.equals("") && password.equals("")) {
            util.Sutil.mse(this, "Username and Password can't be empty !");
        } else if (username.equals("")) {
            util.Sutil.mse(this, "Username can't be empty !");
        } else if (password.equals("")) {
            util.Sutil.mse(this, "Password can't be empty !");
        } else if (!username.equals("") && !password.equals("")) {
            executeLogIn();
        }
    }//GEN-LAST:event_btnLoginActionPerformed

    private void databaseConnection() throws ClassNotFoundException {
        
        try {
            Class.forName(DbConn.JDBC_CLASS);
            conn = DriverManager.getConnection(DbConn.JDBC_URL,
                    DbConn.JDBC_USERNAME,
                    DbConn.JDBC_PASSWORD);

            if (conn != null) {
                System.out.println("Connected to DB!\n");
            }
        } catch (SQLException ex) {
            Logger.getLogger(DlgLogin.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    private void executeLogIn() {
        try {

            String sql = "SELECT * FROM username WHERE username = ? and password = ?";
            PreparedStatement pstatement = conn.prepareStatement(sql);
            pstatement.setString(1, txtUsername.getText());
            pstatement.setString(2, txtPassword.getText());

            ResultSet rs = pstatement.executeQuery();
            if (rs.next()) {
                if (rs.getInt("active") == 1) {
                    FrmMain main = new FrmMain(conn);
                    main.setVisible(true);
                    txtUsername.setText("");
                    txtPassword.setText("");
                    dispose();
                } else {
                    util.Sutil.mse(this, "Account not active !");
                }

            } else {
                util.Sutil.mse(this, "Username or password invalid !");
            }

            rs.close();
            pstatement.close();
        } catch (SQLException ex) {
            Logger.getLogger(DlgLogin.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    private void btnRegisterActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnRegisterActionPerformed
        // TODO add your handling code here:
        dlgRegister register = new dlgRegister(conn);
        register.setVisible(true);
    }//GEN-LAST:event_btnRegisterActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Metal".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(DlgLogin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(DlgLogin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(DlgLogin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(DlgLogin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the dialog */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                DlgLogin dialog = new DlgLogin();
                dialog.addWindowListener(new java.awt.event.WindowAdapter() {
                    @Override
                    public void windowClosing(java.awt.event.WindowEvent e) {
                        System.exit(0);
                    }
                });
                dialog.setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnLogin;
    private javax.swing.JButton btnRegister;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JPasswordField txtPassword;
    private javax.swing.JTextField txtUsername;
    // End of variables declaration//GEN-END:variables
}