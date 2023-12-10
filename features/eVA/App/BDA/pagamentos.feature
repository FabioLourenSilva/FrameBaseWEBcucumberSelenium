@REGRESSIVOS-PAGAMENTOS-APP
Feature: Solicitar pagamentos no app


  Scenario: Solicitar pagamentos através de intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Entendi que você quer fazer um pagamento. 😊 Me conta só mais uma coisinha: o que você quer pagar?"

    Examples:
      | intent                     |
      | Quero fazer um pagamento   |
      | Preciso fazer um pagamento |
      | pagar                      |
      | Ajuda para pagar           |
      | Fazer um pagamento         |
      | Realizar o pagamento       |
      | quero pagar                |
      | fazer pagamento            |
      | pagar meu veículo          |
      | pagar uma conta            |
      | pagar conta                |
      | pagamento                  |

  Scenario: Solicitar pagamentos de financiamentos através de intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Agora me diz, o que você quer pagar?"

    Examples:
      | intent                                          |
      | pagar financiamento                             |
      | quero fazer o pagamento do meu financiamento    |
      | Preciso fazer um pagamento do meu financiamento |
      | Pagar o meu financiamento                       |
      | Ajuda para pagar meu financiamento              |
      | Fazer um pagamento do meu financiamento         |
      | pagar o financiamento                           |
      | fazer o pagamento do meu financiamento          |
      | Realizar o pagamento de financiamento           |
      | quero pagar o financiamento                     |
      | quero pagar o meu financiamento                 |
      | pagar um financiamento                          |
      | quero pagar o meu financiamento                 |
      | fazer pagamento de financiamento                |
      | pagar financiamento de meu veículo              |
      | quero pagar um boleto do meu financiamento      |
      | pagamento do meu financiamento                  |

  Scenario: Solicitar pagamentos de boletos através de intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Você gostaria de pagar um boleto de:"

    Examples:
      | intent                                 |
      | preciso pagar um boleto                |
      | Quero fazer um pagamento do meu boleto |
      | Preciso fazer um pagamento do boleto   |
      | pagar boleto                           |
      | Pagar com o cartao meu boleto          |
      | Pagar o meu boleto                     |
      | Ajuda para pagar meu boleto            |
      | Fazer um pagamento de meu boleto       |
      | pagar o meu boleto                     |
      | fazer o pagamento do meu boleto        |
      | Realizar o pagamento de boleto         |
      | quero pagar o boleto                   |
      | quero pagar o meu boleto               |
      | pagar um boleto                        |
      | quero pagar o meu boleto               |
      | fazer pagamento do boleto              |
      | pagar meu veículo com boleto           |
      | pagar uma conta do boleto              |
      | pagar conta do boleto                  |
      | quero pagar um boleto de               |
      | pagamento de boleto                    |

  Scenario: Solicitar pagamentos de qrcode através de intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Pagar um QR Code Pix pelo app BV é simples. É só:"
    And validar conteudo (ballon 3) "Ir na tela inicial do app, escolher a opção Pagar contas 👉 QR Code Pix"
    And validar conteudo (ballon 3) "Posicionar o QR Code na área indicada"
    And validar conteudo (ballon 3) "Escolher a opção de pagar com saldo em conta ou Cartão BV"

    Examples:
      | intent                                 |
      | pagar usando qrcode                    |
      | Preciso fazer um pagamento pelo qrcode |
      | pagar com qrcode                       |
      | Pagar o meu qrcode                     |
      | Ajuda para pagar com qrcode            |
      | Fazer um pagamento pelo qrcode         |
      | Realizar o pagamento atraves do qrcode |
      | quero pagar com qrcode                 |
      | quero pagar o meu qrcode               |
      | fazer pagamento pelo qrcode            |
      | pagar uma conta atraves do qrcode      |
      | pagar conta com qrcode                 |
      | pagamento pelo qrcode                  |


  Scenario: Solicitar pagamentos de faturas através de intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Ah! Deixa eu te lembrar: você só pode pagar a fatura do seu cartão quando ela estiver fechada, tudo bem?"
    And validar conteudo (ballon 3) "Para pegar o boleto da fatura fechada do seu Cartão BV, você precisa:"
    And validar conteudo (ballon 3) "Acessar a tela inicial do app"
    And validar conteudo (ballon 3) "Ir em Meus cartões"
    And validar conteudo (ballon 3) "Tocar em Ver fatura 👉Pagar fatura"
    And validar conteudo (ballon 3) "Escolher se quer pagar o valor total ou mínimo"

    Examples:
      | intent                                   |
      | Como pagar minha fatura                  |
      | quero pagar minha parcela da fatura      |
      | Quero fazer um pagamento da minha fatura |
      | Preciso fazer um pagamento da fatura     |
      | pagar fatura                             |
      | Pagar a minha fatura                     |
      | Ajuda para pagar fatura                  |
      | Fazer um pagamento da fatura             |
      | pagar a minha fatura                     |
      | fazer o pagamento da minha fatura        |
      | Realizar o pagamento da fatura           |
      | quero pagar minha fatura                 |
      | pagar uma fatura                         |
      | quero pagar a minha fatura               |
      | fazer pagamento de fatura                |
      | quero pagar a minha parcela da fatura    |
      | quero pagar um boleto de fatura          |
      | pagamento de fatura                      |


  Scenario: Solicitar pagamentos de boletos através de intenções até transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "efetuar pagamento"
    And enviar a mensagem
    And clicar no botao "Financiamento de veículos"
    And validar conteudo (ballon 5) "Agora me diz, o que você quer pagar?"
    And clicar no botao "Parcela atual"
    And validar conteudo (ballon 7) "Para pegar o boleto da sua parcela atual, você precisa:"
    And validar conteudo (ballon 7) "Acessar a tela inicial do app"
    And validar conteudo (ballon 7) "Tocar no valor da parcela ou em Gerar boleto"
    And validar conteudo (ballon 7) "Selecionar o botão Gerar boleto"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 9) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"

  Scenario: Solicitar pagamento do financiamento de veiculos (Proximas parcelas) até transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "efetuar pagamento"
    And enviar a mensagem
    And clicar no botao "Financiamento de veículos"
    And validar conteudo (ballon 5) "Agora me diz, o que você quer pagar?"
    And clicar no botao "Próximas parcelas"
    And validar conteudo (ballon 7) "Para adiantar o pagamento das suas parcelas, você precisa:"
    And validar conteudo (ballon 7) "Acessar a tela inicial do app"
    And validar conteudo (ballon 7) "Ir no ícone de Adiantar Parcelas"
    And validar conteudo (ballon 7) "Selecionar e adicionar as parcelas"
    And validar conteudo (ballon 7) "Alterar a data de vencimento do boleto"
    And validar conteudo (ballon 7) "Tocar em Gerar boleto"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 9) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"

  Scenario: Solicitar pagamento do financiamento de veiculos (Parcelas atrasadas) até transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "efetuar pagamento"
    And enviar a mensagem
    And clicar no botao "Financiamento de veículos"
    And validar conteudo (ballon 5) "Agora me diz, o que você quer pagar?"
    And clicar no botao "Parcelas atrasadas"
    And validar conteudo (ballon 7) "Para pegar o boleto da sua parcela atrasada, você tem que:"
    And validar conteudo (ballon 7) "Acessar a tela inicial do app"
    And validar conteudo (ballon 7) "Tocar em Gerar boleto "
    And validar conteudo (ballon 7) "Selecionar o botão Gerar boleto"
    And validar conteudo (ballon 7) "Caso tenha mais de uma parcela atrasada, você precisa escolher qual quer pagar depois do passo 2."
    And clicar no botao "Já tentei isso"
    And validar conteudo (ballon 10) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"

  Scenario: Solicitar pagamento do financiamento de veiculos (Contrato inteiro) até transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "efetuar pagamento"
    And enviar a mensagem
    And clicar no botao "Financiamento de veículos"
    And validar conteudo (ballon 5) "Agora me diz, o que você quer pagar?"
    And clicar no botao "Contrato inteiro"
    And validar conteudo (ballon 7) "Para quitar o seu financiamento, você precisa:"
    And validar conteudo (ballon 7) "Acessar a tela inicial do app"
    And validar conteudo (ballon 7) "Ir no ícone de Quitar financiamento"
    And validar conteudo (ballon 7) "Selecionar o botão Gerar boleto"
    And clicar no botao "Já tentei isso"
    And validar conteudo (ballon 9) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"

  Scenario: Solicitar pagamento do financiamento de veiculos (Quero mudar de assunto)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "efetuar pagamento"
    And enviar a mensagem
    And clicar no botao "Financiamento de veículos"
    And validar conteudo (ballon 5) "Agora me diz, o que você quer pagar?"
    And clicar no botao "Quero mudar de assunto"
    Then validar conteudo (ballon 7) "Então, me conta: o que você precisa?"


    # Fluxo fatura do cartão BV #

  Scenario: Solicitar pagamento da fatura do cartão BV, até transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "efetuar pagamento"
    And enviar a mensagem
    And clicar no botao "Fatura do Cartão BV"
    And validar conteudo (ballon 5) "Ah! Deixa eu te lembrar: você só pode pagar a fatura do seu cartão quando ela estiver fechada, tudo bem?"
    And validar conteudo (ballon 5) "Para pegar o boleto da fatura fechada do seu Cartão BV, você precisa:"
    And validar conteudo (ballon 5) "Acessar a tela inicial do app"
    And validar conteudo (ballon 5) "Ir em Meus cartões"
    And validar conteudo (ballon 5) "Tocar em Ver fatura 👉Pagar fatura"
    And validar conteudo (ballon 5) "Escolher se quer pagar o valor total ou mínimo"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 7) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"

    # Fluxo outro tipo de boleto #

  Scenario: Solicitar pagamento de outro tipo de boleto (Saldo em conta), até transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "efetuar pagamento"
    And enviar a mensagem
    And clicar no botao "Outro tipo de boleto"
    And validar conteudo (ballon 5) "Para pagar seu boleto pelo app BV é fácil. Você deve:"
    And validar conteudo (ballon 5) "Ir na tela inicial, selecionar a opção Pagar contas e depois Boleto"
    And validar conteudo (ballon 5) "Deixar o código de barras posicionado na linha azul ou escolher Digitar código"
    And validar conteudo (ballon 5) "Escolher a opção de pagar com saldo em conta ou Cartão BV"
    And validar conteudo (ballon 5) "Digitar a senha para confirmar"
    And clicar no botao "Não consegui pagar"
    And validar conteudo (ballon 7) "Vou te ajudar de outra forma então. 😉 Só me fala se você tentou fazer o pagamento com:"
    And clicar no botao "Saldo em conta"
    Then validar conteudo (ballon 9) "Pode ser que você tenha atingido o limite diário de pagamentos. 😩 Nesse caso, você precisa falar com uma pessoa do time BV para te explicar melhor."

  Scenario: Solicitar pagamento de outro tipo de boleto (Cartão BV), até transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "efetuar pagamento"
    And enviar a mensagem
    And clicar no botao "Outro tipo de boleto"
    And validar conteudo (ballon 5) "Para pagar seu boleto pelo app BV é fácil. Você deve:"
    And validar conteudo (ballon 5) "Ir na tela inicial, selecionar a opção Pagar contas e depois Boleto"
    And validar conteudo (ballon 5) "Deixar o código de barras posicionado na linha azul ou escolher Digitar código"
    And validar conteudo (ballon 5) "Escolher a opção de pagar com saldo em conta ou Cartão BV"
    And validar conteudo (ballon 5) "Digitar a senha para confirmar"
    And clicar no botao "Não consegui pagar"
    And validar conteudo (ballon 7) "Vou te ajudar de outra forma então. 😉 Só me fala se você tentou fazer o pagamento com:"
    And clicar no botao "Cartão BV"
    Then validar conteudo (ballon 9) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

    # Fluxo QRcode #
  Scenario: Solicitar pagamento pelo qrcode pix, até transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "efetuar pagamento"
    And enviar a mensagem
    And clicar no botao "QR Code Pix"
    And validar conteudo (ballon 5) "Pagar um QR Code Pix pelo app BV é simples. É só:"
    And validar conteudo (ballon 5) "Ir na tela inicial do app, escolher a opção Pagar contas 👉 QR Code Pix"
    And validar conteudo (ballon 5) "Posicionar o QR Code na área indicada"
    And validar conteudo (ballon 5) "Escolher a opção de pagar com saldo em conta ou Cartão BV"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  # Fluxo Boleto #
  Scenario: Solicitar pagamento do boleto (Financiamento de veiculos)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "pagar boleto"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Você gostaria de pagar um boleto de:"
    And clicar no botao "Financiamento de veículos"
    Then validar conteudo (ballon 5) "Agora me diz, o que você quer pagar?"

  Scenario: Solicitar pagamento do boleto (Outro tipo de boleto)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "pagar boleto"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Você gostaria de pagar um boleto de:"
    And clicar no botao "Outro tipo de boleto"
    Then validar conteudo (ballon 5) "Para pagar seu boleto pelo app BV é fácil. Você deve:"
    And validar conteudo (ballon 5) "Ir na tela inicial, selecionar a opção Pagar contas e depois Boleto"
    And validar conteudo (ballon 5) "Deixar o código de barras posicionado na linha azul ou escolher Digitar código"
    And validar conteudo (ballon 5) "Escolher a opção de pagar com saldo em conta ou Cartão BV"
    And validar conteudo (ballon 5) "Digitar a senha para confirmar"


