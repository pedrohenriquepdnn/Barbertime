package barbertime;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

class Pagamento {
    private LocalDateTime dataHora;
    private String metodo;
    private int clienteId;
    private int funcionarioId;
    
    public LocalDateTime setDataHora(LocalDateTime d){
    return this.dataHora = d;
    }
    
    public String setMetodo(String m){
    return this.metodo = m;
    }
    
    public void setClienteId(int clienteId) {
        this.clienteId = clienteId;
    }

    public void setFuncionarioId(int funcionarioId) {
        this.funcionarioId = funcionarioId;
    }
    
    public void status() {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm");
        System.out.println("Dia do pagamento: " + dataHora.format(formatter));
        System.out.println("Metodo: " + metodo);
        }
        
        public void saveToDatabase() {
        String sql = "INSERT INTO pagamentos (cliente_id, funcionario_id, data, hora, metodo) VALUES (?, ?, ?, ?, ?)";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, this.clienteId);
            pstmt.setInt(2, this.funcionarioId);
            pstmt.setDate(3, java.sql.Date.valueOf(this.dataHora.toLocalDate()));
            pstmt.setTime(4, java.sql.Time.valueOf(this.dataHora.toLocalTime()));
            pstmt.setString(5, this.metodo);
            pstmt.executeUpdate();
            System.out.println("----------------------------");
            System.out.println("Pagamento salvo com sucesso!");
            System.out.println("----------------------------");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}