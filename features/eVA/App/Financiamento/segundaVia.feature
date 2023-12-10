Feature: Segunda via App

  @CT1-SEGUNDA-VIA-APP
  Scenario: Solicitar segunda via do boleto através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Você gostaria da segunda via do seu boleto de:"
    And validar conteudo (ballon 3) "Fatura do cartão"
    And validar conteudo (ballon 3) "Financiamento de veículos"
    And validar conteudo (ballon 3) "Outros Contratos"

    Examples:
      | intent                    |
      | segunda via do meu boleto |
      | quero meu boleto          |
      | gostaria do boleto        |
      | boleto                    |
      | preciso do boleto         |

#  Resposta em PRD
  @CT2-SEGUNDA-VIA-APP
  Scenario: Solicitar segunda via do boleto (Fatura cartão)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "segunda via do meu boleto"
    And enviar a mensagem
    And clicar no botao "Fatura do cartão"
    Then validar conteudo (ballon 5) "Entendi que você quer falar sobre fatura do cartão. 😊"
    And validar conteudo (ballon 5) "Então me conta, com qual assunto eu posso te ajudar?"
    And validar conteudo (ballon 5) "Consulta da fatura"
    And validar conteudo (ballon 5) "Segunda via da fatura"
    And validar conteudo (ballon 5) "Pagamento da fatura"

  @CT3-SEGUNDA-VIA-APP
  Scenario: Solicitar segunda via do boleto (Financiamento de Veículos - Parcela atual)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "segunda via do meu boleto"
    And enviar a mensagem
    And clicar no botao "Financiamento de veículos"
    And validar conteudo (ballon 5) "Agora me diz, o que você quer pagar?"
    And clicar no botao "Parcela atual"
    And validar conteudo (ballon 7) "Para pegar o boleto da sua parcela atual, você precisa"
    And validar conteudo (ballon 7) "Acessar a tela inicial do app"
    And validar conteudo (ballon 7) "Tocar no valor da parcela ou em Gerar boleto"
    And validar conteudo (ballon 7) "Selecionar o botão Ver boleto em PDF"
    And validar conteudo (ballon 7) "Pronto! É só copiar o código de barras ou baixar o PDF do seu boleto."
    And clicar no botao "Já tentei isso"
    And validar conteudo (ballon 9) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer?"
    Then clicar no botao "<button>"
    And validar conteudo (ballon 11) "<content>"

    Examples:
      | button               | content                                              |
      | Falar com uma pessoa | atendimento                                          |
      | Deixar para depois   | Se eu puder te ajudar com outra coisa, me conta aqui |

  @CT4-SEGUNDA-VIA-APP
  Scenario: Solicitar segunda via do boleto (Financiamento de Veículos - Parcelas atrasadas)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "segunda via do meu boleto"
    And enviar a mensagem
    And clicar no botao "Financiamento de veículos"
    And validar conteudo (ballon 5) "Agora me diz, o que você quer pagar?"
    And clicar no botao "Parcelas atrasadas"
    And validar conteudo (ballon 7) "Para pegar o boleto da sua parcela atrasada, você tem que:"
    And validar conteudo (ballon 7) "Acessar a tela inicial do app"
    And validar conteudo (ballon 7) "Tocar em Gerar boleto"
    And validar conteudo (ballon 7) "Selecionar o botão Gerar boleto"
    And validar conteudo (ballon 7) "Caso tenha mais de uma parcela atrasada, você precisa escolher qual quer pagar depois do passo 2."
    And validar conteudo (ballon 7) "Dica: você pode selecionar mais de uma parcela pra pagar tudo em apenas um boleto."
    And validar conteudo (ballon 8) "Pronto! É só copiar o código de barras ou baixar o PDF do seu boleto."
    And clicar no botao "Já tentei isso"
    And validar conteudo (ballon 10) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer?"
    Then clicar no botao "<button>"
    And validar conteudo (ballon 12) "<content>"

    Examples:
      | button               | content                                              |
      | Falar com uma pessoa | atendimento                                          |
      | Deixar para depois   | Se eu puder te ajudar com outra coisa, me conta aqui |

  @CT5-SEGUNDA-VIA-APP
  Scenario: Solicitar segunda via do boleto (Outros contratos - Parcela atual)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "segunda via do meu boleto"
    And enviar a mensagem
    And clicar no botao "Outros Contratos"
    And validar conteudo (ballon 5) "Agora me diz, o que você quer pagar?"
    And clicar no botao "Parcela atual"
    And validar conteudo (ballon 7) "Ok! Para pegar o boleto da parcela atual de um financiamento ou crédito, você precisa:"
    And validar conteudo (ballon 7) "Acessar a tela inicial do app"
    And validar conteudo (ballon 7) "Tocar no valor da parcela ou em Gerar Boleto"
    And validar conteudo (ballon 7) "Selecionar o botão Ver boleto em PDF para baixar o arquivo"
    And validar conteudo (ballon 7) "Ou, se preferir, toque em copiar código para copiar o código de barras"
    And validar conteudo (ballon 7) "Ah, se você tiver uma conta BV pode fazer o pagamento com o seu saldo!"
    And clicar no botao "Já tentei isso"
    And validar conteudo (ballon 9) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer?"
    Then clicar no botao "<button>"
    And validar conteudo (ballon 11) "<content>"

    Examples:
      | button               | content                                              |
      | Falar com uma pessoa | atendimento                                          |
      | Deixar para depois   | Se eu puder te ajudar com outra coisa, me conta aqui |

  @CT6-SEGUNDA-VIA-APP
  Scenario: Solicitar segunda via do boleto (Outros contratos - Parcelas atrasadas)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "segunda via do meu boleto"
    And enviar a mensagem
    And clicar no botao "Outros Contratos"
    And validar conteudo (ballon 5) "Agora me diz, o que você quer pagar?"
    And clicar no botao "Parcelas atrasadas"
    And validar conteudo (ballon 7) "Ok! Para pegar o boleto da parcela atrasada de um financiamento ou crédito, você precisa:"
    And validar conteudo (ballon 7) "Acessar a tela inicial do app"
    And validar conteudo (ballon 7) "Tocar em Gerar Boleto"
    And validar conteudo (ballon 7) "Selecionar o botão Gerar Boleto"
    And validar conteudo (ballon 7) "Caso tenha mais de uma parcela atrasada, você precisa escolher qual quer pagar depois do passo 2."
    And validar conteudo (ballon 7) "Dica: você pode selecionar mais de uma parcela pra pagar tudo em apenas um boleto."
    And validar conteudo (ballon 8) "Pronto! É só copiar o código de barras ou baixar o PDF do seu boleto."
    And clicar no botao "Já tentei isso"
    And validar conteudo (ballon 10) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer?"
    Then clicar no botao "<button>"
    And validar conteudo (ballon 12) "<content>"

    Examples:
      | button               | content                                              |
      | Falar com uma pessoa | atendimento                                          |
      | Deixar para depois   | Se eu puder te ajudar com outra coisa, me conta aqui |

  @CT7-SEGUNDA-VIA-APP-ATT
  Scenario: Solicitar segunda via do boleto FIV através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Agora me diz, o que você quer pagar?"
    And validar conteudo (ballon 3) "Parcela atual"
    And validar conteudo (ballon 3) "Parcelas atrasadas"

    Examples:
      | intent                                |
      | segunda via financiamento de veículos |
      | perdi o boleto do meu financiamento   |
      | segunda via financiamento             |
      | parcela do financiamento              |
      | cegunda via financiamento de veiculo  |

  @CT8-SEGUNDA-VIA-APP-ATT
  Scenario: Solicitar segunda via do boleto (Financiamento de Veículos - Parcela atual) att
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "segunda via financiamento de veículos"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Agora me diz, o que você quer pagar?"
    And clicar no botao "Parcela atual"
    And validar conteudo (ballon 5) "Para pegar o boleto da sua parcela atual, você precisa"
    And validar conteudo (ballon 5) "Acessar a tela inicial do app"
    And validar conteudo (ballon 5) "Tocar no valor da parcela ou em Gerar boleto"
    And validar conteudo (ballon 5) "Selecionar o botão Ver boleto em PDF"
    And validar conteudo (ballon 5) "Pronto! É só copiar o código de barras ou baixar o PDF do seu boleto."
    And validar conteudo (ballon 6) "Se eu puder te ajudar com outra coisa, me conta aqui"
    Then eu digitar a intencao "Falar com uma pessoa"
    And enviar a mensagem
    And validar conteudo (ballon 8) "Eu consigo te ajudar com vários assuntos de forma rápida"
    And validar conteudo (ballon 8) "Me dá uma chance?"
    And validar conteudo (ballon 8) "Você pode escolher uma das opções abaixo ou digitar o que precisa"
    And validar conteudo (ballon 8) "Alterar cadastro"
    And validar conteudo (ballon 8) "Recuperar senha"
    And validar conteudo (ballon 8) "Boleto de financiamento"
    And validar conteudo (ballon 8) "Fatura do cartão"
    And validar conteudo (ballon 8) "Falar com uma pessoa"
    And validar conteudo (ballon 8) "Autorizar celular"
    And validar conteudo (ballon 8) "Limite"

  @CT9-SEGUNDA-VIA-APP-ATT
  Scenario: Solicitar segunda via do boleto (Financiamento de Veículos - Parcelas atrasadas) att
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "segunda via financiamento de veículos"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Agora me diz, o que você quer pagar?"
    And clicar no botao "Parcelas atrasadas"
    And validar conteudo (ballon 5) "Para pegar o boleto da sua parcela atrasada, você tem que:"
    And validar conteudo (ballon 5) "Acessar a tela inicial do app"
    And validar conteudo (ballon 5) "Tocar em Gerar boleto"
    And validar conteudo (ballon 5) "Selecionar o botão Gerar boleto"
    And validar conteudo (ballon 5) "Caso tenha mais de uma parcela atrasada, você precisa escolher qual quer pagar depois do passo 2."
    And validar conteudo (ballon 5) "Dica: você pode selecionar mais de uma parcela pra pagar tudo em apenas um boleto."
    And validar conteudo (ballon 6) "Se eu puder te ajudar com outra coisa, me conta aqui"
    Then eu digitar a intencao "Falar com uma pessoa"
    And enviar a mensagem
    And validar conteudo (ballon 8) "Eu consigo te ajudar com vários assuntos de forma rápida"
    And validar conteudo (ballon 8) "Me dá uma chance?"
    And validar conteudo (ballon 8) "Você pode escolher uma das opções abaixo ou digitar o que precisa"
    And validar conteudo (ballon 8) "Alterar cadastro"
    And validar conteudo (ballon 8) "Recuperar senha"
    And validar conteudo (ballon 8) "Boleto de financiamento"
    And validar conteudo (ballon 8) "Fatura do cartão"
    And validar conteudo (ballon 8) "Falar com uma pessoa"
    And validar conteudo (ballon 8) "Autorizar celular"
    And validar conteudo (ballon 8) "Limite"

  @CT10-SEGUNDA-VIA-APP-ATT
  Scenario: Solicitar segunda via do boleto através das intenções att
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Você gostaria da segunda via do seu boleto de:"
    And validar conteudo (ballon 3) "Financiamento de veículos"
    And validar conteudo (ballon 3) "Fatura do cartão"
    And validar conteudo (ballon 3) "Outros Contratos"
    Examples:
      | intent                            |
      | segunda via de boleto             |
      | quero a segunda via do meu boleto |
      | perdi meu boleto                  |
      | 2 via do boleto                   |
      | não recebi o boleto               |

  @CT11-SEGUNDA-VIA-APP-ATT
  Scenario: Solicitar segunda via do boleto (Desamb. Segunda via FIV - Parcela atual) att
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Segunda via de boleto"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Você gostaria da segunda via do seu boleto de:"
    And clicar no botao "Financiamento de veículos"
    And validar conteudo (ballon 5) "Agora me diz, o que você quer pagar?"
    And clicar no botao "Parcela atual"
    And validar conteudo (ballon 7) "Para pegar o boleto da sua parcela atual, você precisa:"
    And validar conteudo (ballon 7) "Acessar a tela inicial do app"
    And validar conteudo (ballon 7) "Tocar no valor da parcela ou em Gerar boleto"
    And validar conteudo (ballon 7) "Selecionar o botão Ver boleto em PDF"
    And validar conteudo (ballon 7) "Pronto! É só copiar o código de barras ou baixar o PDF do seu boleto"
    And validar conteudo (ballon 8) "Se eu puder te ajudar com outra coisa, me conta aqui"
    Then eu digitar a intencao "Falar com uma pessoa"
    And enviar a mensagem
    And validar conteudo (ballon 10) "Eu consigo te ajudar com vários assuntos de forma rápida"
    And validar conteudo (ballon 10) "Me dá uma chance?"
    And validar conteudo (ballon 10) "Você pode escolher uma das opções abaixo ou digitar o que precisa"
    And validar conteudo (ballon 10) "Alterar cadastro"
    And validar conteudo (ballon 10) "Recuperar senha"
    And validar conteudo (ballon 10) "Boleto de financiamento"
    And validar conteudo (ballon 10) "Fatura do cartão"
    And validar conteudo (ballon 10) "Falar com uma pessoa"

  @CT12-SEGUNDA-VIA-APP-ATT
  Scenario: Solicitar segunda via do boleto (Desamb. Segunda via FIV - Parcelas atrasadas) att
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Segunda via de boleto"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Você gostaria da segunda via do seu boleto de:"
    And clicar no botao "Financiamento de veículos"
    And validar conteudo (ballon 5) "Agora me diz, o que você quer pagar?"
    And clicar no botao "Parcelas atrasadas"
    And validar conteudo (ballon 7) "Para pegar o boleto da sua parcela atrasada, você tem que:"
    And validar conteudo (ballon 7) "Acessar a tela inicial do app"
    And validar conteudo (ballon 7) "Tocar em Gerar boleto"
    And validar conteudo (ballon 7) "Selecionar o botão Gerar boleto"
    And validar conteudo (ballon 7) "Caso tenha mais de uma parcela atrasada, você precisa escolher qual quer pagar depois do passo 2"
    And validar conteudo (ballon 7) "Dica: você pode selecionar mais de uma parcela pra pagar tudo em apenas um boleto"
    And validar conteudo (ballon 7) "Pronto! É só copiar o código de barras ou baixar o PDF do seu boleto"
    And validar conteudo (ballon 8) "Se eu puder te ajudar com outra coisa, me conta aqui"
    Then eu digitar a intencao "Falar com uma pessoa"
    And enviar a mensagem
    And validar conteudo (ballon 10) "Eu consigo te ajudar com vários assuntos de forma rápida"
    And validar conteudo (ballon 10) "Me dá uma chance?"
    And validar conteudo (ballon 10) "Você pode escolher uma das opções abaixo ou digitar o que precisa"
    And validar conteudo (ballon 10) "Alterar cadastro"
    And validar conteudo (ballon 10) "Recuperar senha"
    And validar conteudo (ballon 10) "Boleto de financiamento"
    And validar conteudo (ballon 10) "Fatura do cartão"
    And validar conteudo (ballon 10) "Falar com uma pessoa"