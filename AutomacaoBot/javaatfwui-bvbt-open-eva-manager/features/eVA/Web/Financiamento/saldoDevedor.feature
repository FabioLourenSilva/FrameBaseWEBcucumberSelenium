Feature: Saldo devedor WEB

  @CT1-SALDO-DEVEDOR-WEB
  Scenario: Perguntar sobre saldo devedor através das intenções
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Então vamos falar sobre saldo."
    And validar conteudo (ballon 3) "Saldo devedor de financiamento"
    And validar conteudo (ballon 3) "Conta digital"
    And validar conteudo (ballon 3) "Cartão de crédito"

    Examples:
      | intent                                          |
      | O que é saldo devedor?                          |
      | Quero a carta do saldo devedor.                 |
      | Preciso pedir uma carta de saldo devedor        |
      | Minha seguradora pediu saldo devedor            |
      | Quero s. devedor                                |
      | Onde pego carta saldo devedor                   |
      | Preciso de saldo devedor                        |
      | Quero saldo devedor parcial                     |
      | Quero saldo devedor total                       |
      | Quero falar sobre saldo devedor                 |
      | Saldodevedor                                    |
      | Qual é meu saldo em aberto de financiamento     |
      | Qual é meu saldo em aberto do meu financiamento |
      | Quero saldo do financiamento                    |


  @CT2-SALDO-DEVEDOR-WEB
  Scenario: Perguntar sobre saldo devedor e consultar valor para quitação
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "Quero saldo do financiamento"
    And enviar a mensagem
    And clicar no botao "Saldo devedor de financiamento"
    And validar conteudo (ballon 5) "Você quer o saldo devedor para consultar o valor que resta para quitar seu financiamento ou precisa disso pra enviar pra sua seguradora?"
    And clicar no botao "Consultar valor para quitação"
    And validar conteudo (ballon 7) "Pra ver o saldo devedor do seu financiamento pelo site, você precisa:"
    And validar conteudo (ballon 7) "Acessar a Minha BV com CPF e senha"
    And validar conteudo (ballon 7) "No menu Resolva agora, escolher a opção Ver extrato detalhado."
    And validar conteudo (ballon 7) "E pronto! Lá você vai ver quantas parcelas já foram pagas, o valor total financiado e o saldo devedor."
    And validar conteudo (ballon 8) "Ah! Não custa lembrar: se preferir, você também pode consultar o saldo devedor pelo app banco BV."
    And validar conteudo (ballon 8) "Se eu puder te ajudar com mais alguma coisa hoje"

  @CT3-SALDO-DEVEDOR-WEB
  Scenario: Perguntar sobre saldo devedor, enviar para a seguradora (Pagamento parcial) e solicitar o transbordo
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "Quero saldo do financiamento"
    And enviar a mensagem
    And clicar no botao "Saldo devedor de financiamento"
    And validar conteudo (ballon 5) "Você quer o saldo devedor para consultar o valor que resta para quitar seu financiamento ou precisa disso pra enviar pra sua seguradora?"
    And clicar no botao "Enviar para seguradora"
    And validar conteudo (ballon 7) "A carta de saldo devedor é um documento que as seguradoras pedem para fazer o pagamento de sinistro, quando acontece algum acidente, furto ou roubo do seu veículo."
    And validar conteudo (ballon 8) "De acordo com o seu contrato, a seguradora pode fazer o pagamento parcial ou quitação total do saldo devedor do seu financiamento com o banco BV."
    And validar conteudo (ballon 8) "Como sua seguradora vai fazer o pagamento do saldo devedor?"
    And clicar no botao "Pagamento parcial"
    Then validar conteudo (ballon 10) "Nestes casos o banco BV desconta do financiamento o valor pago pela sua seguradora."
    And validar conteudo (ballon 10) "O que restar em aberto, uma Assessoria de Saldo Remanescente entrará em contato com você para combinar como será o pagamento."
    And validar conteudo (ballon 11) "A carta de saldo devedor vem com um boleto para ser pago em um prazo que pode chegar em até 10 dias úteis."
    And validar conteudo (ballon 11) "Mas você pode combinar isso certinho com um dos nossos especialistas."
    And validar conteudo (ballon 11) "Quer falar com uma pessoa agora e pedir a sua carta de saldo devedor?"
    And clicar no botao "Falar com uma pessoa"
    And validar conteudo (ballon 13) "Antes de chamar uma pessoa do time BV aqui, preciso de duas informações"

  @CT4-SALDO-DEVEDOR-WEB
  Scenario: Perguntar sobre saldo devedor, enviar para a seguradora (Quitação total) e solicitar o transbordo
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "Quero saldo do financiamento"
    And enviar a mensagem
    And clicar no botao "Saldo devedor de financiamento"
    And validar conteudo (ballon 5) "Você quer o saldo devedor para consultar o valor que resta para quitar seu financiamento ou precisa disso pra enviar pra sua seguradora?"
    And clicar no botao "Enviar para seguradora"
    And validar conteudo (ballon 7) "A carta de saldo devedor é um documento que as seguradoras pedem para fazer o pagamento de sinistro, quando acontece algum acidente, furto ou roubo do seu veículo."
    And validar conteudo (ballon 8) "De acordo com o seu contrato, a seguradora pode fazer o pagamento parcial ou quitação total do saldo devedor do seu financiamento com o banco BV."
    And validar conteudo (ballon 8) "Como sua seguradora vai fazer o pagamento do saldo devedor?"
    And clicar no botao "Quitação total"
    Then validar conteudo (ballon 10) "A carta de saldo devedor vem com um boleto para ser pago em um prazo que pode chegar em até 10 dias úteis."
    And validar conteudo (ballon 10) "Mas você pode combinar isso certinho com um dos nossos especialistas."
    And validar conteudo (ballon 10) "Quer falar com uma pessoa agora e pedir a sua carta de saldo devedor?"
    And clicar no botao "Falar com uma pessoa"
    And validar conteudo (ballon 12) "Antes de chamar uma pessoa do time BV aqui, preciso de duas informações"


  @CT5-SALDO-DEVEDOR-WEB
  Scenario: Perguntar sobre saldo devedor (conta digital)
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "Quero saldo do financiamento"
    And enviar a mensagem
    And clicar no botao "Conta digital"
    Then validar conteudo (ballon 5) "Você consegue consultar o saldo da sua conta pelo app BV, é só acessar com seu CPF e senha!"
    And validar conteudo (ballon 5) "O saldo aparece logo na tela inicial, em baixo de Saldo em conta."
    And validar conteudo (ballon 5) "Caso o valor esteja oculto com asteriscos, é só clicar em Exibir"
    And validar conteudo (ballon 5) "Se precisar de mais alguma coisa, é só me contar aqui."

  @CT6-SALDO-DEVEDOR-WEB
  Scenario: Perguntar sobre saldo devedor (cartão de crédito)
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "Quero saldo do financiamento"
    And enviar a mensagem
    And clicar no botao "Cartão de crédito"
    Then validar conteudo (ballon 5) "Para ver a fatura do seu Cartão BV pelo site, você precisa:"