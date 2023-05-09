Feature: Substituição de veículo em garantia CVG

  @CT1-CVG-WEB
  Scenario: Solicitar empréstimo através das intenções
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Aqui no BV tem várias opções de crédito. Selecione abaixo a melhor opção para você"
    And validar conteudo (ballon 3) "Crédito Pessoal"
    And validar conteudo (ballon 3) "Crédito Imóvel Garantia"
    And validar conteudo (ballon 3) "Crédito Veículo Garantia"
    And validar conteudo (ballon 3) "Refinanciamento"
    And validar conteudo (ballon 3) "Consignado"
    And validar conteudo (ballon 3) "Financiamento"

    Examples:
      | intent                                |
      | Empréstimo com meu carro em garantia  |
      | quero crédito com veículo em garantia |

  @CT2-CVG-WEB
  Scenario: Solicitar empréstimo (Crédito veículo garantia) optando pelo simulação
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Empréstimo com meu carro em garantia"
    And enviar a mensagem
    And clicar no botao "Crédito Veículo Garantia"
    And validar conteudo (ballon 5) "No BV, você pode usar seu veículo para conseguir crédito com taxas mais baixas"
    And validar conteudo (ballon 5) "Você pode conseguir até 90% do valor do veículo e pagar em até 5 anos, com parcelas fixas"
    And validar conteudo (ballon 6) "Para conseguir o crédito você precisa:"
    And validar conteudo (ballon 6) "Estar com o contrato de financiamento ativo;"
    And validar conteudo (ballon 6) "Ter no mínimo 3 parcelas pagas;"
    And validar conteudo (ballon 6) "Não ter pagamentos atrasados;"
    And validar conteudo (ballon 6) "Documentação do veículo no nome do titular do contrato;"
    And validar conteudo (ballon 6) "E não ter débitos pendentes, como multa, IPVA ou alienação."
    And validar conteudo (ballon 7) "Ah! Importante:"
    And validar conteudo (ballon 7) "Se o veículo teve algum sinistro, informe no momento da solicitação de crédito o número do Boletim de Ocorrência, ok? Esse documento será importante para a avaliação"
    And validar conteudo (ballon 8) "Entre em contato para solicitar sua proposta"
    And validar conteudo (ballon 8) "3003 7888"
    And validar conteudo (ballon 8) "Capitais e regiões metropolitanas"
    And validar conteudo (ballon 8) "0800 011 7888"
    And validar conteudo (ballon 8) "Outras Localidades"
    And validar conteudo (ballon 8) "Segunda a Sexta, de 8h às 20h40 e Sábado, de 10h às 16h"
    And validar conteudo (ballon 9) "Ou, se preferir, encontre a loja BV mais próxima e fale com a gerência de relacionamento."
    And validar conteudo (ballon 9) "Você também pode simular o financiamento no site."
    And clicar no botao "Quero simular"
    And validar conteudo (ballon 11) "Só clicar aqui."

  @CT3-CVG-WEB
  Scenario: Solicitar empréstimo (Crédito veículo garantia) optando deixar para depois
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Empréstimo com meu carro em garantia"
    And enviar a mensagem
    And clicar no botao "Crédito Veículo Garantia"
    And validar conteudo (ballon 5) "No BV, você pode usar seu veículo para conseguir crédito com taxas mais baixas"
    And validar conteudo (ballon 5) "Você pode conseguir até 90% do valor do veículo e pagar em até 5 anos, com parcelas fixas"
    And validar conteudo (ballon 6) "Para conseguir o crédito você precisa:"
    And validar conteudo (ballon 6) "Estar com o contrato de financiamento ativo;"
    And validar conteudo (ballon 6) "Ter no mínimo 3 parcelas pagas;"
    And validar conteudo (ballon 6) "Não ter pagamentos atrasados;"
    And validar conteudo (ballon 6) "Documentação do veículo no nome do titular do contrato;"
    And validar conteudo (ballon 6) "E não ter débitos pendentes, como multa, IPVA ou alienação."
    And validar conteudo (ballon 7) "Ah! Importante:"
    And validar conteudo (ballon 7) "Se o veículo teve algum sinistro, informe no momento da solicitação de crédito o número do Boletim de Ocorrência, ok? Esse documento será importante para a avaliação"
    And validar conteudo (ballon 8) "Entre em contato para solicitar sua proposta"
    And validar conteudo (ballon 8) "3003 7888"
    And validar conteudo (ballon 8) "Capitais e regiões metropolitanas"
    And validar conteudo (ballon 8) "0800 011 7888"
    And validar conteudo (ballon 8) "Outras Localidades"
    And validar conteudo (ballon 8) "Segunda a Sexta, de 8h às 20h40 e Sábado, de 10h às 16h"
    And validar conteudo (ballon 9) "Ou, se preferir, encontre a loja BV mais próxima e fale com a gerência de relacionamento."
    And validar conteudo (ballon 9) "Você também pode simular o financiamento no site."
    And clicar no botao "Deixar para depois"
    And validar conteudo (ballon 11) "Então, me conta: o que você precisa?"