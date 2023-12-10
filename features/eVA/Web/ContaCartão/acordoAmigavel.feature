@acordoAmigavelWeb
Feature:  Parcelamento total da fatura/Acordo amigável

  @CT1-ParcelamentoDaFatura-WEB
  Scenario: Intenções de parcelamento total da fatura ou acordo amigável
    Given que acessei o chatbot do eva (Web)
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

  @CT2-ParcelamentoDaFatura-DeixarParaDepois-WEB
  Scenario: Parcelamento total da fatura ou acordo amigável, deixar para depois
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "Como faço para parcelar minhas faturas?"
    And enviar a mensagem
    And clicar no botao "Deixar para depois"
    And validar conteudo (ballon 5) "Estou sempre por aqui. Precisando, é só chamar. 😉"
    Then validar conteudo (ballon 5) "Até a próxima!"


  @CT3-ParcelamentoDaFatura-Transbordo-WEB
  Scenario: Parcelamento total da fatura ou acordo amigável, transbordo
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "Como faço para parcelar minhas faturas?"
    And enviar a mensagem
    And clicar no botao "Falar com uma pessoa"
    And validar conteudo (ballon 5) "Antes de te transferir para uma pessoa do time BV, preciso de quatro informações.É bem rapidinho! 😃Por favor, qual é o seu nome completo?"
    And eu digitar a intencao "Eva Manager Teste"
    And enviar a mensagem
    And validar conteudo (ballon 7) "Agora, conta pra mim: qual é o seu CPF?"
    And eu digitar a intencao "28702171880"
    And enviar a mensagem
    And validar conteudo (ballon 9) "Obrigado! 😃"
    And validar conteudo (ballon 9) "E o seu e-mail, qual é?"
    And eu digitar a intencao "eva@nttdata.com"
    And enviar a mensagem
    And validar conteudo (ballon 11) "Por último, preciso saber o número do seu celular ou telefone com DDD."
    And eu digitar a intencao "11988811111"
    And enviar a mensagem
    And validar conteudo (ballon 13) "Tudo anotado, muito obrigado! 😃"
    Then validar conteudo (ballon 13) "Agora é só esperar um pouquinho que uma pessoa do nosso time vai conversar aqui com você."