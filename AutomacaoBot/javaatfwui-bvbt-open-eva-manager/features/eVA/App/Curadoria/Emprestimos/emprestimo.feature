@RETESTE-EMPRESTIMO-APP
Feature: Emprestimo no app

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



  @CT1-EMPRESTIMO-APP
  Scenario: Solicitar emprestimo através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Posso te ajudar com isso. O BV tem várias opções de crédito. Selecione abaixo a melhor opção para você"

    Examples:
      | intent                                  |
      | Estou precisando de dinheiro            |
      | Como pego empréstimo no bv?             |
      | Quero fazer um empréstimo com vocês     |
      | Vocês oferecem crédito pessoal?         |
      | Preciso de grana                        |
      | quero contratar um empréstimo com vocês |
      | contratar crédito pessoal               |

  @CT2-EMPRESTIMO-APP
  Scenario: Solicitar emprestimo, opção crédito pessoal
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Estou precisando de dinheiro"
    And enviar a mensagem
    And clicar no botao "Crédito Pessoal"
    Then validar conteudo (ballon 5) "No BV você consegue crédito pessoal de forma fácil e rápida."
    And validar conteudo (ballon 5) "Para saber mais e pedir seu Crédito Pessoal BV, clique aqui."

  @CT3-EMPRESTIMO-APP
  Scenario: Solicitar emprestimo, opção crédito imóvel garantia
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Estou precisando de dinheiro"
    And enviar a mensagem
    And clicar no botao "Crédito Imóvel Garantia"
    Then validar conteudo (ballon 5) "Crédito Imóvel em Garantia BV foi feito para você que tem um imóvel quitado e precisa de crédito rápido com baixa taxa de juros. Para saber mais e simular o seu, clique aqui."

  @CT4-EMPRESTIMO-APP
  Scenario: Solicitar emprestimo, opção crédito veiculo garantia
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Estou precisando de dinheiro"
    And enviar a mensagem
    And clicar no botao "Crédito Veículo Garantia"
    Then validar conteudo (ballon 5) "Se você tem um veículo quitado e está precisando de crédito, o Crédito Veículo em Garantia BV é uma ótima opção pra você, clique aqui para saber mais e pedir o seu."

    # Refinanciamento
  @CT5-EMPRESTIMO-APP
  Scenario: Solicitar emprestimo (Refinanciamento de veículo)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Estou precisando de dinheiro"
    And enviar a mensagem
    And clicar no botao "Refinanciamento"
    And validar conteudo (ballon 5) "Me conta, você quer refinanciar o seu:"
    And eu digitar a intencao "Veículo"
    And enviar a mensagem
    Then validar conteudo (ballon 7) "O BV refinancia veículos leves com até 15 anos de uso e caminhões com até 20 anos. Você pode ter um crédito de até 80% do valor do seu veículo e parcelar em até 48 vezes."
    And validar conteudo (ballon 7) "É importante lembrar que, para fazer um refinanciamento, o veículo precisa estar financiado no seu nome e é preciso ter quitado, no mínimo, 50% das parcelas do contrato."
    And validar conteudo (ballon 7) "Uma pessoa do time BV pode te ajudar e dar mais informações sobre refinanciamento."

  @CT6-EMPRESTIMO-APP
  Scenario: Solicitar emprestimo (Refinanciamento de ímovel)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Estou precisando de dinheiro"
    And enviar a mensagem
    And clicar no botao "Refinanciamento"
    And validar conteudo (ballon 5) "Me conta, você quer refinanciar o seu:"
    And eu digitar a intencao "Imóvel"
    And enviar a mensagem
    Then validar conteudo (ballon 7) "Você pode refinanciar até 60% do valor do seu imóvel e parcelar o valor em até 10 anos."
    And validar conteudo (ballon 7) "É importante que o imóvel possua Habite-se, escritura definitiva, IPTU e esteja localizado em área urbana. E, se tiver passado por alguma reforma, é preciso que ela esteja regularizada na planta."
    And validar conteudo (ballon 7) "Uma pessoa do time BV pode te ajudar e dar mais informações sobre refinanciamento."

  @CT7-EMPRESTIMO-APP
  Scenario: Solicitar emprestimo (Refinanciamento consignado)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Estou precisando de dinheiro"
    And enviar a mensagem
    And clicar no botao "Refinanciamento"
    And validar conteudo (ballon 5) "Me conta, você quer refinanciar o seu:"
    And eu digitar a intencao "Consignado"
    And enviar a mensagem
    Then validar conteudo (ballon 7) "Com o BV, você pode renovar o seu Consignado para pegar mais crédito."
    And validar conteudo (ballon 7) "Basta aumentar o número das parcelas e continuar pagando o mesmo valor mensalmente. Ou então ajustar o crédito de acordo com a margem disponível"
    And validar conteudo (ballon 7) "Para saber mais como funciona e pedir o seu, você pode conversar diretamente com a área de Recursos Humanos da sua empresa."
    And validar conteudo (ballon 7) "Uma pessoa do time BV também pode te ajudar e dar mais informações sobre refinanciamento."

  @CT8-EMPRESTIMO-APP
  Scenario: Solicitar emprestimo consignado
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Estou precisando de dinheiro"
    And enviar a mensagem
    And clicar no botao "Consignado"
    Then validar conteudo (ballon 5) "Se a empresa em que você trabalha é nossa conveniada, o Crédito Consignado BV é uma opção perfeita para você. Para saber mais como funciona e pedir o seu, clique aqui."

    #Financiamento
  @CT9-EMPRESTIMO-APP
  Scenario: Solicitar emprestimo (Financiamento de veiculo)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Estou precisando de dinheiro"
    And enviar a mensagem
    And clicar no botao "Financiamento"
    And validar conteudo (ballon 5) "Me conta, você quer um financiamento de:"
    And eu digitar a intencao "Veículo"
    And enviar a mensagem
    Then validar conteudo (ballon 7) "No BV você financia o seu veículo com apenas 4 passos. É rápido e fácil. Faça uma simulação e peça já o seu. Para simular, clique aqui."

  @CT10-EMPRESTIMO-APP
  Scenario: Solicitar emprestimo (Financiamento estudantil)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Estou precisando de dinheiro"
    And enviar a mensagem
    And clicar no botao "Financiamento"
    And validar conteudo (ballon 5) "Me conta, você quer um financiamento de:"
    And clicar no botao "Estudantil"
    Then validar conteudo (ballon 7) "Quer começar ou voltar a estudar? A gente te ajuda!"
    And validar conteudo (ballon 7) "Com o Financiamento Estudantil BV você tem o dobro do curso tempo para pagar. Para saber mais e pedir o seu, clique aqui."


  @CT11-EMPRESTIMO-APP
  Scenario: Solicitar emprestimo (Financiamento energia solar)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Estou precisando de dinheiro"
    And enviar a mensagem
    And clicar no botao "Financiamento"
    And validar conteudo (ballon 5) "Me conta, você quer um financiamento de:"
    And clicar no botao "Energia solar"
    Then validar conteudo (ballon 7) "Fico feliz que você também se preocupa com sustentabilidade."
    And validar conteudo (ballon 7) "Para saber mais sobre o Financiamento para Energia Solar BV, clique aqui."