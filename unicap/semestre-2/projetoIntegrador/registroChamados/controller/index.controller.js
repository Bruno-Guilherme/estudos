import { apiChamado } from '../model/model.api.js';

const postChamado = async (nome, email, assunto, mensagem) => {
    /*
        Função para adicionar valores ao banco de dados.
        
        INSERT INTO chamados (nome, email, assunto, mensagem)
        VALUES (nome.values, email.values, assunto.values, mensagem.values);
    */
    const data = { nome, email, assunto, mensagem };

    await fetch(
        apiChamado.url, {
        method: "POST",
        headers: apiChamado.headersJson,
        body: JSON.stringify(data),
    })
}

export default postChamado;