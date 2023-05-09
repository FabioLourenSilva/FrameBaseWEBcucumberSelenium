Feature: Substituição de veículo em garantia prod. Veículos

  @CT1-PRODVEICULOS-APP
  Scenario: Solicitar substituição com veículo em garantia através das intenções
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "No BV, você pode trocar de carro utilizando seu veículo como garantia no financiamento."
    And validar conteudo (ballon 3) "Escolha a quantidade de parcelas com o valor que caiba em seu orçamento e pague em até 5 anos 😉"
    And validar conteudo (ballon 4) "Confira as condições para fazer a substituição"
    And validar conteudo (ballon 4) "O contrato atual deve estar ativo;"
    And validar conteudo (ballon 4) "É preciso ter, no mínimo, 3 parcelas pagas;"
    And validar conteudo (ballon 4) "O veículo atual não pode ter débitos, como multas, IPVA ou alienação;"
    And validar conteudo (ballon 4) "O documento do veículo atual precisa estar no nome do titular do contrato;"
    And validar conteudo (ballon 4) "O veículo escolhido deve ter o ano maior ou igual ao ano do veículo atual;"
    And validar conteudo (ballon 4) "O novo veículo não pode ser de categoria diferente do veículo que você já tem, exemplo:"
    And validar conteudo (ballon 4) "caminhão por moto, moto por veículo leve etc"
    And validar conteudo (ballon 4) "O veículo que você quer também não pode ter qualquer tipo de restrição, como dívidas ou problemas com licenciamento."
    And validar conteudo (ballon 5) "Depois, entre em contato com o BV, com o documento do seu veículo atual e o documento do veículo que você quer ter."
    And validar conteudo (ballon 5) "Nossos atendentes vão cadastrar a proposta e avaliar os dois veículos"
    And validar conteudo (ballon 6) "Ah! Importante:"
    And validar conteudo (ballon 6) "Se o veículo teve algum sinistro, informe no momento da solicitação de crédito o número do Boletim de Ocorrência, ok?"
    And validar conteudo (ballon 6) "Esse documento será importante para a avaliação"
    And validar conteudo (ballon 7) "Entre em contato para solicitar sua proposta nos números:"
    And validar conteudo (ballon 7) "3003 7888"
    And validar conteudo (ballon 7) "Capitais e regiões metropolitanas"
    And validar conteudo (ballon 7) "0800 011 7888"
    And validar conteudo (ballon 7) "Outras Localidades"
    And validar conteudo (ballon 7) "Segunda a Sexta, de 8h às 20h40 e Sábado, de 10h às 16h"
    Then validar conteudo (ballon 8) "Ou, se preferir, encontre a loja BV mais próxima e fale com a gerência de relacionamento."
    And validar conteudo (ballon 8) "Encontrar uma loja BV"
    And validar conteudo (ballon 8) "Deixar para depois"


    Examples:
      | intent                                                    |
      | Como trocar veículo com garantia                          |
      | Quero financiar meu veículo com garantia                  |
      | Quero substituir meu veículo com garantia                 |
      | Como substituir meu veículo com garantia                  |
      | Como financiar outro carro com meu veículo  em garantia   |
      | Como substituir carro com garantia                        |
      | Substituição de veículo com garantia                      |
      | Quero trocar meu carro financiado com garantia            |
      | Financiar com veículo em garantia                         |
      | Financiar com veículo em garantia                         |
      | Como faer substituição do carro em garantia               |

  @CT2-PRODVEICULOS-APP
  Scenario: Solicitar substituição com veículo em garantia até o final da jornada
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "Como trocar veículo com garantia"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "No BV, você pode trocar de carro utilizando seu veículo como garantia no financiamento."
    And validar conteudo (ballon 3) "Escolha a quantidade de parcelas com o valor que caiba em seu orçamento e pague em até 5 anos 😉"
    And validar conteudo (ballon 4) "Confira as condições para fazer a substituição"
    And validar conteudo (ballon 4) "O contrato atual deve estar ativo;"
    And validar conteudo (ballon 4) "É preciso ter, no mínimo, 3 parcelas pagas;"
    And validar conteudo (ballon 4) "O veículo atual não pode ter débitos, como multas, IPVA ou alienação;"
    And validar conteudo (ballon 4) "O documento do veículo atual precisa estar no nome do titular do contrato;"
    And validar conteudo (ballon 4) "O veículo escolhido deve ter o ano maior ou igual ao ano do veículo atual;"
    And validar conteudo (ballon 4) "O novo veículo não pode ser de categoria diferente do veículo que você já tem, exemplo:"
    And validar conteudo (ballon 4) "caminhão por moto, moto por veículo leve etc"
    And validar conteudo (ballon 4) "O veículo que você quer também não pode ter qualquer tipo de restrição, como dívidas ou problemas com licenciamento."
    And validar conteudo (ballon 5) "Depois, entre em contato com o BV, com o documento do seu veículo atual e o documento do veículo que você quer ter."
    And validar conteudo (ballon 5) "Nossos atendentes vão cadastrar a proposta e avaliar os dois veículos"
    And validar conteudo (ballon 6) "Ah! Importante:"
    And validar conteudo (ballon 6) "Se o veículo teve algum sinistro, informe no momento da solicitação de crédito o número do Boletim de Ocorrência, ok?"
    And validar conteudo (ballon 6) "Esse documento será importante para a avaliação"
    And validar conteudo (ballon 7) "Entre em contato para solicitar sua proposta nos números:"
    And validar conteudo (ballon 7) "3003 7888"
    And validar conteudo (ballon 7) "Capitais e regiões metropolitanas"
    And validar conteudo (ballon 7) "0800 011 7888"
    And validar conteudo (ballon 7) "Outras Localidades"
    And validar conteudo (ballon 7) "Segunda a Sexta, de 8h às 20h40 e Sábado, de 10h às 16h"
    Then validar conteudo (ballon 8) "Ou, se preferir, encontre a loja BV mais próxima e fale com a gerência de relacionamento."
    And clicar no botao "<button>"
    And validar conteudo (ballon 10) "<response>"

    Examples:
      | button             | response                             |
      | Deixar para depois | Então, me conta: o que você precisa? |

