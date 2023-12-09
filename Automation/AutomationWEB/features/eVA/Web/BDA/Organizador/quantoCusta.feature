Feature: Quanto custa (Organizador) site

  Scenario: Perguntar quanto custa o organizador através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Você não paga nada para usar o Organizador Financeiro BV, já que ele é um dos benefícios da sua conta digital."

  Examples:
  | intent                                         |
  | Quanto eu pago pra usar o organizador?         |
  | Tem um preço pra ter o organizador financeiro? |
  | Tem que pagar pra usar o organizador?          |
  | Quanto é pra usar o organizador?               |