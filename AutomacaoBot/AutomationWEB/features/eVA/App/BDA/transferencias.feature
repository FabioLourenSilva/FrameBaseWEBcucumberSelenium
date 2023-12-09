Feature: Solicitação transferencias no app

  Scenario: Solicitar transferencia atraves das intençoes
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Vou dar uma dica: com o Pix, você pode fazer transferências de um jeito mais fácil, em qualquer dia e hora, sem pagar nada por isso."
    And validar conteudo (ballon 3) "E sabe qual é o melhor? O dinheiro cai em poucos segundos! 💸"

    Examples:
      | intent                                                  |
      | Estou com dúvidas pra fazer transferências              |
      | Quero fazer uma transferência                           |
      | Como transferir dinheiro?                               |
      | Não estou conseguindo transferir valor                  |
      | como realizo uma transferência?                         |
      | estou com dúvidas na hora de fazer transferências       |
      | não consegui fazer uma transferência                    |
      | não consegui transferir dinheiro                        |
      | como transfiro dinheiro?                                |
      | to transferindo dinheiro e valor não cai na outra conta |

  Scenario: Solicitar transferencia TED atraves das intençoes
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para fazer uma TED, você precisa:"
    And validar conteudo (ballon 3) "Acessar a tela inicial do app"
    And validar conteudo (ballon 3) "Tocar em Fazer transferência"
    And validar conteudo (ballon 3) "Colocar os dados solicitados na tela"
    And validar conteudo (ballon 3) "Escolher a forma da transferência em Via 👉 TED"

    Examples:
      | intent                |
      | Como realizo uma TED? |
      | Preciso fazer uma TED |
      | quero fazer uma ted   |

  Scenario: Solicitar transferencia DOC atraves das intençoes
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Pra te oferecer mais agilidade, aqui no BV não temos a opção de transferência por DOC."
    And validar conteudo (ballon 3) "Neste caso, te indico fazer um Pix: o dinheiro cai em poucos segundos na outra conta, em qualquer dia e hora."
    And validar conteudo (ballon 3) "Se preferir, você pode fazer uma TED. 😉"


    Examples:
      | intent               |
      | Preciso fazer um DOC |
      | quero fazer um doc   |

  Scenario: Solicitar transferencia, fluxo completo PIX (Esqueci minha senha) até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Quero fazer uma transferência"
    And enviar a mensagem
    And clicar no botao "Pix"
    And validar conteudo (ballon 5) "Para fazer uma transferência Pix, você precisa:"
    And validar conteudo (ballon 5) "Acessar a tela inicial do app"
    And validar conteudo (ballon 5) "Ir em Pix 👉 Transferir"
    And validar conteudo (ballon 5) "Digitar a chave Pix de quem vai receber"
    And validar conteudo (ballon 5) "Escolher o valor da transferência"
    And clicar no botao "Não deu certo"
    And validar conteudo (ballon 7) "Então vamos tentar resolver isso juntos! Qual problema você teve com a transferência?"
    And clicar no botao "Esqueci minha senha"
    Then validar conteudo (ballon 9) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Solicitar transferencia, fluxo completo PIX (Valor voltou pra conta) até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Quero fazer uma transferência"
    And enviar a mensagem
    And clicar no botao "Pix"
    And validar conteudo (ballon 5) "Para fazer uma transferência Pix, você precisa:"
    And validar conteudo (ballon 5) "Acessar a tela inicial do app"
    And validar conteudo (ballon 5) "Ir em Pix 👉 Transferir"
    And validar conteudo (ballon 5) "Digitar a chave Pix de quem vai receber"
    And validar conteudo (ballon 5) "Escolher o valor da transferência"
    And clicar no botao "Não deu certo"
    And validar conteudo (ballon 7) "Então vamos tentar resolver isso juntos! Qual problema você teve com a transferência?"
    And clicar no botao "Valor voltou pra conta"
    And validar conteudo (ballon 9) "Às vezes isso acontece porque algum dado da conta que iria receber estava errado. Por favor, confirme se está tudo certo e tente de novo. 😊"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 11) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Solicitar transferencia, fluxo completo PIX (Outro problema) até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Quero fazer uma transferência"
    And enviar a mensagem
    And clicar no botao "Pix"
    And validar conteudo (ballon 5) "Para fazer uma transferência Pix, você precisa:"
    And validar conteudo (ballon 5) "Acessar a tela inicial do app"
    And validar conteudo (ballon 5) "Ir em Pix 👉 Transferir"
    And validar conteudo (ballon 5) "Digitar a chave Pix de quem vai receber"
    And validar conteudo (ballon 5) "Escolher o valor da transferência"
    And clicar no botao "Não deu certo"
    And validar conteudo (ballon 7) "Então vamos tentar resolver isso juntos! Qual problema você teve com a transferência?"
    And clicar no botao "Outro problema"
    Then validar conteudo (ballon 9) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Solicitar transferencia, fluxo completo TED (Esqueci minha senha) até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Quero fazer uma transferência"
    And enviar a mensagem
    And clicar no botao "TED"
    And clicar no botao "Não deu certo"
    And validar conteudo (ballon 7) "Então vamos tentar resolver isso juntos! Qual problema você teve com a transferência?"
    And clicar no botao "Esqueci minha senha"
    Then validar conteudo (ballon 9) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Solicitar transferencia, fluxo completo TED (Valor voltou pra conta) até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Quero fazer uma transferência"
    And enviar a mensagem
    And clicar no botao "TED"
    And clicar no botao "Não deu certo"
    And validar conteudo (ballon 7) "Então vamos tentar resolver isso juntos! Qual problema você teve com a transferência?"
    And clicar no botao "Valor voltou pra conta"
    And validar conteudo (ballon 9) "Às vezes isso acontece porque algum dado da conta que iria receber estava errado. Por favor, confirme se está tudo certo e tente de novo. 😊"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 11) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Solicitar transferencia, fluxo completo TED (Outro problema) até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Quero fazer uma transferência"
    And enviar a mensagem
    And clicar no botao "TED"
    And clicar no botao "Não deu certo"
    And validar conteudo (ballon 7) "Então vamos tentar resolver isso juntos! Qual problema você teve com a transferência?"
    And clicar no botao "Outro problema"
    Then validar conteudo (ballon 9) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"
