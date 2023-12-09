Feature: Quanto custa a portabilidade (App)

  @CT1-QT-CUSTA-PORTABILIDADE-DE-SALARIO-APP
  Scenario: Perguntar sobre o custo da portabilidade de salário através das intenções
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Você não paga nada para receber o seu salário na Conta BV todo mês."
    And validar conteudo (ballon 3) "Além disso, pode organizar sua vida financeira em um só lugar enquanto aproveita todos os benefícios da conta."

    Examples:
      | intent                                            |
      | Quanto pago pra fazer a portabilidade de salário? |
      | Quanto custa a portabilidade de salário?          |
      | Trazer meu salário pro BV tem custo?              |
      | Portabilidade de salário é grátis?                |


