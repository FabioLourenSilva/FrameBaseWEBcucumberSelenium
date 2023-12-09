Feature: ChitChat 2 no app

  Scenario: ChitChat Despedidas (Intenções)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Estou sempre por aqui. Precisando, é só chamar. 😉"
    And validar conteudo (ballon 4) "Se você gostou da nossa conversa, que tal contar isso na loja de aplicativos?"
    And validar conteudo (ballon 4) "É rapidinho e ajuda muito a reconhecerem meu trabalho!"

    Examples:
      | intent   |
      | Tchau    |
      | Até Logo |
      | Adeus    |
#      | Xau        |
#      | Bye        |
#      | bye bye    |
#      | Tchauzinho |