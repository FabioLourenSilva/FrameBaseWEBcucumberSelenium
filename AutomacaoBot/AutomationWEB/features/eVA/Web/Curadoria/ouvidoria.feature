Feature: Ouvidoria no site

  @CT1-OUVIDORIA-WEB
  Scenario: Solicitar numero da ouvidoria através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para falar com a Ouvidoria, você precisa ter um número de protocolo de atendimento finalizado ou com prazo vencido."
    And validar conteudo (ballon 3) "Você já tem o número de protocolo?"

    Examples:
      | intent                       |
      | quero falar na ouvidoria     |
      | ouvidoria                    |
      | quero o contato da ouvidoria |
      | preciso ligar na ouvidoria   |
      | qual é o numero da ouvidoria |

  @CT2-OUVIDORIA-WEB
  Scenario: Solicitar numero da ouvidoria, contendo o numero do protocolo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "quero falar na ouvidoria "
    And enviar a mensagem
    And clicar no botao "Sim"
    Then validar conteudo (ballon 5) "Então é só entrar em contato no nosso formulário online 😉"
    And validar conteudo (ballon 5) "Ou se preferir, você pode ligar no telefone abaixo:"
    And validar conteudo (ballon 5) "📞 0800 707 0083"
    And validar conteudo (ballon 5) "⏰ De segunda a sexta, das 9h às 18h, menos em feriados nacionais."
    And validar conteudo (ballon 5) "Nós também temos um número especial para atender deficientes auditivos e de fala."
    And validar conteudo (ballon 5) "📞 0800 701 86 61"
    And validar conteudo (ballon 5) "É necessário usar um telefone adaptado neste caso."
    And validar conteudo (ballon 5) "⏰Estamos prontos para te atender 24 horas, todos os dias."

  @CT3-OUVIDORIA-WEB
  Scenario: Solicitar numero da ouvidoria, sem o numero do protocolo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "quero falar na ouvidoria "
    And enviar a mensagem
    And clicar no botao "Não"
    Then validar conteudo (ballon 5) "Como você precisa de um protocolo de atendimento cadastrado pra falar com a Ouvidoria, eu posso chamar uma pessoa do time BV para te ajudar."
