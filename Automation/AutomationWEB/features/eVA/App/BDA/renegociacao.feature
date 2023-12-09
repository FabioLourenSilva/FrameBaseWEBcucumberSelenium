Feature: Renegociação app

  Scenario: Solicitar renegociação através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "As possibilidades de renegociação do financiamento de veículos são personalizadas para cada cliente."
    And validar conteudo (ballon 3) "Para saber se é possível renegociar seu contrato hoje, é só:"
    And validar conteudo (ballon 3) "Ir na tela inicial do app"
    And validar conteudo (ballon 3) "Selecionar Financiamento de veículo"
    And validar conteudo (ballon 3) "Tocar em Consulte a disponibilidade no banner de renegociação, que aparece no final da tela"

    Examples:
      | intent                         |
      | Renegociar meu carro           |
      | Renegociar meu financiameto    |
      | Rever minhas parcelas abertas  |
      | quero renegociar               |
      | preciso fazer uma renegociação |