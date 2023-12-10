Feature: Reinvidicação de posse da chave pix app

  Scenario: Solicitar reivindicação de posse da chave pix através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Ao tentar cadastrar um e-mail ou celular seu como chave Pix, você pode receber uma mensagem avisando que o dado está cadastrado por outra pessoa."
    And validar conteudo (ballon 3) "Pra resolver isso, é só continuar o seu registro e tocar no botão Pedir posse da chave quando ele aparecer."
    And validar conteudo (ballon 3) "Em até 14 dias, a gente te avisa a resposta aqui pelo app. 😉"

    Examples:
      | intent                                              |
      | como posso pedir a posse de uma chave pix?          |
#      | Como posso fazer a reivindicação de posse de chave? |
#      | Minha chave pix está cadastrada por outra pessoa    |
#      | Quero pedir a posse da chave pix                    |
#      | quero reivindicar a posse da minha chave pix        |
#      | Pedir posse da chave pix                            |
#      | Como pedir posse da chave pix                       |
#      | Preciso da posse da minha chave pix                 |

  Scenario: Solicitar reivindicação de posse da chave pix, até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "preciso da posse de minha chave pix"
    And enviar a mensagem
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 5) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Solicitar reivindicação de posse e optar por chave pix, até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "pedir posse"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Me conta só mais uma coisinha: você quer reivindicar a posse do que?"
    And clicar no botao "Chave Pix"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"
    


