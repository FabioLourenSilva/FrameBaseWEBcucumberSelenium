Feature: Compensação de pagamento no site

  @CT1-COMPENSACAO-SITE
  Scenario: Solicitar compensação de pagamento através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para que eu possa te ajudar melhor, me fale, qual boleto você pagou?"

    Examples:
      | intent                                             |
      | Tá falando que nao está pago, mas eu já paguei     |
      | ta falando que nao esta pago, mas eu ja paguei     |
      | não consta meu pagamento                           |
      | nao consta meu pagamento                           |
      | eu paguei e ta falando que ta aberto               |
      | Já paguei                                          |
      | Ja paguei                                          |
      | paguei há dias, quando cai?                        |
      | paguei e ainda nao caiu                            |
      | paguei e nao caiu                                  |
      | paguei e não caiu                                  |
      | quanto tempo leva para cair o pagamento?           |
      | paguei parcelas mas só parece uma paga             |
      | quitei o carro quanto tempo demora para reconhecer |
      | eu quitei uma divida mais ainda nao caiu           |
      | eu quitei uma dívida mas não saiu                  |
      | parcela em atraso mas foi paga                     |
      | foi pago e até agora nao foi dado                  |

  @CT2-COMPENSACAO-SITE
  Scenario: Solicitar compensação de pagamento de financiamento, até o transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "não consta meu pagamento"
    And enviar a mensagem
    And clicar no botao "Financiamento de veículos"
    And validar conteudo (ballon 5) "A compensação do pagamento acontece em até dois dias úteis, se ainda não passou desse prazo, aguarde, logo sua parcela aparecerá como paga"
    And clicar no botao "Passou do prazo"
    Then validar conteudo (ballon 7) "Nesse caso, alguém do time BV pode te ajudar. Para facilitar o atendimento tenha em mãos o boleto pago e o comprovante do seu pagamento."

  @CT3-COMPENSACAO-SITE
  Scenario: Solicitar compensação de pagamento da fatura do cartão bv (Passou do prazo), até o transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "não consta meu pagamento"
    And enviar a mensagem
    And clicar no botao "Cartão BV"
    And validar conteudo (ballon 5) "A compensação do pagamento acontece em até dois dias úteis, se ainda não passou desse prazo, aguarde, logo sua fatura aparecerá como paga"
    And validar conteudo (ballon 5) "Se o prazo de compensação passou, clique em"
    And validar conteudo (ballon 5) "Agora, se quiser saber mais sobre como funciona o limite do seu cartão, clique no botão"
    And clicar no botao "Passou do prazo"
    Then validar conteudo (ballon 7) "Nesse caso, alguém do time BV pode te ajudar. Para facilitar o atendimento tenha em mãos o boleto pago e o comprovante do seu pagamento."

  @CT4-COMPENSACAO-SITE
  Scenario: Solicitar compensação de pagamento da fatura do cartão bv (Saber mais sobre o limite)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "não consta meu pagamento"
    And enviar a mensagem
    And clicar no botao "Cartão BV"
    And validar conteudo (ballon 5) "A compensação do pagamento acontece em até dois dias úteis, se ainda não passou desse prazo, aguarde, logo sua fatura aparecerá como paga"
    And validar conteudo (ballon 5) "Se o prazo de compensação passou, clique em"
    And validar conteudo (ballon 5) "Agora, se quiser saber mais sobre como funciona o limite do seu cartão, clique no botão"
    And clicar no botao "Saber mais sobre limite"
    Then validar conteudo (ballon 7) "Consulte os limites do seu cartão de forma rápida aqui no site. É só acessar a Minha BV e ir na área Cartões. "
    And validar conteudo (ballon 7) "O limite total aparece ao lado do limite disponível e representa o valor do limite liberado para o seu cartão"
    And validar conteudo (ballon 7) "O limite disponível é o valor que você ainda tem para fazer compras"
    And validar conteudo (ballon 7) "Se quiser saber como ajustar o limite do cartão BV, ver o limite do cartão adicional ou internacional é só escolher uma das opções abaixo."
    And validar conteudo (ballon 7) "Ajustar limite"
    And validar conteudo (ballon 7) "Ver limite do cartão adicional"
    And validar conteudo (ballon 7) "Ver limite do cartão internacional"

  @CT5-COMPENSACAO-SITE
  Scenario: Solicitar compensação de pagamento de outros boleto
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "não consta meu pagamento"
    And enviar a mensagem
    And clicar no botao "Outros boletos"
    And validar conteudo (ballon 5) "A compensação do pagamento acontece em até dois dias úteis, se ainda não passou desse prazo, aguarde, logo sua parcela aparecerá como paga."
    And clicar no botao "Passou do prazo"
    Then validar conteudo (ballon 7) "Nesse caso, alguém do time BV pode te ajudar. Para facilitar o atendimento tenha em mãos o boleto pago e o comprovante do seu pagamento."