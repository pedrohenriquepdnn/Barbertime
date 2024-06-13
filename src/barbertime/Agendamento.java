package barbertime;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class Agendamento {
    private LocalDateTime dataHora;
    private String situacao;
    private int clienteId;
    private int servicoId;
    private int funcionarioId;
    
    public LocalDateTime setDataHora(LocalDateTime d){
    return this.dataHora = d;
    }
    
    public String setSituacao(String s){
    return this.situacao = s;
    }
    
    public void setClienteId(int clienteId) {
        this.clienteId = clienteId;
    }

    public void setServicoId(int servicoId) {
        this.servicoId = servicoId;
    }

    public void setFuncionarioId(int funcionarioId) {
        this.funcionarioId = funcionarioId;
    }

    public void status() {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm");
        System.out.println("Data e Hora: " + this.dataHora.format(formatter));
        System.out.println("Atendimento: " + this.situacao);
    }
    
    public void saveToDatabase() {
        String sql = "INSERT INTO agendamentos (cliente_id, servico_id, funcionario_id, data, hora, situacao) VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, this.clienteId);
            pstmt.setInt(2, this.servicoId);
            pstmt.setInt(3, this.funcionarioId);
            pstmt.setDate(4, java.sql.Date.valueOf(this.dataHora.toLocalDate()));
            pstmt.setTime(5, java.sql.Time.valueOf(this.dataHora.toLocalTime()));
            pstmt.setString(6, this.situacao);
            pstmt.executeUpdate();
            System.out.println("------------------------------");
            System.out.println("Agendamento salvo com sucesso!");
            System.out.println("------------------------------");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}