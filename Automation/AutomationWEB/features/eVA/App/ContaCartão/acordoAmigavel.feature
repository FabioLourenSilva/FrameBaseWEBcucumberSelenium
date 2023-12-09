@acordoAmigavelApp
Feature:  Parcelamento total da fatura/Acordo amigável

  @CT1-ParcelamentoDaFatura-APP
  Scenario: Intenções de parcelamento total da fatura ou acordo amigável
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "<intent>"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Se você estiver em atraso, no BV temos a opção Acordo Amigável. Com ela, você consegue organizar suas finanças, quitando os valores que possui em aberto no cartão de crédito de forma parcelada. 😄"
    And validar conteudo (ballon 3) "Para verificar a melhor opção para o seu bolso, é necessário falar com um de nossos atendentes."

    Examples:
      | intent                                                       |
      | Gostaria de fazer o parcelamento de total das minhas faturas |
      | Como fazer o parcelamento das minhas faturas?                |
      | Quero parcelar todas as minhas faturas                       |
      | Como faço para parcelar minhas faturas?                      |
      | Posso parcelar minhas faturas?                               |
      | Como faço para fazer o parcelamento das minhas faturas?      |

  @CT2-ParcelamentoDaFatura-DeixarParaDepois-APP
  Scenario: Parcelamento total da fatura ou acordo amigável, deixar para depois
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "Como faço para parcelar minhas faturas?"
    And enviar a mensagem
    And clicar no botao "Deixar para depois"
    And validar conteudo (ballon 5) "Estou sempre por aqui. Precisando, é só chamar. 😉"
    Then validar conteudo (ballon 5) "Até a próxima!"


  @CT3-ParcelamentoDaFatura-Transbordo-APP(
  Scenario: Transbordo usuário sem token
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "Como faço para parcelar minhas faturas?"
    And enviar a mensagem
    And clicar no botao "Falar com uma pessoa"
    Then validar conteudo (ballon 5) "Ops! Algo deu errado. 😓 Tivemos um problema e não conseguimos seguir com seu atendimento agora. Tente de novo mais tarde."