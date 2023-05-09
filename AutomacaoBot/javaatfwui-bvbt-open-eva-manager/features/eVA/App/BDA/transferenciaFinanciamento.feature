Feature: Solicitar transferencia de financiamento no app

  Scenario: Solicitar transferencia de financiamento através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Uma pessoa do time BV pode te ajudar com a transferência do seu financiamento de veículo. É só tocar no botão abaixo que eu chamo aqui pra você. 😃"

    Examples:
      | intent                                                     |
      | como faço para transferir o meu financiamento?             |
      | mudar o financiamento para o nome de outra pessoa          |
      | Transferencia de financiamento                             |
      | transferência de titularidade de financiamento             |
      | Titularidade de financiamento                              |
      | como eu posso transferir o financiamente para outra pessoa |
      | saber como transferir divida de financiamento              |
      | simulação para transferir o financiamento                  |
      | fazer uma transferência de dívida                          |
      | trocar titularidade do financiamento                       |
      | passar financiamento pra outra pessoa                      |
      | quero passar meu financiamento para outra pessoa           |
      | como passar o financiamento para outra pessoa?             |