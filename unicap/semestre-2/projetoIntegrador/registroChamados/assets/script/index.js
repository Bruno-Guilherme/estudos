import postChamado from '../../controller/index.controller.js';

const form = document.getElementById('form-chamado');


form.addEventListener('submit', (e) => {
    e.preventDefault();
    const nome = document.getElementById('nome');
    const email = document.getElementById('email');
    const assunto = document.getElementById('assunto');
    const mensagem = document.getElementById('mensagem');

    postChamado(nome.value, email.value, assunto.value, mensagem.value);

    nome.value = ''
    email.value = ''
    assunto.value = ''
    mensagem.value = ''

    //window.location.href = "./pages/page2.html"
})

