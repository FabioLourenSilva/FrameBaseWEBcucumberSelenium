Feature: Comprovante PGT WEB

  @CT1-PGT-WEB
  Scenario: Solicitar comprovante de pagamento através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Agora me diz, você precisa de um comprovante de transação de:"
    And validar conteudo (ballon 3) "Saldo em conta"
    And validar conteudo (ballon 3) "Cartão BV"
    And validar conteudo (ballon 3) "Pagamento financiamento"
    And validar conteudo (ballon 3) "Pagamento empréstimo"

    Examples:
      | intent                                          |
      | Saber sobre comprovate                          |
      | quero consultar meu historico de pagament       |
      | historico de pagamento                          |
      | nao seu como pegar um comprovante de pagamento  |
      | ter acesso a comprovantes                       |
      | quero um comprovante                            |
      | quero pegar um PDF                              |
      | nao consigo gerar o comprovante                 |
      | preciso do meu historico de pagamento           |
      | queria ver o recibo de pagamento                |
      | como acesso meus comprovantes                   |
      | quero comprovante de pagamento de financiamento |
      | quero comprovante de pagamento de emprestimo    |
      | extrato de pagamento                            |
      | comprovante do financiamento                    |
      | comprovante de empréstimo                       |

  @CT2-PGT-WEB
  Scenario: Solicitar comprovante de pagamento do saldo em conta (Transbordo e deixar para depois)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "extrato de pagamento"
    And enviar a mensagem
    And clicar no botao "Saldo em conta"
    And validar conteudo (ballon 5) "Certo! Para pegar um comprovante de pagamento, você precisa ter o app banco BV em seu celular. Nele, é só:"
    And validar conteudo (ballon 5) "Acessar a tela inicial do app"
    And validar conteudo (ballon 5) "Ir em Consultar extrato"
    And validar conteudo (ballon 5) "Tocar na transação feita → Ver comprovante"
    And validar conteudo (ballon 5) "Pronto! Você pode compartilhar o comprovante com quem quiser."
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer?"
    And clicar no botao "<button>"
    And validar conteudo (ballon 9) "<content>"

    Examples:
      | button               | content                                                                           |
      | Falar com uma pessoa | Antes de te transferir para uma pessoa do time BV, preciso de quatro informações. |
      | Deixar para depois   | Se eu puder te ajudar com outra coisa, me conta aqui.                             |

  @CT3-PGT-WEB
  Scenario: Solicitar comprovante de pagamento do cartão BV, não dando certo o procedimento (Transbordo e deixar para depois)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "extrato de pagamento"
    And enviar a mensagem
    And clicar no botao "Cartão BV"
    And validar conteudo (ballon 5) "Para pegar um comprovante de pagamento, você precisa ter o app banco BV em seu celular."
    And validar conteudo (ballon 5) "Acessar a tela inicial"
    And validar conteudo (ballon 5) "Ir em Organizar contas"
    And validar conteudo (ballon 5) "Tocar no ícone do canto inferior → Pago com cartão"
    And validar conteudo (ballon 5) "Escolher o pagamento → Ver comprovante"
    And validar conteudo (ballon 5) "Pronto! É só compartilhar o comprovante com quem você precisa."
    And validar conteudo (ballon 5) "Se ainda não ativou o Boleto Digital (DDA), essa é a hora! Com ele, você tem controle das contas que precisa pagar, mas só através do nosso app."
    And clicar no botao "Não deu certo"
    Then validar conteudo (ballon 7) "Ah, tudo bem! Vou te contar um outro jeito de acessar o comprovante no app BV. É só:"
    Then validar conteudo (ballon 7) "Acessar a tela inicial do app"
    Then validar conteudo (ballon 7) "Ir em Consultar extrato"
    Then validar conteudo (ballon 7) "Tocar no pagamento → Ver comprovante"
    Then validar conteudo (ballon 7) "Pronto! Você consegue compartilhar o comprovante por ali."
    And clicar no botao "Já tentei isso"
    And clicar no botao "<button>"
    And validar conteudo (ballon 11) "<content>"

    Examples:
      | button               | content                                                                           |
      | Falar com uma pessoa | Antes de te transferir para uma pessoa do time BV, preciso de quatro informações. |
      | Deixar para depois   | Se eu puder te ajudar com outra coisa, me conta aqui.                             |

  @CT4-PGT-WEB
  Scenario: Solicitar comprovante de pagamento do cartão BV e conhecer o DDA
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "extrato de pagamento"
    And enviar a mensagem
    And clicar no botao "Cartão BV"
    And validar conteudo (ballon 5) "Para pegar um comprovante de pagamento, você precisa ter o app banco BV em seu celular."
    And validar conteudo (ballon 5) "Acessar a tela inicial"
    And validar conteudo (ballon 5) "Ir em Organizar contas"
    And validar conteudo (ballon 5) "Tocar no ícone do canto inferior → Pago com cartão"
    And validar conteudo (ballon 5) "Escolher o pagamento → Ver comprovante"
    And validar conteudo (ballon 5) "Pronto! É só compartilhar o comprovante com quem você precisa."
    And validar conteudo (ballon 5) "Se ainda não ativou o Boleto Digital (DDA), essa é a hora! Com ele, você tem controle das contas que precisa pagar, mas só através do nosso app."
    And clicar no botao "Conhecer o DDA"
    Then validar conteudo (ballon 7) "O Boleto Digital (DDA) busca todos os boletos digitais cadastrados no seu CPF, mesmo os de outras instituições, e centraliza em um único lugar: o Organizador Financeiro BV."
    Then validar conteudo (ballon 7) "Lá você acompanha seus gastos mensais pra se programar melhor e ainda pode pagar direto pelo app BV."
    Then validar conteudo (ballon 7) "No momento, o Boleto Digital só não encontra contas de concessionárias, como água, luz e gás."
    And clicar no botao "Ativar DDA"
    And validar conteudo (ballon 9) "Para ativar o Boleto Digital (DDA), você precisa ter a conta digital no app BV."
    And validar conteudo (ballon 9) "Acessar a tela inicial do app"
    And validar conteudo (ballon 9) "Ir em Organizar contas → Ativar Boleto Digital (DDA)"
    And validar conteudo (ballon 9) "A partir dali, siga as instruções da tela e pronto!"
