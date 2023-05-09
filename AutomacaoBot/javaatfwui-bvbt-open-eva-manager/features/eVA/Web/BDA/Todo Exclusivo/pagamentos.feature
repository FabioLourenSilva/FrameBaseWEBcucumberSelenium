@REGRESSIVOS-PAGAMENTOS-SITE
Feature: Solicitar pagamentos no site


  Scenario: Solicitar pagamentos através de intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Entendi que você quer fazer um pagamento. 😊 Me conta só mais uma coisinha: o que você quer pagar?"

    Examples:
      | intent                     |
      | Quero fazer um pagamento   |
#      | Preciso fazer um pagamento |
#      | pagar                      |
#      | Ajuda para pagar           |
#      | Fazer um pagamento         |
#      | Realizar o pagamento       |
#      | quero pagar                |
#      | fazer pagamento            |
#      | pagar meu veículo          |
#      | pagar uma conta            |
#      | pagar conta                |
#      | pagamento                  |

  Scenario: Solicitar pagamentos de financiamentos através de intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Agora me diz, o que você quer pagar?"

    Examples:
      | intent                                          |
      | pagar financiamento                             |
#      | quero fazer o pagamento do meu financiamento    |
#      | Preciso fazer um pagamento do meu financiamento |
#      | Pagar o meu financiamento                       |
#      | Ajuda para pagar meu financiamento              |
#      | Fazer um pagamento do meu financiamento         |
#      | pagar o financiamento                           |
#      | fazer o pagamento do meu financiamento          |
#      | Realizar o pagamento de financiamento           |
#      | quero pagar o financiamento                     |
#      | quero pagar o meu financiamento                 |
#      | pagar um financiamento                          |
#      | quero pagar o meu financiamento                 |
#      | fazer pagamento de financiamento                |
#      | pagar financiamento de meu veículo              |
#      | quero pagar um boleto do meu financiamento      |
#      | pagamento do meu financiamento                  |

  Scenario: Solicitar pagamentos de boletos através de intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Você gostaria de pagar um boleto de:"

    Examples:
      | intent                                 |
      | preciso pagar um boleto                |
#      | Quero fazer um pagamento do meu boleto |
#      | Preciso fazer um pagamento do boleto   |
#      | pagar boleto                           |
#      | Pagar com o cartao meu boleto          |
#      | Pagar o meu boleto                     |
#      | Ajuda para pagar meu boleto            |
#      | Fazer um pagamento de meu boleto       |
#      | pagar o meu boleto                     |
#      | fazer o pagamento do meu boleto        |
#      | Realizar o pagamento de boleto         |
#      | quero pagar o boleto                   |
#      | quero pagar o meu boleto               |
#      | pagar um boleto                        |
#      | quero pagar o meu boleto               |
#      | fazer pagamento do boleto              |
#      | pagar meu veículo com boleto           |
#      | pagar uma conta do boleto              |
#      | pagar conta do boleto                  |
#      | quero pagar um boleto de               |
#      | pagamento de boleto                    |

  Scenario: Solicitar pagamentos de qrcode através de intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Você precisa ter a nossa conta digital e o app banco BV no seu celular. Com isso, é só:"
    And validar conteudo (ballon 3) "Ir na tela inicial do app, escolher a opção Pagar contas ➔ QR Code Pix"
    And validar conteudo (ballon 3) "Posicionar o QR Code na área indicada"
    And validar conteudo (ballon 3) "Escolher a opção de pagar com saldo em conta ou Cartão BV"

    Examples:
      | intent                                 |
      | pagar usando qrcode                    |
