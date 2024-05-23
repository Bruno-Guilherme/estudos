export const dados = (nome, email, assunto, mensagem) => {
    return {nome, email, assunto, mensagem};
}

export const apiChamado = {
    url: "https://parseapi.back4app.com/classes/chamados",
    headers: {
        "X-Parse-Application-Id": "5vSmFTUUZHsIZtulxGAzMHu6xl7FKHb6bvxg3mcU",
        "X-Parse-REST-API-Key": "nDjc3dK6GTNZceMhCxvQSp0Pi9epkdgxS2iOz6Ow"
    },
}

export const apiResposta = {
    url: "https://parseapi.back4app.com/classes/respostas",
    headers: {
        "X-Parse-Application-Id": "5vSmFTUUZHsIZtulxGAzMHu6xl7FKHb6bvxg3mcU",
        "X-Parse-REST-API-Key": "nDjc3dK6GTNZceMhCxvQSp0Pi9epkdgxS2iOz6Ow"
    },
}

apiChamado['headersJson'] = { ...apiChamado.headers, "Content-Type": "application/json" }
apiResposta['headersJson'] = { ...apiResposta.headers, "Content-Type": "application/json" }



