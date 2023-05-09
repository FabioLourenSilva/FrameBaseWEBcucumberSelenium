Feature: Rastreio no cartao site

  Scenario: Solicitar rastreio do cartao através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Só me conta uma coisa: você quer saber sobre o cartão da Conta BV, que é débito e crédito, ou sobre um cartão só de crédito?"

    Examples:
      | intent                      |
      | rastrear cartão             |
      | Rastrear meu cartão         |
      | Entrega cartão              |
#      | previsão cartão chegar      |
#      | receber cartão              |
#      | Receber meu cartão          |
#      | Rastreamento cartão         |
#      | código rastreio cartão      |
#      | cartão despachado           |
#      | Cartão foi despachado       |
#      | não recebi cartão           |
#      | Entrega cartão atrasada     |
#      | cartão não chegou           |
#      | meu cartão ainda não chegou |
#      | Como rasteia cartão         |
#      | Quando chegar cartão        |
  
  Scenario: Solicitar rastreio do cartao de debito e credito da conta, até transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Quando chegar cartão"
    And enviar a mensagem
    And clicar no botao "Cartão de débito e crédito"
    Then validar conteudo (ballon 5) "Depois do pedido, seu cartão de débito e crédito da Conta BV chegará no seu endereço em até 2 semanas, dependendo da região em que você mora."
    And validar conteudo (ballon 5) "📌 Dica: assim que você receber a senha e os números do cartão por mensagem de texto no celular, já poderá começar a usá-lo através do cartão virtual no app BV."

  Scenario: Solicitar rastreio do cartao de credito da conta, até transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Quando chegar cartão"
    And enviar a mensagem
    And clicar no botao "Cartão de crédito"
    Then validar conteudo (ballon 5) "Se você pediu um cartão de crédito do BV e quer saber se foi aprovado, acesse aqui!"
    And validar conteudo (ballon 5) "Depois do pedido aprovado, seu cartão chegará no seu endereço em até 2 semanas, dependendo da região em que você mora."
    And validar conteudo (ballon 5) "📌 Dica: assim que receber a senha e os números do cartão por mensagem de texto no celular, já poderá começar a usar o seu cartão virtual, que você visualiza direto no app BV."
