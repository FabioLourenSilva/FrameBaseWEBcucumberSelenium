Feature: Solicitar cópia/segunda via de contrato

  Scenario: Solicitar saque do cartão de crédito através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para pegar a segunda via do seu contrato, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

    Examples:
      | intent                                                  |
      | Quero minha segunda via de contrato                     |
      | Preciso da 2 via do meu contrato                        |
      | 2 via do contrato                                       |
      | segunda via do contrato                                 |
      | como pego a 2 via do meu contrato?                      |
      | Quero o meu contrato de financiamento                   |
      | Preciso da segunda via do meu contrato de financiamento |
      | 2 via do contrato de financiamento                      |
      | Quero pegar a 2 via do meu contrato                     |
      | Quero pegar a segunda via do meu contrato               |
      | Como pego a segunda via do meu contrato?                |
      | segunda via do meu contrato de financiamento            |
      | perdi o meu contrato de financiamento                   |