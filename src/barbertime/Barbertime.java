package barbertime;
import java.time.LocalDateTime;
public class Barbertime {
    public static void main(String[] args) {
        Cliente c1 = new Cliente();
        c1.setNome("Erivaldo");
        c1.setEmail("123@gmail.com");
        c1.setTelefone("(21) 99999-9999");
        c1.status();
        c1.saveToDatabase();
        
        Servico s1 = new Servico();
        s1.setTservico("Corte Cabelo");
        s1.setPreco (27.99f);
        s1.setDescricao("mid fade");
        s1.status();
        s1.saveToDatabase();
        
        Agendamento a1 = new Agendamento();
        a1.setDataHora(LocalDateTime.of(2024, 6, 2, 13, 45));
        a1.setSituacao("Confirmado");
        a1.setClienteId(1);  // Substitua com o ID real do cliente
        a1.setServicoId(1);  // Substitua com o ID real do serviço
        a1.setFuncionarioId(1);  // Substitua com o ID real do funcionário
        a1.status();
        a1.saveToDatabase();
        
        Pagamento p1 = new Pagamento();
        p1.setDataHora(LocalDateTime.of(2024, 6, 2, 13, 45));
        p1.setMetodo("A Vista");
        p1.setClienteId(1);  // Substitua com o ID real do cliente
        p1.setFuncionarioId(1);  // Substitua com o ID real do funcionário
        p1.status();
        p1.saveToDatabase();
        
        Funcionário f1 = new Funcionário();
        f1.setNome("Dona Benta");
        f1.setTelefone("(21) 99999-9999");
        f1.setEndereco("Recreio - Rio de Janeiro");
        f1.status();
        f1.saveToDatabase();
    }
    
}
