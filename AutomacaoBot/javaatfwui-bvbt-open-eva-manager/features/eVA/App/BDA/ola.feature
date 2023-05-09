Feature: OlA ao bot no app

  Scenario: Cumprimentar o bot através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Oi, fico feliz em te ver por aqui! 😁"
    And validar conteudo (ballon 3) "Me diz, como posso te ajudar?"

    Examples:
      | intent    |
      | olá       |
      | Oi        |
      | Tudo bem? |
#      | oi tudo bem?   |
#      | Como vc tá?    |
#      | como vai voce? |
#      | voce tá bem?   |
#      | Oie            |
#      | Hello          |