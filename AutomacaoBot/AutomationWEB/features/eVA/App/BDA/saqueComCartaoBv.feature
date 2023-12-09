Feature: Solicitar saque com cartão BV no app

  Scenario: Solicitar saque do cartão de crédito através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Caso tenha limite disponível para saque, é só ir em qualquer caixa eletrônico do Banco 24 Horas. 💰"
    And validar conteudo (ballon 3) "📌 Como essa transação é considerada um empréstimo, será cobrada uma tarifa na fatura do cartão para cada saque."
    And validar conteudo (ballon 3) "Se quiser saber como ver o limite disponível para saque ou os valores de tarifas, é só escolher uma das opções abaixo que eu te explico. 😃"

    Examples:
      | intent                                            |
      | Onde tiro dinheiro com cartão de crédito          |
      | Preciso sacar com cartão de crédito               |
      | Saque com cartão de crédito                       |
      | fazer saque com cartao de credito                 |
      | sacar dinheito com cartao de credito              |
      | aonde saco dinheiro com cartao de credito         |
      | como posso sacar dinheiro com cartao de credito?  |
      | Como faço pra sacar com cartão de crédito         |
      | como realizar um saque no cartao de credito?      |
      | onde posso fazer saques com meu cartao de credito |
      | quero sacar com cartao de credito                 |

  Scenario: Solicitar saque do cartão (ver limite disponivel)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "quero sacar com cartao de credito"
    And enviar a mensagem
    And clicar no botao "Ver limite disponível"
    Then validar conteudo (ballon 5) "Para ver o limite disponível pra saque aqui pelo app é só:"
    And validar conteudo (ballon 5) "Ir na tela inicial do app"
    And validar conteudo (ballon 5) "Escolher a opção Meus Cartões"
    And validar conteudo (ballon 5) "Tocar nos três pontos do canto superior direito 👉Informações gerais 👉 Limites e taxas"

  Scenario: Solicitar saque do cartão (tarifa saque com cartao)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "quero sacar com cartao de credito"
    And enviar a mensagem
    And clicar no botao "Ver valores de tarifas"
    Then validar conteudo (ballon 5) "Para ver o valor de tarifa para saque, aqui pelo app você precisa:"
    And validar conteudo (ballon 5) "Ir na tela inicial do app"
    And validar conteudo (ballon 5) "Escolher a opção Meus Cartões"
    And validar conteudo (ballon 5) "Tocar nos três pontos do canto superior direito 👉Informações gerais 👉 Limites e taxas"