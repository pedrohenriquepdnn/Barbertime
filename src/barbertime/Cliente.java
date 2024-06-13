package barbertime;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Cliente {
    private String nome;
    private String email;
    private String telefone;
    
    public String setNome(String n){
    return this.nome = n;
    }
    
    public String setEmail(String e){
    return this.email = e;
    }
    
    public String setTelefone(String t){
    return this.telefone = t;
    }
    
    public void status(){
        System.out.println("===================");
        System.out.println("NOTIFICACAO SERVICO");
        System.out.println("===================");
        System.out.println("Cliente: " + this.nome);
        System.out.println("Email: " + this.email);
        System.out.println("Telefone: " + this.telefone);
    }
    
    public void saveToDatabase() {
        String sql = "INSERT INTO clientes (nome, email, telefone) VALUES (?, ?, ?)";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, this.nome);
            pstmt.setString(2, this.email);
            pstmt.setString(3, this.telefone);
            pstmt.executeUpdate();
            System.out.println("--------------------------");
            System.out.println("Cliente salvo com sucesso!");
            System.out.println("--------------------------");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}