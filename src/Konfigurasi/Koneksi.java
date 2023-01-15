/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Konfigurasi;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author Diskominfotik
 */
public class Koneksi {
      public static Connection getConnection() {
        Connection conn = null;
        String url = "jdbc:mysql://localhost:3306/19631232_ppdb";
        String user = "root";
        String password = "";
        try {
            conn = DriverManager.getConnection(url, user, password);
        } catch (SQLException e) {
            System.out.println(e);
        }
        return conn;
    }

    public static void main(String[] args) {
        try {
            Connection c = Koneksi.getConnection();
            System.out.println(String.format("Berhasil terhubung ke database %s " + ".", c.getCatalog()));
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}
