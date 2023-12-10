Feature: Cadastrar chave pix site

  Scenario: Solicitar cadastro atraves das intençoes
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Entendi que você quer fazer um cadastro."

    Examples:
      | intent                 |
#      | Como fazer um cadastro |
#      | Preciso de ajuda pra fazer um cadastro |
      | Quero cadastrar                        |
#      | Registrar                              |
#      | incluir um cadastro                    |
#      | Adicionar um cadastro                  |
#      | cadastramento                          |
#      | quero registrar                        |
#      | como cadastrar                         |

  Scenario: Solicitar cadastro de chave pix
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Como cadastrar"
    And enviar a mensagem
    And clicar no botao "Chave Pix"
    And validar conteudo (ballon 5) "Para cadastrar uma chave Pix, você precisa ter a nossa conta digital. Se já tem, é só ir no app banco BV e:"
    And validar conteudo (ballon 5) "Escolher a opção Pix na tela inicial"
    And validar conteudo (ballon 5) "Tocar em Cadastrar uma chave e seguir as instruções na tela"
    And validar conteudo (ballon 5) "Prontinho! 😉"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Solicitar cadastro chave pix atraves das intençoes
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para cadastrar uma chave Pix, você precisa ter a nossa conta digital. Se já tem, é só ir no app banco BV e:"
    And validar conteudo (ballon 3) "Escolher a opção Pix na tela inicial"
    And validar conteudo (ballon 3) "Tocar em Cadastrar uma chave e seguir as instruções na tela"
    And validar conteudo (ballon 3) "Prontinho! 😉"

    Examples:
      | intent                           |
      | Como fazer um cadastro chave pix |
#      | Quero cadastrar chave                  |
#      | Registrar chave pix                    |
#      | incluir um cadastro da minha chave pix |
#      | Adicionar um cadastro de chave pix     |
#      | cadastramento da chave pix             |
#      | quero registrar chave pix              |
#      | fazer um registro de chave pix         |
#      | cadastramento de chave pix             |
#      | cadastrar chave pix                    |
#      | registro de chave pix                  |
#      | cadastro de chave pix                  |
#      | como cadastrar chave                   |

  
  