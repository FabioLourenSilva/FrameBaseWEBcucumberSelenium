Feature: ChitChat no app

  Scenario: ChitChat qual seu time (Intenções)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Essa é fácil! Sou fã de carteirinha do time BV. Orgulho define. 💙"

    Examples:
      | intent                    |
      | Você tem um time?         |
      | Qual time você gosta?     |
      | Que time você torce?      |
      | Qual seu time?            |
      | Qual seu time do coração? |
      | Você gosta de futebol?    |
      | Você assiste futebol?     |