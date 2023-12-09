Feature: Status crédito financiamento App

  @CT1-CREDITO-FINANCIAMENTO-APP
  Scenario: Solicitar status de financiamento através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Entendi que você quer falar sobre financiamento"
    And validar conteudo (ballon 3) "Então me conta, sobre qual assunto posso te ajudar?"
    And validar conteudo (ballon 3) "Boleto de financiamento"
    And validar conteudo (ballon 3) "Empréstimo"
    And validar conteudo (ballon 3) "Alterar dado cadastrado"
    And validar conteudo (ballon 3) "Renegociação"
    And validar conteudo (ballon 3) "Simular Financiamento"
    And validar conteudo (ballon 3) "Status de Financiamento"


    Examples:
      | intent                                                    |
      | Status do financiamento                                   |
      | qual o status do meu financiamento?                       |
      | como vejo o status da minha solicitação de financiamento? |
      | andamento do pedido de financiamento de veículo           |
      | quero saber sobre o status do financiamento de veículo    |
      | pedi o financiamento e quero saber da solicitação         |
      | meu pedido de financiamento foi atendido?                 |
      | ver o status de financiamento do carro                    |

  @CT2-CREDITO-FINANCIAMENTO-APP
  Scenario: Solicitar status do meu financiamento
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Status do financiamento"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Entendi que você quer falar sobre financiamento"
    And clicar no botao "Status de Financiamento"
    Then validar conteudo (ballon 5) "Certo! Você pode acompanhar o status do pedido de financiamento de veículo aqui pelo app BV, é só:"
    And validar conteudo (ballon 5) "Ir na tela inicial"
    And validar conteudo (ballon 5) "Tocar no seu nome, que aparece logo na parte de cima da tela"
    And validar conteudo (ballon 5) "Depois, é só tocar em Minhas solicitações"
    And validar conteudo (ballon 5) "Pronto! Você vai ver suas solicitações finalizadas e em andamento"
    And validar conteudo (ballon 5) "E dá pra ver também se falta algum documento ou assinatura"
    And validar conteudo (ballon 6) "Se eu puder te ajudar com outra coisa, é só falar"