#      | Preciso fazer um pagamento pelo qrcode |
#      | pagar com qrcode                       |
#      | Pagar o meu qrcode                     |
#      | Ajuda para pagar com qrcode            |
#      | Fazer um pagamento pelo qrcode         |
#      | Realizar o pagamento atraves do qrcode |
#      | quero pagar com qrcode                 |
#      | quero pagar o meu qrcode               |
#      | fazer pagamento pelo qrcode            |
#      | pagar uma conta atraves do qrcode      |
#      | pagar conta com qrcode                 |
#      | pagamento pelo qrcode                  |


  Scenario: Solicitar pagamentos de faturas através de intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Ah! Deixa eu te lembrar: você só pode pagar a fatura do seu Cartão BV quando ela estiver fechada, tudo bem?"
    And validar conteudo (ballon 3) "Para pegar o boleto da fatura aqui pelo site, é só:"
    And validar conteudo (ballon 3) "Acessar a Minha BV com CPF e senha"
    And validar conteudo (ballon 3) "Clicar em Cartões 👉Fatura atual"
    And validar conteudo (ballon 3) "Escolher a opção de pagamento Valor total ou mínimo e depois clicar em Gerar Boleto"

    Examples:
      | intent                                   |
      | Como pagar minha fatura                  |
#      | quero pagar minha parcela da fatura      |
#      | Quero fazer um pagamento da minha fatura |
#      | Preciso fazer um pagamento da fatura     |
#      | pagar fatura                             |
#      | Pagar a minha fatura                     |
#      | Ajuda para pagar fatura                  |
#      | Fazer um pagamento da fatura             |
#      | pagar a minha fatura                     |
#      | fazer o pagamento da minha fatura        |
#      | Realizar o pagamento da fatura           |
#      | quero pagar minha fatura                 |
#      | pagar uma fatura                         |
#      | quero pagar a minha fatura               |
#      | fazer pagamento de fatura                |
#      | quero pagar a minha parcela da fatura    |
#      | quero pagar um boleto de fatura          |
#      | pagamento de fatura                      |


  Scenario: Solicitar pagamentos de boletos (Parcela atual)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "efetuar pagamento"
    And enviar a mensagem
    And clicar no botao "Financiamento de veículos"
    And validar conteudo (ballon 5) "Agora me diz, o que você quer pagar?"
    And clicar no botao "Parcela atual"
    Then validar conteudo (ballon 7) "Vou te passar o número do código de barras do seu boleto."


  Scenario: Solicitar pagamento do financiamento de veiculos (Proximas parcelas) até transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "efetuar pagamento"
    And enviar a mensagem
    And clicar no botao "Financiamento de veículos"
    And validar conteudo (ballon 5) "Agora me diz, o que você quer pagar?"
    And clicar no botao "Próximas parcelas"
    And validar conteudo (ballon 7) "Para adiantar o pagamento das suas parcelas aqui pelo site, você precisa"
    And validar conteudo (ballon 7) "Acessar a Minha BV com CPF e senha"
    And validar conteudo (ballon 7) "Selecionar Financiamento no canto superior esquerdo"
    And validar conteudo (ballon 7) "Ir em Resolva agora 👉 Adiantar parcelas"
    And validar conteudo (ballon 7) "Selecionar parcelas 👉 Trocar data e seguir as instruções da tela"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 9) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"

  Scenario: Solicitar pagamento do financiamento de veiculos (Parcelas atrasadas) até transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "efetuar pagamento"
    And enviar a mensagem
    And clicar no botao "Financiamento de veículos"
    And validar conteudo (ballon 5) "Agora me diz, o que você quer pagar?"
    And clicar no botao "Parcelas atrasadas"
    And validar conteudo (ballon 7) "aqui pelo site, você precisa:"
    And validar conteudo (ballon 7) "Acessar a Minha BV com CPF e senha"
    And validar conteudo (ballon 7) "Selecionar Financiamento no canto superior esquerdo"
    And validar conteudo (ballon 7) "Ir em Resolva agora 👉 Você tem x parcela(s) atrasada(s) 👉 Gerar boleto "
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 10) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"

  Scenario: Solicitar pagamento do financiamento de veiculos (Contrato inteiro) até transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "efetuar pagamento"
    And enviar a mensagem
    And clicar no botao "Financiamento de veículos"
    And validar conteudo (ballon 5) "Agora me diz, o que você quer pagar?"
    And clicar no botao "Contrato inteiro"
    And validar conteudo (ballon 7) "Para quitar o seu financiamento aqui pelo site, você precisa:"
    And validar conteudo (ballon 7) "Acessar a Minha BV com CPF e senha"
    And validar conteudo (ballon 7) "Selecionar Financiamento no canto superior esquerdo"
    And validar conteudo (ballon 7) "Ir em Resolva agora 👉 Quitar contrato 👉 Escolher o vencimento"
    And validar conteudo (ballon 7) "Clicar em Calcular 👉 Gerar boleto"
    And clicar no botao "Já tentei isso"
    And validar conteudo (ballon 9) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"


    # Fluxo fatura do cartão BV #

  Scenario: Solicitar pagamento da fatura do cartão BV, até transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "efetuar pagamento"
    And enviar a mensagem
    And clicar no botao "Fatura do Cartão BV"
    And validar conteudo (ballon 5) "Ah! Deixa eu te lembrar: você só pode pagar a fatura do seu Cartão BV quando ela estiver fechada, tudo bem?"
    And validar conteudo (ballon 5) "Para pegar o boleto da fatura aqui pelo site, é só:"
    And validar conteudo (ballon 5) "Acessar a Minha BV com CPF e senha"
    And validar conteudo (ballon 5) "Clicar em Cartões 👉Fatura atual"
    And validar conteudo (ballon 5) "Escolher a opção de pagamento Valor total ou mínimo e depois clicar em Gerar Boleto"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 7) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"

    # Fluxo outro tipo de boleto #

  Scenario: Solicitar pagamento de outro tipo de boleto (Saldo em conta), até transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "efetuar pagamento"
    And enviar a mensagem
    And clicar no botao "Outro tipo de boleto"
    And validar conteudo (ballon 5) "Para pagar um boleto, você precisa ter o app banco BV no seu celular. Com isso, é só:"
    And validar conteudo (ballon 5) "Ir na tela inicial, selecionar a opção Pagar contas e depois Boleto"
    And validar conteudo (ballon 5) "Deixar o código de barras posicionado na linha azul ou tocar em Digitar código"
    And validar conteudo (ballon 5) "Escolher a opção de pagar com saldo em conta ou Cartão BV"
    And validar conteudo (ballon 5) "Digitar a senha do cartão para confirmar"
    And clicar no botao "Não consegui pagar"
    And validar conteudo (ballon 7) "Vou te ajudar de outra forma então. 😉 Só me fala se você tentou fazer o pagamento com:"
    And clicar no botao "Saldo em conta"
    Then validar conteudo (ballon 9) "Pode ser que você tenha atingido o limite diário de pagamentos. 😩 Nesse caso, você precisa falar com uma pessoa do time BV para te explicar melhor."

  Scenario: Solicitar pagamento de outro tipo de boleto (Cartão BV), até transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "efetuar pagamento"
    And enviar a mensagem
    And clicar no botao "Outro tipo de boleto"
    And validar conteudo (ballon 5) "Para pagar um boleto, você precisa ter o app banco BV no seu celular. Com isso, é só:"
    And validar conteudo (ballon 5) "Ir na tela inicial, selecionar a opção Pagar contas e depois Boleto"
    And validar conteudo (ballon 5) "Deixar o código de barras posicionado na linha azul ou tocar em Digitar código"
    And validar conteudo (ballon 5) "Escolher a opção de pagar com saldo em conta ou Cartão BV"
    And validar conteudo (ballon 5) "Digitar a senha do cartão para confirmar"
    And clicar no botao "Não consegui pagar"
    And validar conteudo (ballon 7) "Vou te ajudar de outra forma então. 😉 Só me fala se você tentou fazer o pagamento com:"
    And clicar no botao "Cartão BV"
    Then validar conteudo (ballon 9) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

    # Fluxo QRcode #
  Scenario: Solicitar pagamento pelo qrcode pix, até transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "efetuar pagamento"
    And enviar a mensagem
    And clicar no botao "QR Code Pix"
    And validar conteudo (ballon 5) "Você precisa ter a nossa conta digital e o app banco BV no seu celular. Com isso, é só:"
    And validar conteudo (ballon 5) "Ir na tela inicial do app, escolher a opção Pagar contas ➔ QR Code Pix"
    And validar conteudo (ballon 5) "Posicionar o QR Code na área indicada"
    And validar conteudo (ballon 5) "Escolher a opção de pagar com saldo em conta ou Cartão BV"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  # Fluxo Boleto #
  Scenario: Solicitar pagamento do boleto (Financiamento de veiculos)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "pagar boleto"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Você gostaria de pagar um boleto de:"
    And clicar no botao "Financiamento de veículos"
    Then validar conteudo (ballon 5) "Agora me diz, o que você quer pagar?"

  Scenario: Solicitar pagamento do boleto (Outro tipo de boleto)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "pagar boleto"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Você gostaria de pagar um boleto de:"
    And clicar no botao "Outro tipo de boleto"
    Then validar conteudo (ballon 5) "Para pagar um boleto, você precisa ter o app banco BV no seu celular. Com isso, é só:"
    And validar conteudo (ballon 5) "Ir na tela inicial, selecionar a opção Pagar contas e depois Boleto"
    And validar conteudo (ballon 5) "Deixar o código de barras posicionado na linha azul ou tocar em Digitar código"
    And validar conteudo (ballon 5) "Escolher a opção de pagar com saldo em conta ou Cartão BV"
    And validar conteudo (ballon 5) "Digitar a senha do cartão para confirmar"

  Scenario: Solicitar segunda via de boleto (parcela atual)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "segunda via de boleto"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Você gostaria da segunda via do seu boleto de:"
    And clicar no botao "Financiamento de veículos"
    And validar conteudo (ballon 5) "Agora me diz, o que você quer pagar?"
    And validar conteudo (ballon 5) "Parcela atual"
    And validar conteudo (ballon 5) "Parcelas atrasadas"
    And clicar no botao "Parcela atual"
    Then validar conteudo (ballon 7) "Vou te passar o número do código de barras do seu boleto. 😉"

  Scenario: Solicitar segunda via de boleto (parcelas atrasadas), até transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "segunda via de boleto"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Você gostaria da segunda via do seu boleto de:"
    And clicar no botao "Financiamento de veículos"
    And validar conteudo (ballon 5) "Agora me diz, o que você quer pagar?"
    And clicar no botao "Parcelas atrasadas"
    And validar conteudo (ballon 7) "aqui pelo site, você precisa:"
    And validar conteudo (ballon 7) "Acessar a Minha BV com CPF e senha"
    And validar conteudo (ballon 7) "Selecionar Financiamento no canto superior esquerdo"
    And validar conteudo (ballon 7) "Ir em Resolva agora 👉 Você tem x parcela(s) atrasada(s) 👉 Gerar boleto"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 10) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Solicitar segunda via de boleto (Fatura do cartão), até transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "segunda via de boleto"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Você gostaria da segunda via do seu boleto de:"
    And clicar no botao "Fatura do cartão"
    And validar conteudo (ballon 5) "Para pegar o boleto da fatura aqui pelo site, é só:"
    And validar conteudo (ballon 5) "Acessar a Minha BV com CPF e senha"
    And validar conteudo (ballon 5) "Clicar em Cartões 👉Fatura atual"
    And validar conteudo (ballon 5) "Escolher a opção de pagamento Valor total ou mínimo e depois clicar em Gerar Boleto"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"


  Scenario: Solicitar pagamentos de outro tipo boleto através de intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para pagar um boleto, você precisa ter o app banco BV no seu celular. Com isso, é só:"
    And validar conteudo (ballon 3) "Ir na tela inicial, selecionar a opção Pagar contas e depois Boleto"
    And validar conteudo (ballon 3) "Deixar o código de barras posicionado na linha azul ou tocar em Digitar código"
    And validar conteudo (ballon 3) "Escolher a opção de pagar com saldo em conta ou Cartão BV"
    And validar conteudo (ballon 3) "Digitar a senha do cartão para confirmar"

    Examples:
      | intent                                         |
      | pagar outro tipo de boleto                     |
#      | como fazer o pagamento de outro tipo de boleto |




