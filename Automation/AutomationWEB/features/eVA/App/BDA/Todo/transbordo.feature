Feature: Mensagem de Transbordo no app

  Scenario: Solicitar atendimento humano através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Eu consigo te ajudar com vários assuntos de forma rápida!"

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

  Scenario: Solicitar atendimento humano
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Atendimento humano "
    And enviar a mensagem
    And validar conteudo (ballon 3) "Eu consigo te ajudar com vários assuntos de forma rápida!"
    And clicar no botao "Falar com uma pessoa"
    Then validar conteudo (ballon 5) "Por favor, espere um pouquinho que uma pessoa do nosso time já vai falar com você. 😃"