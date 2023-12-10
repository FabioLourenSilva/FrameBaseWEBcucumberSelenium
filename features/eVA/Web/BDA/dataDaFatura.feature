Feature: Ver data da fatura pra site

  Scenario: Solicitar visualização da data de vencimento do cartão através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para ver a data de vencimento da fatura do seu Cartão BV aqui pelo site, você precisa:"
    And validar conteudo (ballon 3) "1. Acessar a Minha BV com CPF e senha"
    And validar conteudo (ballon 3) "2. Clicar no menu Cartões"

    Examples:
      | intent                                        |
      | Quero ver data de vencimento da fatura        |
      | Quando vence a fatura do meu cartão           |
      | Qual a data de vencimento da fatura do cartão |
#      | Que dia fecha a fatura do cartão              |
#      | Quando vence meu cartão                       |
#      | Como eu vejo o vencimento do meu cartão       |

  Scenario: Solicitar visualização da data de vencimento do cartão até transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Quero ver data de vencimento da fatura "
    And enviar a mensagem
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 5) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"


