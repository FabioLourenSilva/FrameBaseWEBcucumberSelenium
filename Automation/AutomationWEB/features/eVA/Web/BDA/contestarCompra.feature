Feature: Contestar uma compra no site

  Scenario: Contestar compra através das intencoes
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"

    Examples:
      | intent                     |
      | Nao fiz essa compra        |
      | nao fui eu quem comprou    |
      | quero contestar uma compra |
#      | esse valor nao fui eu que compreu          |
#      | nao reconheço esse valor na minha conta    |
#      | ajuda para fazer uma constetacao de compra |
#      | contestar essa compra                      |
#      | contestar esse valor                       |