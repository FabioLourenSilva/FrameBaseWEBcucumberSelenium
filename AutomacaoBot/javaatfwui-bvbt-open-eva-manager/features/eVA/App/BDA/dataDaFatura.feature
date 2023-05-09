Feature: Ver data da fatura pra app

  Scenario: Solicitar visualização da data de vencimento do cartão através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "É fácil consultar a data de vencimento da fatura do seu Cartão BV. Você precisa:"
    And validar conteudo (ballon 3) "1. Ir na tela inicial do app"
    And validar conteudo (ballon 3) "2. Escolher a opção Meus cartões"

    Examples:
      | intent                                        |
      | Quero ver data de vencimento da fatura        |
      | Quando vence a fatura do meu cartão           |
      | Qual a data de vencimento da fatura do cartão |
#      | Que dia fecha a fatura do cartão              |
#      | Quando vence meu cartão                       |
#      | Como eu vejo o vencimento do meu cartão       |

  Scenario: Solicitar visualização da data de vencimento do cartão até transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 5) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"


