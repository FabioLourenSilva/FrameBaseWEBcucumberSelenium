Feature: Extrato completo e resumido no app

  Scenario: Solicitar extrato através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Me conte, você quer o extrato do seu:"

    Examples:
      | intent                      |
      | Quero ver meu extrato       |
      | Preciso de um extrato       |
      | Não consigo ver meu extrato |
      | Cadê meu extrato            |
      | Quero um extrato            |
      | Preciso de extrato          |
      | Quero extrato               |

  Scenario: Solicitar extrato do cartão até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Quero ver meu extrato"
    And enviar a mensagem
    And clicar no botao "Cartão"
    And validar conteudo (ballon 5) "Para consultar o histórico das suas últimas três faturas, você precisa:"
    And validar conteudo (ballon 5) "Ir na tela inicial do app"
    And validar conteudo (ballon 5) "Tocar em Meus cartões 👉 Minhas faturas"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 7) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"

  Scenario: Solicitar extrato do financiamento até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Quero ver meu extrato"
    And enviar a mensagem
    And clicar no botao "Financiamento"
    And validar conteudo (ballon 5) "Para conseguir o extrato do seu financiamento, é só:"
    And validar conteudo (ballon 5) "Acessar o site da Minha BV com CPF e senha"
    And validar conteudo (ballon 5) "Ir em  Financiamentos 👉Resolva agora"
    And validar conteudo (ballon 5) "Clicar em Ver extrato detalhado"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 7) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"


  Scenario: Solicitar extrato de financiamento através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para conseguir o extrato do seu financiamento, é só:"

    Examples:
      | intent                                |
      | Quero um extrato do meu financiamento |
      | Extrato do financiamento              |
      | Extrato detalhado do financiamento    |
      | Quero extrato do financiamento        |
      | Preciso extrato financiamento         |