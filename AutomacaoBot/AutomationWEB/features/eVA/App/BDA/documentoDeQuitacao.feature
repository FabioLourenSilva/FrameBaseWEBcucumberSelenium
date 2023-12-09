Feature: Documento de quitação no app

  Scenario: Solicitar documento de quitação através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Posso te ajudar com isso! 😉 Mas me conte, você quer um documento de quitação de:"

    Examples:
      | intent                                  |
      | necessito da carta de quitação          |
      | Preciso carta de quitação               |
      | como posso pedir declaração de quitação |
      | preciso da carta de quitação            |
      | Quero documento de quitação             |
      | Preciso documento de quitação           |
      | Quero declaração de quitação            |
      | Preciso declaração de quitação          |

  Scenario: Solicitar documento de quitação de cartão até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "necessito da carta de quitação"
    And enviar a mensagem
    And clicar no botao "Cartão"
    Then validar conteudo (ballon 5) "Nesse caso, só uma pessoa do time BV pode te ajudar."

  Scenario: Solicitar documento de quitação de financiamento (Declaracao anual) até transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "necessito da carta de quitação"
    And enviar a mensagem
    And clicar no botao "Financiamento"
    And validar conteudo (ballon 5) "Deixa eu te explicar. A Declaração Anual de Quitação de Débitos apresenta todos os pagamentos que você fez no ano passado em seu financiamento. Ele já serve como comprovante se você quitou a sua dívida no ano anterior."
    And validar conteudo (ballon 5) "Já a Carta de Quitação do Contrato é um comprovante que você consegue pegar a qualquer momento, desde que o financiamento esteja todo pago."
    And clicar no botao "Declaração anual"
    And validar conteudo (ballon 7) "Para pegar a sua Declaração anual de quitação de débitos, você precisa:"
    And validar conteudo (ballon 7) "Acessar o site da Minha BV com CPF e senha"
    And validar conteudo (ballon 7) "Ir em Financiamentos 👉 Serviços"
    And validar conteudo (ballon 7) "Clicar em Declaração anual de quitação de débitos"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 9) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"

  Scenario: Solicitar documento de quitação de financiamento (Declaracao anual) até transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "necessito da carta de quitação"
    And enviar a mensagem
    And clicar no botao "Financiamento"
    And validar conteudo (ballon 5) "Deixa eu te explicar. A Declaração Anual de Quitação de Débitos apresenta todos os pagamentos que você fez no ano passado em seu financiamento. Ele já serve como comprovante se você quitou a sua dívida no ano anterior."
    And validar conteudo (ballon 5) "Já a Carta de Quitação do Contrato é um comprovante que você consegue pegar a qualquer momento, desde que o financiamento esteja todo pago."
    And clicar no botao "Declaração anual"
    And validar conteudo (ballon 7) "Para pegar a sua Declaração anual de quitação de débitos, você precisa:"
    And validar conteudo (ballon 7) "Acessar o site da Minha BV com CPF e senha"
    And validar conteudo (ballon 7) "Ir em Financiamentos 👉 Serviços"
    And validar conteudo (ballon 7) "Clicar em Declaração anual de quitação de débitos"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 9) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"

  Scenario: Solicitar documento de quitação de financiamento (Carta de quitacao) até transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "necessito da carta de quitação"
    And enviar a mensagem
    And clicar no botao "Financiamento"
    And validar conteudo (ballon 5) "Deixa eu te explicar. A Declaração Anual de Quitação de Débitos apresenta todos os pagamentos que você fez no ano passado em seu financiamento. Ele já serve como comprovante se você quitou a sua dívida no ano anterior."
    And validar conteudo (ballon 5) "Já a Carta de Quitação do Contrato é um comprovante que você consegue pegar a qualquer momento, desde que o financiamento esteja todo pago."
    And clicar no botao "Carta de quitação"
    Then validar conteudo (ballon 7) "Neste caso, só uma pessoa do time BV pode te ajudar. 😉"

  Scenario: Solicitar documento de quitacao da fatura do cartao através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Nesse caso, só uma pessoa do time BV pode te ajudar."

    Examples:
      | intent                                            |
      | Documento de quitação da fatura do cartão         |
      | Preciso documento de quitação da fatura do cartão |
      | Quero documento de quitação da fatura do cartão   |
      | Carta de quitação da fatura do cartão             |
      | Preciso da carta de quitação da fatura do cartão  |

  Scenario: Solicitar documento de quitacao de financiamento através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Deixa eu te explicar. A Declaração Anual de Quitação de Débitos apresenta todos os pagamentos que você fez no ano passado em seu financiamento. Ele já serve como comprovante se você quitou a sua dívida no ano anterior."
    And validar conteudo (ballon 3) "Já a Carta de Quitação do Contrato é um comprovante que você consegue pegar a qualquer momento, desde que o financiamento esteja todo pago."

    Examples:
      | intent                                                   |
      | carta de quitação do veículo                             |
      | Carta de quitação da moto                                |
      | Necessito da carta de quitação do financiamento          |
      | como posso pedir declaração de quitação do financiamento |
      | Preciso documento de quitação do veículo                 |
      | Preciso documento de quitação da moto                    |
      | Quero documento de quitação do financiamento             |



