Feature: ChitChat 3 no app

  Scenario: ChitChat cumprimentos através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Oi, fico feliz em te ver por aqui!"
    And validar conteudo (ballon 3) "Me diz, como posso te ajudar?"

    Examples:
      | intent                     |
      | Que você tenha um bom dia  |
#      | bom dia                    |
#      | tenha um bom dia           |
#      | te desejo um bom dia       |
#      | que vc tenha uma boa tarde |
#      | boa tarde                  |
#      | tenha uma boa tarde        |
#      | te desejo uma boa tarde    |
#      | que vc tenha uma boa noite |
#      | boa noite                  |
#      | tenha uma boa noite        |
#      | te desejo uma boa noite    |