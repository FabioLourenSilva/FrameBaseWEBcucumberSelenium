Feature: ChitChat 2 no site

  Scenario: ChitChat Despedidas (Intenções)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Estou sempre por aqui. Precisando, é só chamar. 😉"

    Examples:
      | intent   |
      | Tchau    |
#      | Até Logo |
#      | Adeus    |
#      | Xau        |
#      | Bye        |
#      | bye bye    |
#      | Tchauzinho |