#Fluxo segunda via de boleto#

  Scenario: Solicitar segunda via de boleto (parcela atual), até transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "segunda via de boleto"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Você gostaria da segunda via do seu boleto de:"
    And clicar no botao "Financiamento de veículos"
    And validar conteudo (ballon 5) "Agora me diz, o que você quer pagar?"
    And clicar no botao "Parcela atual"
    And validar conteudo (ballon 7) "Para pegar o boleto da sua parcela atual, você precisa:"
    And validar conteudo (ballon 7) "Acessar a tela inicial do app"
    And validar conteudo (ballon 7) "Tocar no valor da parcela ou em Gerar boleto"
    And validar conteudo (ballon 7) "Selecionar o botão Gerar boleto"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 9) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"


  Scenario: Solicitar segunda via de boleto (parcelas atrasadas), até transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "segunda via de boleto"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Você gostaria da segunda via do seu boleto de:"
    And clicar no botao "Financiamento de veículos"
    And validar conteudo (ballon 5) "Agora me diz, o que você quer pagar?"
    And clicar no botao "Parcelas atrasadas"
    And validar conteudo (ballon 7) "Para pegar o boleto da sua parcela atrasada, você tem que:"
    And validar conteudo (ballon 7) "Acessar a tela inicial do app"
    And validar conteudo (ballon 7) "Tocar em Gerar boleto "
    And validar conteudo (ballon 7) "Selecionar o botão Gerar boleto"
    And validar conteudo (ballon 7) "Caso tenha mais de uma parcela atrasada, você precisa escolher qual quer pagar depois do passo 2."
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 10) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Solicitar segunda via de boleto (Fatura do cartão), até transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "segunda via de boleto"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Você gostaria da segunda via do seu boleto de:"
    And clicar no botao "Fatura do cartão"
    And validar conteudo (ballon 5) "Para pegar o boleto da fatura fechada do seu Cartão BV, você precisa:"
    And validar conteudo (ballon 5) "Acessar a tela inicial do app"
    And validar conteudo (ballon 5) "Ir em Meus cartões"
    And validar conteudo (ballon 5) "Tocar em Ver fatura 👉Pagar fatura"
    And validar conteudo (ballon 5) "Escolher se quer pagar o valor total ou mínimo"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Solicitar pagamentos de outro tipo boleto através de intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para pagar seu boleto pelo app BV é fácil. Você deve:"
    And validar conteudo (ballon 3) "Ir na tela inicial, selecionar a opção Pagar contas e depois Boleto"
    And validar conteudo (ballon 3) "Deixar o código de barras posicionado na linha azul ou escolher Digitar código"
    And validar conteudo (ballon 3) "Escolher a opção de pagar com saldo em conta ou Cartão BV"
    And validar conteudo (ballon 3) "Digitar a senha para confirmar"

    Examples:
      | intent                                         |
      | pagar outro tipo de boleto                     |
      | como fazer o pagamento de outro tipo de boleto |

    #Exclusivo APP#

  @CT1-ANT-PARCELAR-APP
  Scenario: Perguntar sobre antecipação de parcela
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Entendi que você quer fazer uma antecipação. Você gostaria de antecipar o pagamento da sua fatura ou seu boleto de financiamento? "
    And clicar no botao "Boleto"
    Then validar conteudo (ballon 5) "você pode adiantar qualquer parcela do seu contrato e o valor do desconto nos juros vai ser proporcional ao período que você escolheu para antecipar o pagamento."
    And validar conteudo (ballon 5) "Ou seja: quanto mais antecipado, maior o desconto."
    And validar conteudo (ballon 6) "Para antecipar o boleto da sua parcela atual, você precisa:"
    And validar conteudo (ballon 6) "Acessar a tela inicial do app"
    And validar conteudo (ballon 6) "Selecionar o valor da parcela"
    And validar conteudo (ballon 6) "Alterar a data de vencimento"
    And validar conteudo (ballon 6) "Selecionar o botão Gerar boleto"

    Examples:
      | intent                                                          |
      | Tem uma ordem certa pra antecipar as parcelas de financiamento? |
      | Quero antecipar algumas parcelas do carro, como faço?           |
      | Só posso antecipar as últimas parcelas?                         |
      | Só posso antecipar as próximas parcelas?                        |
      | Quais parcelas posso antecipar?                                 |
      | Quantas parcelas posso antecipar?                               |
      | Como antecipar parcelas financiamento?                          |

  @CT2-ANT-PARCELAR-APP
  Scenario: Solicitar antecipação de parcela
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Quero antecipar boleto financiamento"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "você pode adiantar qualquer parcela do seu contrato e o valor do desconto nos juros vai ser proporcional ao período que você escolheu para antecipar o pagamento."
    And validar conteudo (ballon 3) "Ou seja: quanto mais antecipado, maior o desconto."
    And validar conteudo (ballon 4) "Para antecipar o boleto da sua parcela atual, você precisa:"
    And validar conteudo (ballon 4) "Acessar a tela inicial do app"
    And validar conteudo (ballon 4) "Selecionar o valor da parcela"
    And validar conteudo (ballon 4) "Alterar a data de vencimento"
    And validar conteudo (ballon 4) "Selecionar o botão Gerar boleto"
