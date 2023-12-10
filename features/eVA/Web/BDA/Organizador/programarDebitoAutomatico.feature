Feature: Programar débito automático no site

  Scenario: Perguntar como programar o débito automatico através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "O débito automático ainda não está disponível na Conta BV."
    And validar conteudo (ballon 3) "Mas, pra te ajudar a organizar melhor suas contas e pagamentos, você pode ativar o Boleto Digital (DDA) no app BV."
    And validar conteudo (ballon 3) "Ele busca e centraliza todos os boletos digitais cadastrados no seu CPF, mesmo os de outras instituições, em um único lugar, o Organizador financeiro."

    Examples:
      | intent                                                      |
      | Como cadastro minhas contas com débito automáticos          |
      | Como programar débito automático?                           |
      | Quero saber como deixar as contas no débito automático      |
      | tem como fazer débito automatico?                           |
      | não consigo deixar uma conta em débito automático           |
      | ajuda para débito automático                                |
      | programar débito automático                                 |
      | quero deixar minhas contas em débito automático             |
      | tentei deixar uma conta em débito automático e não consegui |
      | Colocar a conta em débito automático                        |
      | Deixar a conta em débito automático                         |
      | Como programar débito automático                            |
      | Como agendar débito automático                              |
      | Quero pagar em débito automático                            |

  Scenario: Perguntar como programar o débito automatico (Conhecer o DDA)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Como cadastro minhas contas com débito automáticos"
    And enviar a mensagem
    And clicar no botao "Conhecer o DDA"
    And validar conteudo (ballon 5) "O Boleto Digital (DDA) busca e centraliza todos os boletos digitais cadastrados no seu CPF, mesmo os de outras instituições, em um único lugar: o Organizador Financeiro BV."
    And clicar no botao "Ativar DDA"
    Then validar conteudo (ballon 7) "Para ativar o Boleto Digital (DDA), você precisa ter a conta digital no app BV."
    And validar conteudo (ballon 7) "Acessar a tela inicial do app"
    And validar conteudo (ballon 7) "Ir em Organizar contas 👉 Ativar Boleto Digital (DDA)"

