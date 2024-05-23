import { dados, apiChamado, apiResposta } from '../model/model.api.js';

// Chamados 
const getChamados = async () => {
    /*
        Seleciona TODAS as linhas da tabela de Chamados
        SELECT * FROM chamados;
    */
    const response = await fetch(apiChamado.url, {
        method: 'GET',
        headers: apiChamado.headers
    });

    const data = await response.json();

    return data.results;
}

const putChamado = async (chamadoID, resposta) => {
    /*
        Atualiza o status do chamado e o relaciona à resposta dada.
        UPDATE chamado
        SET resposta_id = resposta_id, status = true
        WHERE 
    */
    const mudancas = {"resposta_id": resposta.resposta, "status": true}
    await fetch(
        `${apiChamado.url}/${chamadoID}`,
        {
            method: "PUT",
            headers: apiChamado.headersJson,
            body: JSON.stringify(mudancas)
        }
    )
}

// Respostas

const getRespostas = async () => {
    // Ok
    const response = await fetch(apiResposta.url, {
        method: 'GET',
        headers: apiResposta.headers
    })
    
    const data = await response.json();
    return data.results;
}




/*
const resultado = model.dados('João', 'joao@email.com', 'Assunto', 'Mensagem');
console.log(resultado);
console.log(model.apiChamado.url)
*/

/* getChamados().then(result => {
    console.log(result);
}).catch(error => {
    console.error('Erro ao obter mensagens:', error);
}); */

/* getRespostas().then((results => {
    console.log(results)
})).catch(erro => {
    console.log("ERRO")
}) */

/* const chamado = {obejectId: 'D49solHaRp'}
putMensagem(chamado, "chmado concluído") */
//console.log(dados)

export { getChamados }