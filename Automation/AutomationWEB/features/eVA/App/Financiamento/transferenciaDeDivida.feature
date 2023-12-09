Feature: Transferência de dívida APP

  @CT1-TRANSFERENCIA-DIVIDA-APP
  Scenario: Solicitar sobre transferência de dívida através das intenções
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Pra pedir a transferência de dívida do seu financiamento de veículo no BV, você precisa preencher uma ficha cadastral que vai ser analisada pelo banco."
    And validar conteudo (ballon 3) "O seu contrato tem que seguir alguns pré-requisitos. Pra começar, é preciso que os pagamentos estejam em dia e ter, pelo menos, 3 parcelas pagas."
    And validar conteudo (ballon 4) "Ah! E o veículo não pode ter multas ou IPVA atrasados e o seu contrato não pode ser refinanciado."
    And validar conteudo (ballon 4) "Aqui tem o nosso Guia de Orientação pra você ler antes de preencher o pedido."
    And validar conteudo (ballon 5) "Depois, é só enviar a ficha preenchida para o email transferenciadedivida@bv.com.br e aguardar a resposta do pedido."
    And validar conteudo (ballon 5) "A análise no BV pode levar até 5 dias úteis."
    And validar conteudo (ballon 6) "Se você quiser, posso te passar a ficha cadastral para fazer o pedido de transferência de financiamento."
    And validar conteudo (ballon 6) "Só me diz qual é o seu tipo de contrato:"
    And validar conteudo (ballon 6) "contrato pessoa física"
    And validar conteudo (ballon 6) "contrato pessoa jurídica"

    Examples:
      | intent                                                                       |
      | Mudar o financiamento para o nome de outra pessoa                            |
      | Transferência de financiamento                                               |
      | Transferência de titularidade de financiamento                               |
      | Titularidade de financiamento                                                |
      | Como eu poso transferir o financiamento para outra pessoa                    |
      | Saber como transferir dívida de financiamento                                |
      | Simulação para transferir o financiamento                                    |
      | Fazer uma transferência de dívida                                            |
      | Trocar titularidade do financiamento                                         |
      | Passar financiamento pra outra pessoa                                        |
      | Quero passar meu financiamento para outra pessoa                             |
      | Como passar o financiamento para outra pessoa?                               |
      | Gostaria de fazer substituição do financiamento                              |
      | Transferência de dívida sofre acréscimo                                      |
      | Quero transferir minha dívida de financiamento para outra pessoa             |
      | Quero transf. Dívida de financiamento                                        |
      | Como passo meu financiamento pra outro nome?                                 |
      | Quero passar meu financiamento do carro pra outro nome                       |
      | Quero passar meu financiamento da moto pra outro nome                        |
      | Quero passar meu financiamento do caminhão pra outro nome                    |
      | Outra pessoa vai assumir minha dívida do financiamento                       |
      | Quero pedir a transferência da dívida do meu financiamento para outra pessoa |
      | Como posso passar meu financiamento para outro cpf                           |
      | Como posso passar meu financiamento para outro cnpj                          |

  @CT2-TRANSFERENCIA-DIVIDA-APP
  Scenario: Questionar sobre transferência de dívida através das intenções
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "O prazo do BV para a análise do pedido de transferência de dívida é de até 5 dias úteis."
    Then validar conteudo (ballon 3) "A resposta chega pra você por email ou SMS."
    Then validar conteudo (ballon 3) "Já passou do prazo"

    Examples:
      | intent                                                                 |
      | Já pedi transferência de dívida                                        |
      | Já pedi a transferência do financiamento                               |
      | Já pedi transferência de dívida e não tive resposta                    |
      | Quanto tempo demora a transferência de dívida                          |
      | Ainda não liberaram minha transferência de dívida                      |
      | Preciso da liberação da minha transferência de dívida do financiamento |
      | Pedi transferência do meu financiamento e ainda não saiu               |
      | Pq demora tanto a transferência de dívida?                             |
      | Cadê a resposta do meu pedido de transferência de dívida?              |

  @CT3-TRANSFERENCIA-DIVIDA-APP
  Scenario: Solicitar sobre transferência (Contrato pessoa física)
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "Transferência de financiamento"
    And enviar a mensagem
    And clicar no botao "contrato pessoa física"
    Then validar conteudo (ballon 8) "Tá aqui. 🙂"

  @CT4-TRANSFERENCIA-DIVIDA-APP
  Scenario: Solicitar sobre transferência (Contrato pessoa jurídica)
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "Transferência de financiamento"
    And enviar a mensagem
    And clicar no botao "contrato pessoa jurídica"
    Then validar conteudo (ballon 8) "Tá aqui. 🙂"

  @CT5-TRANSFERENCIA-DIVIDA-APP
  Scenario: Questionar sobre transferência de dívida até o transbordo
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "Já pedi transferência de dívida"
    And enviar a mensagem
    And clicar no botao "Já passou do prazo"
    And validar conteudo (ballon 5) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"
    Then clicar no botao "Falar com uma pessoa"