#    And validar conteudo (ballon 9) "Agora é só esperar a tela de confirmação e seguir as instruções"

  @CT5-PGT-WEB
  Scenario: Solicitar comprovante de pagamento do pagamento de financiamento (Saber mais)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "extrato de pagamento"
    And enviar a mensagem
    And clicar no botao "<button_comprovante>"
    And validar conteudo (ballon 5) "Para gerar um extrato detalhado com as informações do seu financiamento ou empréstimo:"
    And validar conteudo (ballon 5) "Vá na página inicial da Minha BV e clique em Financiamento"
    And validar conteudo (ballon 5) "Você vai ver os Dados do contrato na aba Extrato"
    And validar conteudo (ballon 5) "Então, é só rolar a página pra baixo e clicar em Ver PDF (Imprimir)"
    And validar conteudo (ballon 5) "Pronto! Você vai conseguir um extrato completo de todas as suas parcelas pagas e a pagar."
    And validar conteudo (ballon 6) "Ah, e essas informações também estão disponíveis no app do BV, caso não queira o extrato em PDF."
    And clicar no botao "Saber mais"
    Then validar conteudo (ballon 8) "Vou te contar:"
    And validar conteudo (ballon 8) "Ná página inicial, vá em Crédito e Financiamento"
    And validar conteudo (ballon 8) "Lá, você vai ver as informações dos seus contratos de financiamento ou empréstimo"
    And validar conteudo (ballon 8) "E se quiser imprimir o extrato detalhado, é só seguir o passo a passo no site!"
    And validar conteudo (ballon 9) "Consegui te ajudar?"
    And clicar no botao "<button>"
    And validar conteudo (ballon 11) "<content>"

    Examples:
      | button_comprovante      | button                      | content                                            |
      | Pagamento financiamento | Sim, era só isso            | Estou sempre por aqui. Precisando, é só chamar.    |
      | Pagamento financiamento | Não, ainda preciso de ajuda | Me conta em poucas palavras, como posso te ajudar? |
      | Pagamento empréstimo    | Sim, era só isso            | Estou sempre por aqui. Precisando, é só chamar.    |
      | Pagamento empréstimo    | Não, ainda preciso de ajuda | Me conta em poucas palavras, como posso te ajudar? |

  @CT6-PGT-WEB
  Scenario: Solicitar comprovante de pagamento do pagamento de financiamento (Deixar para depois)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "extrato de pagamento"
    And enviar a mensagem
    And clicar no botao "<button_comprovante>"
    And validar conteudo (ballon 5) "Para gerar um extrato detalhado com as informações do seu financiamento ou empréstimo:"
    And validar conteudo (ballon 5) "Vá na página inicial da Minha BV e clique em Financiamento"
    And validar conteudo (ballon 5) "Você vai ver os Dados do contrato na aba Extrato"
    And validar conteudo (ballon 5) "Então, é só rolar a página pra baixo e clicar em Ver PDF (Imprimir)"
    And validar conteudo (ballon 5) "Pronto! Você vai conseguir um extrato completo de todas as suas parcelas pagas e a pagar."
    And validar conteudo (ballon 6) "Ah, e essas informações também estão disponíveis no app do BV, caso não queira o extrato em PDF."
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 8) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? "
    And clicar no botao "<button>"
    And validar conteudo (ballon 10) "<content>"

    Examples:
      | button_comprovante      | button               | content                                                                           |
      | Pagamento financiamento | Falar com uma pessoa | Antes de te transferir para uma pessoa do time BV, preciso de quatro informações. |
      | Pagamento financiamento | Deixar para depois   | Se eu puder te ajudar com outra coisa, me conta aqui.                             |
      | Pagamento empréstimo    | Falar com uma pessoa | Antes de te transferir para uma pessoa do time BV, preciso de quatro informações. |
      | Pagamento empréstimo    | Deixar para depois   | Se eu puder te ajudar com outra coisa, me conta aqui.                             |




