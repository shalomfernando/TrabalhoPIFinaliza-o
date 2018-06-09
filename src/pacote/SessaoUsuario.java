package pacote;

import java.time.Duration;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;

public class SessaoUsuario {
	
		
	
   public  final List<MensagemAt> conversasAt = new ArrayList<MensagemAt>();

    public  final LocalDateTime inicioConversa = LocalDateTime.now();

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String nome = new String();




    public void addMensagem(String nome, String mensagem) {
       
    	conversasAt.add(new MensagemAt(nome,mensagem));
    }

    public List<MensagemAt> getConversasAt() {
        return conversasAt;
    }

    public  long getTempoSessao() {
        return Duration.between(inicioConversa, LocalDateTime.now()).get(ChronoUnit.SECONDS);
    }

    int id;

    public int getId() {
        return id;
    }
}
