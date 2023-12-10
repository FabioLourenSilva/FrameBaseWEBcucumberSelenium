Feature: Credito facil APP

  @CT1-CREDITO-FACIL-APP
  Scenario: Solicitar crédito/empréstimo através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Aqui no BV tem várias opções de crédito. Selecione abaixo a melhor opção para você"
    And validar conteudo (ballon 3) "Crédito Pessoal"
    And validar conteudo (ballon 3) "Refinanciamento"
    And validar conteudo (ballon 3) "Consignado"
    And validar conteudo (ballon 3) "Financiamento"
    And validar conteudo (ballon 3) "Crédito Fácil"
    Examples:
      | intent                                    |
      | Credito facil                             |
      | Fazer inprestimo                          |
      | quero simular emprestimo                  |
      | preciso de dinheiro                       |
      | como pego emprestimo com o bv             |
      | queria saber sobre linha de emprestimo    |
      | posso fazer emprestimo pela BV            |
      | estou precisando de dinheiro              |
      | tenho algum emprestimo pessoal disponivel |
      | preciso de grana                          |

  @CT2-CREDITO-FACIL-APP
  Scenario: Solicitar crédito fácil
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "quero simular emprestimo"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Aqui no BV tem várias opções de crédito. Selecione abaixo a melhor opção para você"
    And clicar no botao "Crédito Fácil"
    And validar conteudo (ballon 5) "O Crédito Fácil é uma opção de empréstimo para te ajudar nos gastos inesperados!"
    And validar conteudo (ballon 5) "Confira algumas vantagens:"
    And validar conteudo (ballon 5) "Até 60 dias para pagar"
    And validar conteudo (ballon 5) "Pagamento em débito automático: é só deixar o valor no saldo da sua conta BV no dia do vencimento"
    And validar conteudo (ballon 6) "Para contratar o Crédito Fácil é só:"
    And validar conteudo (ballon 6) "Acessar a tela inicial do app e rolar para baixo até Soluções Financeiras"
    And validar conteudo (ballon 6) "Tocar em Crédito Fácil Selecionar em até quantos dias quer pagar (30, 45 ou 60)"
    And validar conteudo (ballon 6) "Tocar em Quero Contratar"
    And validar conteudo (ballon 6) "Revisar as informações e tocar em Confirmar contratação"
    And validar conteudo (ballon 6) "Em seguida é só digitar a senha do seu cartão BV e tocar em Confirmar senha."
    And validar conteudo (ballon 7) "Pronto! Em alguns minutos o crédito estará disponível na sua conta BV!"