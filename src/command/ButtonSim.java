package command;

import dao.ChatBDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ButtonSim implements Command {
    @Override
    public void executar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Pega o valor de qual tentativa foi resolvida*/
        ValidarResposta validarResposta = new ValidarResposta();
        int QualTentativa = validarResposta.Contador;

        /*Adiciona ao banco em qual tentativa foi resolvida*/
        ChatBDao dao = new ChatBDao();
        dao.QualTentativaCorreta(QualTentativa);


        RequestDispatcher view = request.getRequestDispatcher("chat.jsp");
        view.forward(request, response);
    }
}
