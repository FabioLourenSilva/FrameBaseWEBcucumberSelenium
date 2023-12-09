Feature: Desbloquear cartao no app

  Scenario: Desbloquear cartao no app
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Vamos lá! Você quer desbloquear o seu Cartão BV porque ele é um cartão novo ou porque foi bloqueado?"

    Examples:
      | intent                               |
      | Quero desbloquear meu cartão         |
      | Preciso desbloquear meu cartão       |
      | Realizar o desbloqueio do meu cartão |
#      | Fazer desbloqueio de cartao          |
#      | Como desbloquear meu cartao          |
#      | Ajuda para desbloquear meu cartao    |

  Scenario: Solicitar desbloqueio de cartão fluxo completo já com o recebimento do cartão novo (esqueci a senha)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Quero desbloquear meu cartão"
    And enviar a mensagem
    And clicar no botao "Novo"
    And validar conteudo (ballon 5) "Então conte pra mim: você já recebeu o seu novo cartão?"
    And clicar no botao "Sim"
    And validar conteudo (ballon 7) "Para desbloquear o novo Cartão BV pelo app, você deve:"
    And validar conteudo (ballon 7) "Acessar a tela inicial do app"
    And validar conteudo (ballon 7) "Tocar em Meus cartões 👉 Desbloquear seu novo cartão"
    And validar conteudo (ballon 7) "Escolher o cartão que será desbloqueado"
    And validar conteudo (ballon 7) "Selecionar Recebi o meu cartão 👉 Desbloquear cartão"
    And validar conteudo (ballon 7) "Digitar a senha de compras do seu cartão anterior"
    And clicar no botao "Esqueci minha senha"
    Then validar conteudo (ballon 9) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Solicitar cartão de desbloqueio fluxo completo sem o recebimento do cartão novo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Quero desbloquear meu cartão"
    And enviar a mensagem
    And clicar no botao "Novo"
    And validar conteudo (ballon 5) "Então conte pra mim: você já recebeu o seu novo cartão?"
    And clicar no botao "Não"
    Then validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Solicitar desbloqueio de cartão fluxo completo bloqueado por senha
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Quero desbloquear meu cartão"
    And enviar a mensagem
    And clicar no botao "Bloqueado"
    Then validar conteudo (ballon 5) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Solicitar desbloqueio do cartao atraves das intencoes e sendo direcionado ao transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

    Examples:
      | intent                         |
      | Fui bloqueado                  |
#      | teve um bloqueio no meu cartao |
#      | meu cartao foi bloqueado       |
#      | bloqueei meu cartao bv         |

  Scenario: Solicitar desbloqueio de cartão e mudar de assunto
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Quero desbloquear meu cartão"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Vamos lá! Você quer desbloquear o seu Cartão BV porque ele é um cartão novo ou porque foi bloqueado?"
    And eu digitar a intencao "Quero mudar de assunto"
    And enviar a mensagem
    Then validar conteudo (ballon 5) "Então, me conta: o que você precisa?"


