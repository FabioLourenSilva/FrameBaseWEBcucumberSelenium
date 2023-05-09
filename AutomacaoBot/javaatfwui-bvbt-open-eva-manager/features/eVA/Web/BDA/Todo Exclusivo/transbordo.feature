Feature: Mensagem de Transbordo no site

  Scenario: Solicitar atendimento humano através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Eu consigo te ajudar com vários assuntos de forma rápida! 😉"

    Examples:
      | intent                    |
      | Atendimento humano        |
      | Quero falar com um humano |
      | Me transfere pra humano   |
#      | Quero falar com uma pessoa  |
#      | Não gosto de falar com robo |
#      | Prefiro falar com um humano |
#      | Falar com alguém            |
#      | Falar com uma pessoa        |


  Scenario: Solicitar atendimento humano com sucesso (Financiamento)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Atendimento humano"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Eu consigo te ajudar com vários assuntos de forma rápida! 😉"
    And clicar no botao "Falar com uma pessoa"
    And validar conteudo (ballon 5) "Pra começar, você quer falar sobre qual assunto?"
    And clicar no botao "<button_subject>"
    And validar conteudo (ballon 7) "Entendi! E você precisa de ajuda com:"
    And eu digitar a intencao "<button_help>"
    And enviar a mensagem
#    And clicar no botao "<button_help>"
    And validar conteudo (ballon 9) "Por favor, qual é o seu primeiro nome?"
    And eu digitar a intencao "<name>"
    And enviar a mensagem
    And validar conteudo (ballon 11) "E qual é o seu sobrenome?"
    And eu digitar a intencao "<surname>"
    And enviar a mensagem
    Then validar conteudo (ballon 13) "Agora é só esperar um pouquinho que uma pessoa do nosso time vai conversar aqui com você."

    Examples:
      | intent             | button_subject | button_help       | name          | surname |
      | Atendimento humano | Financiamento  | Boleto            | Maria Rita    | Naka    |
      | Atendimento humano | Financiamento  | Cópia de contrato | Mauricio Yuji | Naka    |
      | Atendimento humano | Financiamento  | Outro assunto     | Mauricio Yuji | Naka    |


  Scenario: Solicitar atendimento humano com sucesso (Cartões)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Eu consigo te ajudar com vários assuntos de forma rápida! 😉"
    And clicar no botao "Falar com uma pessoa"
    And clicar no botao "<button_subject>"
    And validar conteudo (ballon 7) "Por favor, qual é o seu nome completo?"
    And eu digitar a intencao "<name>"
    And enviar a mensagem
    And validar conteudo (ballon 9) "Agora, conta pra mim: qual é o seu CPF?"
    And eu digitar a intencao "<cpf>"
    And enviar a mensagem
    And validar conteudo (ballon 11) "E o seu e-mail, qual é?"
    And eu digitar a intencao "<email>"
    And enviar a mensagem
    And validar conteudo (ballon 13) "Por último, preciso saber o número do seu celular ou telefone com DDD."
    And eu digitar a intencao "<tel>"
    And enviar a mensagem
    Then validar conteudo (ballon 15) "Agora é só esperar um pouquinho que uma pessoa do nosso time vai conversar aqui com você."

    Examples:
      | intent             | button_subject | name               | cpf            | email           | tel        |
      | Atendimento humano | Cartões        | Mauricio Yuji Naka | 421.137.950-00 | teste@gmail.com | 1199998888 |