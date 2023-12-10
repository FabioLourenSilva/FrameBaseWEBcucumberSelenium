Feature: Problemas com organizador no app

  Scenario: Perguntar sobre problemas com o organizador através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Me conta melhor se o problema que você teve foi em relação a:"

    Examples:
      | intent                                                       |
      | Minha fatura master não aparece no Organizador               |
#      | Não estou conseguindo usar o organizador                     |
#      | Os valores do meu DDA estão incorretos                       |
#      | Não consigo ativar o meu boleto virtual                      |
#      | Não estou conseguindo adicionar uma conta no meu organizador |
#      | não consigo remover uma conta do organizador                 |
#      | estou tendo problemas ao usar o organizador                  |
#      | meu organizador está com problema                            |
#      | meu organizador está com erro                                |
#      | erro no organizador                                          |
#      | Os valores do meu DDA estão incorretos no organizador        |


  Scenario: Perguntar sobre problemas com o organizador e problemas em adicionar conta
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "erro no organizador"
    And enviar a mensagem
    And clicar no botao "Adicionar conta"
    Then validar conteudo (ballon 5) "No momento, ainda não é possível adicionar uma conta específica"
    And validar conteudo (ballon 5) "Hoje, o Organizador mostra as parcelas do seu financiamento de veículos e suas faturas do Cartão BV."


  Scenario: Perguntar sobre problemas com o organizador e problemas em remover conta, até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "erro no organizador"
    And enviar a mensagem
    And clicar no botao "Remover conta"
    And validar conteudo (ballon 5) "Para remover uma conta do Organizador Financeiro BV, você precisa:"
    And validar conteudo (ballon 5) "Acessar tela inicial do app"
    And validar conteudo (ballon 5) "Ir em Organizar contas 👉Contas a pagar"
    And validar conteudo (ballon 5) "Selecionar a conta"
    And validar conteudo (ballon 5) "Tocar em Ver opções 👉Remover essa conta"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Perguntar sobre problemas com o organizador e problemas em ativar DDA, até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "erro no organizador"
    And enviar a mensagem
    And clicar no botao "Ativar DDA"
    And validar conteudo (ballon 5) "Para ativar o Boleto Digital (DDA), você precisa:"
    And validar conteudo (ballon 5) "Acessar a tela inicial do app"
    And validar conteudo (ballon 5) "Ir em Organizar contas 👉Saiba mais no campo Boleto Digital (DDA)"
    And validar conteudo (ballon 5) "Tocar em Ativar Boleto Digital (DDA)"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Perguntar sobre problemas com o organizador e problemas em desativar DDA
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "erro no organizador"
    And enviar a mensagem
    And clicar no botao "Desativar DDA"
    And validar conteudo (ballon 5) "Para desativar o Boleto Digital (DDA), você precisa:"
    And validar conteudo (ballon 5) "Acessar a tela inicial do app"
    And validar conteudo (ballon 5) "Ir em Organizar contas"
    And validar conteudo (ballon 5) "Selecionar Boleto Digital (DDA) está ativo"
    And validar conteudo (ballon 5) "Tocar em Desativar Boleto Digital (DDA)"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"