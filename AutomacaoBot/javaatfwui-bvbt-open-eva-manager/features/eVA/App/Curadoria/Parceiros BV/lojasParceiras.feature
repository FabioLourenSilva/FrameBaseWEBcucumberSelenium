Feature: lojas parceiras app

  @CT1-LOJAS-PARCEIRAS-APP
  Scenario: Perguntar sobre lojas parceiras através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para encontrar uma loja parceira perto de você, é só:"
    And validar conteudo (ballon 3) "Acessar o site do BV"
    And validar conteudo (ballon 3) "Escolher qual segmento você procura"
    And validar conteudo (ballon 3) "Selecionar o seu Estado, cidade e bairro"
    And validar conteudo (ballon 3) "Pronto! Vamos achar a loja mais próxima a você."
    And validar conteudo (ballon 3) "Acesse o site"


    Examples:
      | intent                               |
      | onde encontro uma loja perto de mim? |
      | qual a loja mais próxima             |
      | quero ir até uma loja parceira       |
      | como faço paa consultar uma loja?    |
      | quero consultar uma loja parceira    |
      | loja mais proxima da minha casa      |