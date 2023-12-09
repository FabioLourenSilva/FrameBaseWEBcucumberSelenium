Feature: Chave pix sumiu web

  @CT1-CHAVE-PIX-WEB
  Scenario: Informar sobre o desaparecimento da chave pix (intenções)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "No dia 02 de agosto, o número do banco BV mudou para 413."
    And validar conteudo (ballon 3) "Antes dessa mudança, enviamos algumas mensagens de texto para o seu número de celular cadastrado explicando a importância de fazer a portabilidade da chave Pix."
    And validar conteudo (ballon 3) "Mas caso não tenha recebido o SMS, pode ficar tranquilo, é só cadastrar a chave novamente. 😃"


    Examples:
      | intent                                |
      | Minha chave pix sumiu                 |
      | Minha chave pix foi excluída          |
      | Cadê minha chave pix?                 |
      | Não estou encontrando minha chave pix |
      | Minha chave desapareceu               |
      | Minha chave pix nao está aparecendo   |
      | Chave pix sumiu do nada               |
      | Não encontro minha chave pix          |
      | Por que minha chave pix sumiu?        |
      | Apagaram minha chave pix              |
      | Alguém apagou minha chave pix         |