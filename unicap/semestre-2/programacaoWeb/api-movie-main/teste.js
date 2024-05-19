// Substitua 'sua_chave_de_api' pela chave de API que você recebeu ao se inscrever no site da OMDb API
const apiKey = "27aa9027";


// Função para buscar informações sobre um filme
async function buscarFilmePorTitulo(titulo) {
  const url = `http://www.omdbapi.com/?apikey=${apiKey}&t=${titulo}`;
  const response = await fetch(url);
  const data = await response.json();
  return data;
}

// Exemplo de uso da função para buscar informações sobre o filme "Titanic"
buscarFilmePorTitulo("Titanic")
  .then((filme) => {
    const {Title, Year, Rated, Director, Actors, Poster} = filme
    console.log(Title)
    // Exibindo algumas informações sobre o filme
    /* console.log("Título:", filme.Title);
    console.log("Ano de lançamento:", filme.Year);
    console.log("Classificação:", filme.Rated);
    console.log("Diretor:", filme.Director);
    console.log("Elenco:", filme.Actors);
    console.log("URL do pôster:", filme.Poster); */
  })
  .catch((error) => {
    console.error("Erro ao buscar informações do filme:", error);
  });
