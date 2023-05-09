Feature: ChitChat no app

  Scenario: ChitChat onde você nasceu (Intenções)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Nasci na cidade de Votorantim, interior de São Paulo. Mas, com o mundo virtual de hoje, consigo morar em todos os lugares do Brasil ao mesmo tempo. Por isso, estou sempre com você. Ou pelo menos quando tem conexão com a internet. 😅"

    Examples:
      | intent                      |
      | De onde vc é                |
      | Você é de São Paulo         |
      | Você é de onde?             |
      | Onde vc nasceu?             |
      | De qual cidade você é?      |
      | Você nasceu em qual cidade? |
      | Onde você nasceu?           |