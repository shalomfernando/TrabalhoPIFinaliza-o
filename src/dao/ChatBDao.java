package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.Normalizer;

import pacote.Conversa;

public class ChatBDao {

/*
 *  Atualizar atendimento
 */

	public int AtualizarAtendimento(int id_Atendimento) {
		String sqlInsert = "update atendimento set Status_Atendimento = ? where ID_Atendimento = ? ";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlInsert);) {
			stm.setString(1, "Fechado");
			stm.setInt(2, id_Atendimento);
			stm.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
/*
 *  -----------------------------------------------------------------------------------------------------------------------------------------------
 */
/*
 *  Esse metodo pega a ultima pergunta. Essa ultima pergunta � para ser usado no metodo de troca de respostas 
 */

	public String Ultima() {
		Conversa conv = new Conversa();

		String sqlSelect = "select pergunta from conversa order by id_conversa desc limit 1";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			try (ResultSet rs = stm.executeQuery();) {
				if (rs.next()) {
					conv.setPergunta(rs.getString("pergunta"));
				} else {
					conv.setPergunta(null);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}

		return conv.getPergunta();
	}

	/*
	 * -------------------------------------------------------------------------------------------------------------------------------------------
	 * para tirar caracter especiais 
	 * 
	 */
	public String TirarEspeciais(String aux){
		String nova = new String();
		
		for(int i = 0; i<aux.length(); i++) {
			if((aux.charAt(i) == ',') || (aux.charAt(i) == '.') || (aux.charAt(i) == ';') || (aux.charAt(i) == ':')
					|| (aux.charAt(i) == '/') || (aux.charAt(i) == '#') || (aux.charAt(i) == '?') || (aux.charAt(i) == '!')) {
			
			
			}else {
				nova += aux.charAt(i);
			}
		}
		
		return nova;
	}
	
	public static String removeAccents(String str) {
	    str = Normalizer.normalize(str, Normalizer.Form.NFD);
	    str = str.replaceAll("[^\\p{ASCII}]", "");
	    return str;
	}
	
	/*
	Esse metodo adiciona ao banco qual tentativa foi finalizada a resposta
	correta que o chat retornou.
	*/

	public void  QualTentativaCorreta(int qualtentativa){
		if(qualtentativa==1){


		}else if(qualtentativa==2){


		}else if(qualtentativa==3){


		}

	}

	public int PegaQuantidadeDeAtendimentoHumano(){
		int quantidadeDeElementos = 0;
		String sqlSelect = "SELECT AtendimentosHumano FROM QuantidadeDeAtendimento";
		try (Connection conn = ConnectionFactory.obtemConexao();
			 PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			try (ResultSet rs = stm.executeQuery();) {
				while (rs.next()) {
					quantidadeDeElementos = new Integer(quantidadeDeElementos);
					quantidadeDeElementos = rs.getInt("AtendimentosHumano");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}


		return quantidadeDeElementos;
	}

	/*
	Esse metodo faz a contagem de quantos clientes foram para o contato
	humano
	*/
	
}