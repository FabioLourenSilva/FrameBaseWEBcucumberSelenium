Feature: Entrega amigável (WEB)

  @CT1-ENTREGA-AMIGAVEL-WEB
  Scenario: Perguntar sobre entrega amigável através das intenções
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "A qualquer momento do seu financiamento você pode optar por fazer a devolução do veículo para o BV."
    And validar conteudo (ballon 3) "Mas devolver é uma coisa, encerrar a dívida é outra coisa."
    And validar conteudo (ballon 3) "Quando você devolve o veículo pro BV, a gente leva a leilão e usa o dinheiro para abater das suas parcelas em aberto com o banco."
    And validar conteudo (ballon 3) "Se você está com parcelas atrasadas a gente pode conversar mais por aqui. Que tal?"
    And validar conteudo (ballon 3) "Renegociar minha dívida"
    And validar conteudo (ballon 3) "Saber mais sobre Entrega Amigável"

    Examples:
      | intent                                       |
      | Me explica como fazer entrega amigável       |
      | Quero detalhes da entrega amigável           |
      | Quero fazer uma entrega amigável             |
      | Quero saber mais sobre entrega amigável      |
      | O que é entrega amigável?                    |
      | Como faço entrega amigável?                  |
      | Posso devolver meu veículo financiado?       |
      | Posso devolver minha moto financiada?        |
      | Posso devolver meu caminhão financiado?      |
      | Posso devolver minha caminhonete financiada? |
      | Quero entregar meu veículo                   |
      | Quero devolver meu carro                     |
      | Quero devolver minha moto                    |
      | Quero devolver o carro pro banco             |

  @CT2-ENTREGA-AMIGAVEL-WEB
  Scenario: Perguntar sobre entrega amigável (renegociar minha dívida)
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "Quero devolver o carro pro banco"
    And enviar a mensagem
    And clicar no botao "Renegociar minha dívida"
    Then validar conteudo (ballon 5) "As possibilidades de renegociação do financiamento de veículos são personalizadas para cada cliente."

  @CT3-ENTREGA-AMIGAVEL-WEB
  Scenario: Perguntar sobre entrega amigável (Saber mais sobre entrega amigável), até o transbordo
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "Quero devolver o carro pro banco"
    And enviar a mensagem
    And clicar no botao "Saber mais sobre Entrega Amigável"
    Then validar conteudo (ballon 5) "Quando você escolhe por fazer uma entrega amigável do veículo para o BV, ele é encaminhado para ser vendido em leilão."
    And validar conteudo (ballon 5) "O dinheiro dessa venda é usado para abater o valor das parcelas restantes do seu financiamento."
    And validar conteudo (ballon 5) "Uma outra opção é você fazer a venda direta e transferir o financiamento para uma outra pessoa."
    And validar conteudo (ballon 6) "Se ainda quiser falar sobre isso, posso te encaminhar pra alguém do nosso time de especialistas."
    And clicar no botao "Falar com uma pessoa"
    And validar conteudo (ballon 8) "Antes de chamar uma pessoa do time BV aqui, preciso de duas informações."