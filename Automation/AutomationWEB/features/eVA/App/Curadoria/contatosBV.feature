Feature: Contatos bv no app

  @CT1-CONTATOS-APP
  Scenario: Solicitar contatos bv através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Antes de te passar os telefones, me diz sobre qual assunto você quer falar. 😃"

    Examples:
      | intent                          |
      | qual telefone do BV?            |
      | qual o numero de voces?         |
      | voces tem telefone              |
      | quero ligar pro bv              |
      | qual o numero de telefone do bv |
      | quero falar por telefone        |

  @CT2-CONTATOS-APP
  Scenario: Solicitar contatos bv (Financiamento)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "qual telefone do BV?"
    And enviar a mensagem
    And clicar no botao "Financiamento"
    Then validar conteudo (ballon 5) "Para falar sobre financiamento e empréstimos é só ligar para:"
    And validar conteudo (ballon 5) "📞 3003 1616"
    And validar conteudo (ballon 5) "Capitais e regiões metropolitanas"
    And validar conteudo (ballon 5) "📞 0800 701 8600"
    And validar conteudo (ballon 5) "Nós também temos um número especial para atender deficientes auditivos e de fala."
    And validar conteudo (ballon 5) "📞 0800 701 86 61"
    And validar conteudo (ballon 5) "⏰Estamos prontos para te atender 24 horas, todos os dias."

  @CT3-CONTATOS-APP
  Scenario: Solicitar contatos bv (Cartao)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "qual telefone do BV?"
    And enviar a mensagem
    And clicar no botao "Cartão"
    Then validar conteudo (ballon 5) "Para falar sobre os cartões BV e Dotz BV é só ligar para:"
    And validar conteudo (ballon 5) "📞 3003 7728"
    And validar conteudo (ballon 5) "📞 0800 777 2828"
    And validar conteudo (ballon 6) "Já se for sobre cartão Platinum os telefones são:"
    And validar conteudo (ballon 6) "📞 3003 0086"
    And validar conteudo (ballon 6) "📞 0800 777 8686"
    And validar conteudo (ballon 6) "⏰De de segunda a sexta, das 8h às 20h, menos em feriados."
    And validar conteudo (ballon 7) "Nós também temos um número especial para atender deficientes auditivos e de fala."
    And validar conteudo (ballon 7) "📞 0800 771 0755"
    And validar conteudo (ballon 7) "⏰ Estamos prontos para te atender 24 horas, todos os dias."

  @CT4-CONTATOS-APP
  Scenario: Solicitar contatos bv (Conta digital)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "qual telefone do BV?"
    And enviar a mensagem
    And clicar no botao "Conta digital"
    Then validar conteudo (ballon 5) "Você pode contar com nossos especialistas para tirar suas dúvidas sobre Conta digital nos telefones abaixo:"
    And validar conteudo (ballon 5) "📞 3003 7728"
    And validar conteudo (ballon 5) "📞 0800 777 2828"
    And validar conteudo (ballon 5) "📞 0800 771 0755"
    And validar conteudo (ballon 5) "⏰ Estamos prontos para te atender 24 horas, todos os dias."

