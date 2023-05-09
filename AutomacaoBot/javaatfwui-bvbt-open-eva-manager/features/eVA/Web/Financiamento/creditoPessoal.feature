Feature: Credito pessoal WEB

  @CT1-CREDITO-PESSOAL-WEB
  Scenario: Solicitar credito pessoal atraves das intencoes
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Você pode simular e contratar o crédito pessoal pelo app ou pelo site."
    Then validar conteudo (ballon 3) "Aqui no BV você tem várias vantagens:"
    And validar conteudo (ballon 3) "até 30 dias para começar a pagar"
    And validar conteudo (ballon 3) "parcelas fixas"
    And validar conteudo (ballon 3) "e até 24 meses para pagar"
    And validar conteudo (ballon 4) "Clica no botão aqui embaixo na opção de canal que você prefere e eu te dou mais informações"
    And validar conteudo (ballon 4) "Site BV"
    And validar conteudo (ballon 4) "App BV"
    And validar conteudo (ballon 4) "Telefone"

    Examples:
      | intent                                    |
      | contratar credito pessoal                 |
      | limite de crédito                         |
      | quero saber se eu tenfo direito a credito |
      | empréstimo pessoal                        |
      | crédito pessoal                           |
      | emprestimo pessoal                        |

  @CT2-CREDITO-PESSOAL-WEB
  Scenario: Solicitar credito pessoal e saber informações sobre o Site BV
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "contratar credito pessoal"
    And enviar a mensagem
    And clicar no botao "Site BV"
    Then validar conteudo (ballon 6) "Pelo site, você vai precisar de alguns documentos: RG, CPF e comprovantes de renda e residência pra fazer sua análise de crédito pessoal."
    And validar conteudo (ballon 6) "Pode clicar aqui que te redireciono agora mesmo."

  @CT3-CREDITO-PESSOAL-WEB
  Scenario: Solicitar credito pessoal e saber informações sobre o App BV
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "contratar credito pessoal"
    And enviar a mensagem
    And clicar no botao "App BV"
    Then validar conteudo (ballon 6) "Pelo app, quem tem conta no BV consegue conferir qual é o seu limite pré aprovado."
    And validar conteudo (ballon 6) "clicar em Créditos e selecionar a opção Crédito pessoal"
    And validar conteudo (ballon 6) "E a tela vai mostrar o valor pré aprovado de acordo com análise do seu perfil."
    And validar conteudo (ballon 6) "Ao clicar no botão Simular você escolhe o número de parcelas e a data de pagamento."
    And validar conteudo (ballon 7) "A simulação mostra o valor que você solicitou de crédito pessoal e detalha"
    And validar conteudo (ballon 7) "o número e o valor das parcelas fixas"
    And validar conteudo (ballon 7) "a taxa de juros do crédito"
    And validar conteudo (ballon 7) "e o valor final que você vai pagar."
    And validar conteudo (ballon 7) "Dá pra simular quantas vezes precisar, até achar uma parcela que caiba no seu orçamento."
    And validar conteudo (ballon 7) "Pra contratar, é preciso confirmar o pedido com a senha do cartão."
    And validar conteudo (ballon 8) "Mas se você não encontrar o limite pré aprovado de Crédito Pessoal no seu perfil do app, tem outra opção: fazer a simulação pelo site."
    And validar conteudo (ballon 8) "Pode clicar aqui que te redireciono agora mesmo."
    And validar conteudo (ballon 8) "E se eu puder te ajudar com mais alguma coisa, só avisar!"


  @CT4-CREDITO-PESSOAL-WEB
  Scenario: Solicitar credito pessoal e saber informações sobre o Telefone BV
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "contratar credito pessoal"
    And enviar a mensagem
    And clicar no botao "Telefone"
    Then validar conteudo (ballon 6) "Você pode falar com nossa central de atendimento de segunda a sexta feira, das 8h às 20h40 e aos sábados, das 10h às 16h, nos telefones 3003 7888 (capitais e regiões metropolitanas) e 0800 011 7888 (demais localidades)."

  @CT5-CREDITO-PESSOAL-WEB
  Scenario: Solicitar cancelamento credito pessoal atraves das intencoes
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "O BV segue a orientação do Código Brasileiro do Consumidor e garante o cancelamento de empréstimos e financiamentos por motivo de arrependimento para compras e contratações realizadas por canais digitais ou por telefone, no prazo de 7 dias a contar da assinatura do contrato."
    And validar conteudo (ballon 3) "Para mais informações, você pode ligar para o Serviço de Atendimento ao Consumidor no telefone 0800 770 3335"


    Examples:
      | intent                      |
      | cancelar crédito pessoal    |
      | desistir do crédito         |
      | anular meu crédito pessoal  |
      | cancelar empréstimo pessoal |
      | quero cancelar empréstimo   |
      | quero cancelar crédito      |
      | quero desistir empréstimo   |