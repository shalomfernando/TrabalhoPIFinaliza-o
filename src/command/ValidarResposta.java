package command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ChatBDao;
import pacote.ChatB;
import pacote.Resposta;
import service.Atend_ConversaService;
import service.ChatService;

public class ValidarResposta implements Command {

	public static final String CHAT = "chat";
	public static final String RESPOSTA_NAO_ENCONTRADA = "Desculpe, mas não tenho a resposta para sua pergunta! Você pode reformular a sua pergunta?";
	public static final String ATT_PERG = "pergunta";
	public ChatService chatService = new ChatService();
	ChatBDao chatJ = new ChatBDao();
	public static int Contador=1;
	private static final long serialVersionUID = 1L;
	int sim = 0;

	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		if(Contador==1){
			Contador =2;
		}else if(Contador==2){
			Contador = 3;
		}
		
		
		HttpSession session = request.getSession();
		ChatB chat = (ChatB) session.getAttribute(CHAT);
		String pergunta = request.getParameter(ATT_PERG);

		String respostaA = chatJ.TirarEspeciais(pergunta);
		String respostaB = chatJ.removeAccents(respostaA);
		Resposta resposta = chatService.buscaResposta(respostaB.toLowerCase());

		ChatBDao dao = new ChatBDao();
		resposta = chatService.SimBotaoo(dao.Ultima());

		chat.addConversa(dao.Ultima(), resposta.getValor());

		// veicular o atendimento com a resposta
		Atend_ConversaService ate = new Atend_ConversaService();
		ate.Select();

		session.setAttribute(CHAT, chat);

		RequestDispatcher view = request.getRequestDispatcher("chat.jsp");
		view.forward(request, response);

	}

}
