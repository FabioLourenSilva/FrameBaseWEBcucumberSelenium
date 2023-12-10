Feature: Excluir chave pix app

  Scenario: Solicitar exclusão chave pix através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para excluir sua chave Pix, você precisa:"
    And validar conteudo (ballon 3) "Acessar a tela inicial do app"
    And validar conteudo (ballon 3) "Escolher a opção Pix e depois Minhas chaves"
    And validar conteudo (ballon 3) "Tocar nos 3 pontinhos ao lado da chave Pix que deseja apagar"
    And validar conteudo (ballon 3) "Selecionar Excluir chave"

    Examples:
      | intent                                        |
      | como excluir chave pix                        |
#      | como posso excluir minha chave pix?           |
#      | preciso excluir minha chave pix               |
#      | como excluo uma chave pix?                    |
#      | preciso excluir minha chave pix               |
#      | como excluo uma chave pix?                    |
#      | quero ajuda pra excluir minha chave pix       |
#      | Não estou conseguindo excluir minha chave pix |
#      | Quero deletar minha chave pix                 |
#      | Como posso fazer pra deletar uma chave pix?   |
#      | excluir chave pix                             |
#      | preciso apagar uma chave pix                  |
#      | como apago uma chave pix?                     |

  Scenario: Solicitar exclusão e optar por chave pix, até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "quero excluir"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Me conta só mais uma coisa: o que você quer cancelar ou excluir?"
    And clicar no botao "Chave Pix"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Solicitar exclusão de chave pix, até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "quero excluir chave pix"
    And enviar a mensagem
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 5) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

