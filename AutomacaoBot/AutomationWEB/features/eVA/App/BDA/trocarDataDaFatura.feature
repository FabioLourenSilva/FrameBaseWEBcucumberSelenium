Feature: Trocar data da fatura pra app

  Scenario: Solicitar mudança da data de vencimento do cartão através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para alterar a data de vencimento da fatura do seu Cartão BV, você precisa:"
    And validar conteudo (ballon 3) "✅Estar com o pagamento da fatura em dia"
    And validar conteudo (ballon 3) "✅Não ter compras parceladas com juros neste e nos próximos meses"
    And validar conteudo (ballon 3) "✅Não ter alterado a data nos últimos 6 meses"
    And validar conteudo (ballon 3) "✅Não ter faturas anteriores parceladas"

    Examples:
      | intent                                                 |
      | Quero mudar a data de vencimento do boleto da fatura   |
      | Mudar a data de fechamento da fatura                   |
      | Alterar data de fechamento do cartão                   |
      | Como faço pra alterar a data dos vencimentos da fatura |
      | Por favor mudar a data da fatura para o dia            |
      | Trocar a data do vencimento da fatura                  |
      | Trocar a data da fatura                                |
      | Solicitar a mudança na data do vencimento da fatura    |
      | Trocar o vencimento da fatura                          |
      | Alterar a data de vencimento da fatura                 |
      | Troca a data do vencimento do cartão BV                |
      | Alterar a data do vencimento do cartão de crédito      |

  Scenario: Solicitar mudança da data de vencimento do cartão, visualizar a situação da fatura do cartão e saber como alterar a data
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Alterar a data do vencimento do cartão de crédito "
    And enviar a mensagem
    And clicar no botao "Alterar data"
    Then validar conteudo (ballon 5) "Vamos lá! Vou chamar uma pessoa do time do BV aqui pra fazer essa alteração."
    And validar conteudo (ballon 5) "📌 Dica: depois de alterar a data, você não poderá fazer compras parceladas com juros ou parcelar a fatura atual até receber a nova. Se fizer isso, a alteração será cancelada e você terá que esperar 6 meses para pedir outra."

  Scenario: Solicitar mudança da data de vencimento do cartão, visualizar a situação da fatura do cartão e deixar para depois
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Alterar a data do vencimento do cartão de crédito "
    And enviar a mensagem
    And clicar no botao "Deixar para depois"
    Then validar conteudo (ballon 5) "Se eu puder te ajudar com outra coisa, me conta aqui. 😃"