const getCNPJ = async (num) => {
    const url = `https://api-publica.speedio.com.br/buscarcnpj?cnpj=${num}`;
    const resposta = await fetch(url);
    const dados = await resposta.json();

    return dados;
}

const btn = document.getElementById('btn');

btn.onclick = () => {
    const tbBody = document.getElementById('tbBody');
    const inputCNPJ = document.getElementById('cnpj');

    tbBody.innerHTML = '';
    getCNPJ(inputCNPJ.value)
        .then((dados) => {
            const tbRow = document.createElement('tr');
            const tbDataNome = document.createElement('td');
            const tbDataRazao = document.createElement('td');
            const tbDataCNPJ = document.createElement('td');
            const tbDataSTATUS = document.createElement('td');
            const tbDataContato = document.createElement('td');

            tbDataNome.innerText = dados['NOME FANTASIA'];
            tbDataRazao.innerText = dados['RAZAO SOCIAL'];
            tbDataCNPJ.innerHTML = dados.CNPJ;
            tbDataSTATUS.innerHTML = dados.STATUS;
            tbDataContato.innerHTML = `(${dados.DDD}) ${dados.TELEFONE}`;

            tbRow.appendChild(tbDataNome);
            tbRow.appendChild(tbDataRazao);
            tbRow.appendChild(tbDataCNPJ);
            tbRow.appendChild(tbDataSTATUS);
            tbRow.appendChild(tbDataContato);

            tbBody.appendChild(tbRow);
            inputCNPJ.value = '';
        })
        .catch((error) => {
            console.error(error);
        });
}
