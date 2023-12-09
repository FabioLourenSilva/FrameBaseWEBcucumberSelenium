Feature: Bloquear cartao no app

  Scenario: Solicitar bloqueio do cartao atraves das intencoes
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para que eu possa te ajudar melhor, preciso saber: o que aconteceu com seu cartão?"

    Examples:
      | intent                    |
      | Quero bloquear meu cartão |
      | Preciso bloquear meu cartão       |
      | Realizar o bloqueio do meu cartão |
#      | Fazer bloqueio de cartao          |
#      | Como bloquear meu cartao          |
#      | Ajuda para bloquear meu cartao    |
#      | Cartao roubado                    |
#      | Fui roubado e levaram meu cartao  |
#      | Quero travar meu cartao           |
#      | Perdi meu cartao                  |
#      | roubaram o meu cartao             |
#      | clonaram o meu cartao             |
#      | copiaram meu cartao               |
#      | estão usando meu cartao           |
#      | alguém pegou meu cartão           |
#      | pagaram o meu cartão              |

  Scenario: Solicitar bloqueio do cartao (foi perdido) até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Preciso bloquear meu cartão"
    And enviar a mensagem
    And clicar no botao "Foi perdido"
    And validar conteudo (ballon 5) "Que pena que isso aconteceu. 😩"
    And validar conteudo (ballon 5) "Para fazer o bloqueio pelo app, você deve fazer o seguinte:"
    And validar conteudo (ballon 5) "Acessar a tela inicial do app"
    And validar conteudo (ballon 5) "Tocar em Meus cartões 👉 Bloquear cartão"
    And validar conteudo (ballon 5) "Escolher o cartão que precisa ser bloqueado. Só para avisar: ele também vai ser cancelado"
    And validar conteudo (ballon 5) "Selecionar Perdi meu cartão e confirmar o endereço onde você vai receber o novo cartão"
    And validar conteudo (ballon 5) "Digitar a sua senha e pronto! Seu cartão está bloqueado e cancelado"
    And validar conteudo (ballon 5) "Agora é só aguardar a chegada do novo cartão."
    And clicar no botao "Já tentei isso"
    And validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Solicitar bloqueio do cartao (foi roubado) até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Preciso bloquear meu cartão"
    And enviar a mensagem
    And clicar no botao "Foi roubado"
    And validar conteudo (ballon 5) "Que pena que isso aconteceu. 😩"
    And validar conteudo (ballon 5) "Para fazer o bloqueio pelo app, você deve fazer o seguinte:"
    And validar conteudo (ballon 5) "Acessar a tela inicial do app"
    And validar conteudo (ballon 5) "Tocar em Meus cartões 👉 Bloquear cartão"
    And validar conteudo (ballon 5) "Escolher o cartão que precisa ser bloqueado. Só para avisar: ele também vai ser cancelado"
    And validar conteudo (ballon 5) "Selecionar Perdi meu cartão e confirmar o endereço onde você vai receber o novo cartão"
    And validar conteudo (ballon 5) "Digitar a sua senha e pronto! Seu cartão está bloqueado e cancelado"
    And validar conteudo (ballon 5) "Agora é só aguardar a chegada do novo cartão."
    And clicar no botao "Já tentei isso"
    And validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Solicitar bloqueio do cartao (foi roubado) até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Preciso bloquear meu cartão"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Para que eu possa te ajudar melhor, preciso saber: o que aconteceu com seu cartão?"
    And eu digitar a intencao "Quero mudar de assunto"
    And enviar a mensagem
    And validar conteudo (ballon 5) "Então, me conta: o que você precisa?"









