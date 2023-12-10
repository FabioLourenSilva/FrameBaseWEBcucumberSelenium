Feature: Ativar boleto virtual (DDA) no app

  Scenario: Solicitar ativação do boleto virtual através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para ativar o Boleto Digital (DDA), você precisa:"
    And validar conteudo (ballon 3) "Acessar a tela inicial do app"
    And validar conteudo (ballon 3) "Ir em Organizar contas 👉 Ativar Boleto Digital (DDA)"

    Examples:
      | intent                                   |
      | Como eu faço pra ativar o DDA?           |
      | Quero ativar o boleto virtual            |
      | Preciso ativar o boleto virtual          |
      | Como eu faço pra ativar o boleto digital |
      | Ajuda para ativar o meu DDA              |
      | Quero habilitar o meu DDA                |
      | Quero habilitar o boleto digital         |
      | Começar a usar o boleto virtual          |
      | Acessar meu boleto virtual               |
      | Ativar boleto digital                    |

  Scenario: Solicitar ativação do boleto virtual e conhecer o dda
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Ativar boleto digital"
    And enviar a mensagem
    And clicar no botao "Conhecer o DDA"
    Then validar conteudo (ballon 5) "O Boleto Digital (DDA) busca e centraliza todos os boletos digitais cadastrados no seu CPF, mesmo os de outras instituições, em um único lugar: o Organizador Financeiro BV."
    And validar conteudo (ballon 5) "Lá você acompanha seus gastos mensais pra se programar melhor e ainda pode pagar aqui direto pelo app. 😉"
    And validar conteudo (ballon 5) "No momento, o Boleto Digital só não encontra contas de concessionárias, como água, luz e gás."

  Scenario: Solicitar ativação do boleto virtual e conhecer o dda
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Ativar boleto digital"
    And enviar a mensagem
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 5) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"
  