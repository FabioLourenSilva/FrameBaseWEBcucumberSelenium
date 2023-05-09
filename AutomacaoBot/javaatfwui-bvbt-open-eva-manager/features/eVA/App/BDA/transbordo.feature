Feature: Mensagem de Transbordo no app

  Scenario: Solicitar boleto do financiamento através de intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Por favor, espere um pouquinho que uma pessoa do nosso time já vai falar com você. 😃"

    Examples:
      | intent                      |
      | Atendimento humano          |
      | Quero falar com um humano   |
      | Me transfere pra humano     |
      | Quero falar com uma pessoa  |
      | Não gosto de falar com robo |
      | Prefiro falar com um humano |
      | Falar com alguém            |
      | Falar com uma pessoa        |