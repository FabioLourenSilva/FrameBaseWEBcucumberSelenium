Feature: Boleto errado App

  @CT1-BOLETO-ERRADO-APP
  Scenario: Questionar sobre boleto já pago através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para que eu possa te ajudar melhor, me fale, qual boleto você pagou?"
    And validar conteudo (ballon 3) "Financiamento"
    And validar conteudo (ballon 3) "Cartão BV"
    And validar conteudo (ballon 3) "Outros boletos"
    Examples:
      | intent                                        |
      | Tá falando que nao ta pago, ma eu paguei      |
      | Meu boleto ainda esta constando como nao pago |
      | boleto pago                                   |
      | já paguei desde o dia                         |
      | fiz um pagamento mas ainda consta em aberto   |
      | Q ainda consta como dívida                    |
      | Pq ainda consta que não foi pago boleto       |
      | paguei e ainda nao caiu                       |
      | Não tenho parcela atrasada                    |
      | parcela em atraso mas foi paga                |

  @CT2-BOLETO-ERRADO-APP
  Scenario: Questionar sobre pagamento errado através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Certo. Para que eu te ajude melhor, me fala qual boleto você pagou?"
    And validar conteudo (ballon 3) "Financiamento"
    And validar conteudo (ballon 3) "Cartão BV"
    And validar conteudo (ballon 3) "Outros boletos"
    Examples:
      | intent                                                |
      | Paguei o boleto errado                                |
      | paguei um boleto errado                               |
      | paguei o boleto do mês errado                         |
      | recuperar o dinheiro que paguei do boleto             |
      | eu paguei o boleto do mes errado                      |
      | quero transferir o valor pago esse mes para o próximo |
      | preciso cancelar o pagamento do boleto                |
      | paguei errado                                         |
      | inverter o pagamento                                  |
      | mudar o boleto que paguei                             |

  @CT3-BOLETO-ERRADO-APP
  Scenario: Questionarsobre boleto errado (Valor cheio e valor menor)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "paguei o boleto errado"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Certo. Para que eu te ajude melhor, me fala qual boleto você pagou?"
    And clicar no botao "Financiamento"
    And validar conteudo (ballon 5) "Sem problemas! Se você pagou uma parcela errada, podemos mudar o valor pago para a parcela atual."
    And validar conteudo (ballon 5) "Mas é importante que já tenha passado 2 dias úteis desde o pagamento"
    And validar conteudo (ballon 5) "Só me diz uma coisa, você pagou o valor cheio da parcela ou um valor menor?"
    And clicar no botao "<button>"
    Then validar conteudo (ballon 7) "<text1>"
    And validar conteudo (ballon 7) "<text2>"
    And validar conteudo (ballon 7) "RG"
    And validar conteudo (ballon 7) "CPF"
    And validar conteudo (ballon 7) "E o comprovante de pagamento"
    And validar conteudo (ballon 7) "Depois, basta ligar para o nosso SAC no número:"
    And validar conteudo (ballon 7) "0800 011 7888"
    And validar conteudo (ballon 7) "De qualquer localidade"
    And validar conteudo (ballon 7) "Para deficientes auditivos ou de fala o número é:"
    And validar conteudo (ballon 7) "0800 701 8661"
    And validar conteudo (ballon 7) "O atendimento funciona 24 horas"
    And validar conteudo (ballon 8) "Se eu puder te ajudar com outra coisa, me conta aqui"

    Examples:
      | button      | text1                                                                                                                     | text2                                      |
      | Valor cheio | Ah, tudo bem! Nesse caso, é só pedir pra inverter o valor pago para a parcela do mês atual.                               | Para solicitar a mudança, tenha em mãos:   |
      | Valor menor | Certo! Quando você paga um valor menor ou com desconto, conseguimos devolver o valor para que você pague a parcela certa. | Para solicitar a devolução, tenha em mãos: |

  @CT4-BOLETO-ERRADO-APP
  Scenario: Questionar sobre boleto já pago, até chegar ao transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "paguei e ainda nao caiu"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Para que eu possa te ajudar melhor, me fale, qual boleto você pagou?"
    And clicar no botao "Financiamento"
    And validar conteudo (ballon 5) "Se a parcela correta foi paga, a compensação do pagamento acontece em até dois dias úteis."
    And validar conteudo (ballon 5) "Se ainda não passou esse prazo, aguarde, logo sua parcela aparecerá como paga"
    And clicar no botao "Passou do prazo"
    And validar conteudo (ballon 7) "Como já passou o prazo, é importante verificar se você pagou a parcela do mês certo ou se pagou de outro mês. Qual parcela você pagou?"
    And clicar no botao "Parcela certa"
    And validar conteudo (ballon 9) "Nesse caso, alguém do time BV pode te ajudar."
    And validar conteudo (ballon 9) "Para facilitar o atendimento tenha em mãos o boleto pago e o comprovante do seu pagamento"
    And validar conteudo (ballon 9) "Falar com uma pessoa"

  @CT5-BOLETO-ERRADO-APP
  Scenario: Questionar sobre boleto já pago, porém a parcela errada (Valor maior e valor menor)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "paguei e ainda nao caiu"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Para que eu possa te ajudar melhor, me fale, qual boleto você pagou?"
    And clicar no botao "Financiamento"
    And validar conteudo (ballon 5) "Se a parcela correta foi paga, a compensação do pagamento acontece em até dois dias úteis."
    And validar conteudo (ballon 5) "Se ainda não passou esse prazo, aguarde, logo sua parcela aparecerá como paga"
    And clicar no botao "Passou do prazo"
    And validar conteudo (ballon 7) "Como já passou o prazo, é importante verificar se você pagou a parcela do mês certo ou se pagou de outro mês. Qual parcela você pagou?"
    And clicar no botao "Parcela errada"
    And validar conteudo (ballon 9) "Sem problemas! Se você pagou uma parcela errada, podemos mudar o valor pago para a parcela atual."
    And validar conteudo (ballon 9) "Mas é importante que já tenha passado 2 dias úteis desde o pagamento."
    And validar conteudo (ballon 9) "Só me diz uma coisa, você pagou o valor cheio da parcela ou um valor menor?"
    And clicar no botao "<button>"
    Then validar conteudo (ballon 11) "<text1>"
    And validar conteudo (ballon 11) "<text2>"
    And validar conteudo (ballon 11) "RG"
    And validar conteudo (ballon 11) "CPF"
    And validar conteudo (ballon 11) "E o comprovante de pagamento"
    And validar conteudo (ballon 11) "Depois, basta ligar para o nosso SAC no número:"
    And validar conteudo (ballon 11) "0800 011 7888"
    And validar conteudo (ballon 11) "De qualquer localidade"
    And validar conteudo (ballon 11) "Para deficientes auditivos ou de fala o número é:"
    And validar conteudo (ballon 11) "0800 701 8661"
    And validar conteudo (ballon 11) "O atendimento funciona 24 horas"
    And validar conteudo (ballon 12) "Se eu puder te ajudar com outra coisa, me conta aqui"

    Examples:
      | button      | text1                                                                                                                     | text2                                      |
      | Valor cheio | Ah, tudo bem! Nesse caso, é só pedir pra inverter o valor pago para a parcela do mês atual.                               | Para solicitar a mudança, tenha em mãos:   |
      | Valor menor | Certo! Quando você paga um valor menor ou com desconto, conseguimos devolver o valor para que você pague a parcela certa. | Para solicitar a devolução, tenha em mãos: |