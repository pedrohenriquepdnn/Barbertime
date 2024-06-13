package barbertime;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Funcionário {
    private String nome;
    private String telefone;
    private String endereco;
    
    public String setNome(String s){
    return this.nome = s;
    }
    
    public String setTelefone(String t){
    return this.telefone = t;
    }
    
    public String setEndereco(String e){
    return this.endereco = e;
    }
    
    public void status(){
        System.out.println("============");
        System.out.println("PROFISSIONAL");
        System.out.println("============");
        System.out.println("Funcionario: " + this.nome);
        System.out.println("Telefone Funcionario: " + this.telefone);
        System.out.println("Endereco: " + this.endereco);
    }

   public void saveToDatabase() {
        String sql = "INSERT INTO funcionarios (nome, telefone, endereco) VALUES (?, ?, ?)";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, this.nome);
            pstmt.setString(2, this.telefone);
            pstmt.setString(3, this.endereco);
            pstmt.executeUpdate();
            System.out.println("------------------------------");
            System.out.println("Funcionario salvo com sucesso!");
            System.out.println("------------------------------");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
