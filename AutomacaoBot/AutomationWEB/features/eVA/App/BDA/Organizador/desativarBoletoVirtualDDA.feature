Feature: Desativar boleto virtual (DDA) no app

  Scenario: Solicitar desativação do boleto virtual através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para desativar o Boleto Digital (DDA), você precisa:"
    And validar conteudo (ballon 3) "Acessar a tela inicial do app"
    And validar conteudo (ballon 3) "Ir em Organizar contas"
    And validar conteudo (ballon 3) "Selecionar Boleto Digital (DDA) está ativo"
    And validar conteudo (ballon 3) "Tocar em Desativar Boleto Digital (DDA)"

    Examples:
      | intent                                               |
      | Como desativar o DDA?                                |
#      | Quero desativar meu boleto virtual                   |
#      | Eu posso desativar meu DDA?                          |
#      | Não quero mais o DDA                                 |
#      | Preciso desativar meu boleto virtual (DDA)           |
#      | Desativar DDA                                        |
#      | Não estou conseguindo desativar o meu boleto digital |
#      | não preciso mais do boleto digital                   |
#      | Não quero mais boleto virtual dda                    |
#      | Quero desativar boleto virtual DDA                   |
#      | Como desativar boleto virtual                        |

  Scenario: Solicitar desativação do boleto virtual até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Como desativar o DDA?"
    And enviar a mensagem
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 5) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"
