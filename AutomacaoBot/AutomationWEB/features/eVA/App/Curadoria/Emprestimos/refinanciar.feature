Feature: Refinanciar no app

  @CT1-REFINANCIAR-APP
  Scenario: Solicitar refinanciamento através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Me conta, você quer refinanciar o seu:"

    Examples:
      | intent                              |
      | Refinanciar                         |
      | quero refinanciar meu carro         |
      | quero refinanciar minha moto        |
      | fazer um refinanciamento            |
      | estou precisando refinanciar        |
      | Vocês fazem refinanciamento?        |
      | Como fazer um refinanciameno no bv? |
      | quero refinanciar                   |
