package barbertime;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class Servico {  
    private String tservico;
    private float preco;
    private String descricao;
    
    public String setTservico(String t){
    return this.tservico = t;
    }
    
    public float setPreco(Float p){
    return this.preco = p;
    }
    
    public String setDescricao(String d){
    return this.descricao = d;
    }
    
    void status(){
        System.out.println("Tipo de servico: " + this.tservico);
        System.out.println("Preco: " + this.preco);
        System.out.println("Descricao: " + this.descricao);
    }

    public void saveToDatabase() {
        String sql = "INSERT INTO servico (tservico, preco, descricao) VALUES (?, ?, ?)";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, this.tservico);
            pstmt.setFloat(2, this.preco);
            pstmt.setString(3, this.descricao);
            pstmt.executeUpdate();
            System.out.println("--------------------------");
            System.out.println("Servico salvo com sucesso!");
            System.out.println("--------------------------");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}