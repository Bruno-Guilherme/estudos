const apiKey = "27aa9027";
const data = {
  titulo: "Titulo: ",
  ano: "Ano de Laçamento: ",
  classificacao: "Classificação: ",
  diretor: "Diretor: ",
  elenco: "Elenco: ",
};

async function buscarFilmePorTitulo(titulo) {
  const url = `https://www.omdbapi.com/?apikey=${apiKey}&t=${titulo}`;
  const response = await fetch(url);
  const data = await response.json();
  return data;
}

function mostrarFilmes(dados) {
    const titulo = document.getElementById("titulo");
    const ano = document.getElementById("ano");
    const rated = document.getElementById("rated");
    const diretor = document.getElementById("diretor");
    const elenco = document.getElementById("elenco");
    const poster = document.getElementById('poster');

    const {Title, Year, Rated, Director, Actors, Poster} = dados;

    titulo.innerText = data.titulo + Title;
    ano.innerText = data.ano + Year;
    rated.innerText = data.classificacao + Rated;
    diretor.innerText = data.diretor + Director;
    elenco.innerText = data.elenco + Actors;

    poster.src = Poster;
    poster.alt = `Imagem do filme: ${Title}`;
  
  }
  
const form = document.getElementById('form-filme');

form.addEventListener('submit', (e) => {
    e.preventDefault();

    const nomeFilme = document.getElementById('nome');

    buscarFilmePorTitulo(nomeFilme.value)
    .then((dados) => {
        mostrarFilmes(dados);
    })
    .catch((erro) => {});
})

