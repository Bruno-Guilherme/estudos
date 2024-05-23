import { getChamados } from '../../controller/dashboard.controller.js'

const btnChamado = document.getElementById('btn-chamado')

btnChamado.onclick = async () => {
    const table = document.getElementById('tb');
    const tbHeader = document.getElementById('tb-header');
    const legend = document.getElementById('legend');
    const listaChamados = await getChamados();
    listaChamados.sort((a, b) => new Date(a.createdAt) - new Date(b.createdAt));
    
    while (table.rows.length > 1) {
        table.deleteRow(1); // Começa a partir do segundo elemento, pois o primeiro é o cabeçalho
    }
    
    for (let i = 0; i < listaChamados.length; ++i) {
        const tableRow = document.createElement('tr');
        const tableDataNome = document.createElement('td');
        const tableDataAssunto = document.createElement('td');
        const tableDataStatus = document.createElement('td');
        const checkbox = document.createElement('input');

        tableDataNome.innerText = listaChamados[i].nome;
        tableDataAssunto.innerText = listaChamados[i].assunto;

        checkbox.name = listaChamados[i].objectId;
        checkbox.type = "checkbox";
        checkbox.checked = listaChamados[i].status;
        checkbox.disabled = true;
        tableDataStatus.appendChild(checkbox);

        tableRow.appendChild(tableDataNome);
        tableRow.appendChild(tableDataAssunto);
        tableRow.appendChild(tableDataStatus);
        table.appendChild(tableRow)
    }



}