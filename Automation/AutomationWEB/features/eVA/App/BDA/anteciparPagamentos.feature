Feature: Antecipar pagamentos no app

  Scenario: Solicitar antecipacao das parcelas atraves das intencoes
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Entendi que você quer fazer uma antecipação. Você gostaria de antecipar o pagamento da sua fatura ou seu boleto de financiamento?"


    Examples:
      | intent    |
      | Antecipar |
      | Antecipar pagamento                              |
      | quero pagar antes da data                        |
#      | antecipadamento                                  |
#      | pagar antecipadamento                            |
#      | pagar antes da data                              |
#      | gostaria de antecipar o pagamento de uma parcela |
#      | antecipar valor da parcela                       |
#      | pagar parcela antes                              |

  Scenario: Solicitar antecipacao das parcelas da fatura
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Antecipar pagamento"
    And enviar a mensagem
    And clicar no botao "Fatura"
    Then validar conteudo (ballon 5) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"

  Scenario: Solicitar antecipacao das parcelas do boleto
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Antecipar pagamento"
    And enviar a mensagem
    And clicar no botao "Boleto"
    And validar conteudo (ballon 5) "Para antecipar o boleto da sua parcela atual, você precisa:"
    And validar conteudo (ballon 5) "Acessar a tela inicial do app"
    And validar conteudo (ballon 5) "Selecionar o valor da parcela"
    And validar conteudo (ballon 5) "Alterar a data de vencimento"
    And validar conteudo (ballon 5) "Selecionar o botão Gerar boleto"
    And validar conteudo (ballon 5) "Pronto! É só copiar o código de barras ou baixar o PDF do seu boleto. 😉"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 7) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"

  Scenario: Solicitar antecipacao das parcelas de fatura atraves das intencoes
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"


    Examples:
      | intent                                                           |
      | Antecipar fatura                                                 |
#      | quero pagar a fatura antes da data                               |
#      | pagar antecipadamento a fatura                                   |
#      | pagar fatura antes da data                                       |
#      | fazer um pagamento antecipado da minha fatura                    |
#      | antecipar a fatura                                               |
#      | gostaria de antecipar o pagamento de uma parcela da minha fatura |
#      | antecipar valor da parcela da fatura                             |
#      | antecipar parcelas da minha fatura                               |
#      | antecipar o pagamento da minha fatura                            |
#      | pagar a fatura antes                                             |

  Scenario: Solicitar antecipacao das parcelas do boleto atraves das intencoes
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para antecipar o boleto da sua parcela atual, você precisa:"

    Examples:
      | intent                                                         |
      | Antecipar boleto                                               |
#      | quero pagar meu boleto antes da data                           |
#      | pagar antecipadamento o boleto                                 |
#      | pagar boleto antes da data                                     |
#      | fazer um pagamento antecipado do meu boleto                    |
#      | antecipar o boleto                                             |
#      | gostaria de antecipar o pagamento de uma parcela do meu boleto |
#      | antecipar valor da parcela do meu boleto                       |
#      | antecipar parcelas do meu boleto                               |
#      | pagar antecipadamente o boleto                                 |
#      | antecipar parcelas do meu boleto                               |
#      | quero pagar minhas parcelas dos próximos meses do meu boleto   |





