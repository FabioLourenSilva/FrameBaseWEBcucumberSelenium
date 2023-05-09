Feature: Reembolso (APP)

  @CT1-REEMBOLSO-APP
  Scenario: Solicitar reembolso através das intenções
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Verifique se você tem valores disponíveis de forma rápida e fácil"
    And validar conteudo (ballon 3) "Aqui no app Banco BV, na página do financiamento, clique em Reembolso e confira o valor à receber"
    And validar conteudo (ballon 3) "Por fim, clique em Solicitar reembolso e siga todas as instruções"
    And validar conteudo (ballon 3) "Em até 5 dias úteis, o reembolso será depositado em sua conta informada"

    Examples:
      | intent                                                                                              |
      | reembolso                                                                                           |
      | reembolso online                                                                                    |
      | me mandaram mensagem falando que o reembolso já está na minha conta , mais não está                 |
      | solicitar o reembolso                                                                               |
      | sobre reembolso                                                                                     |
      | olhei no site disse temho reembolso de 39 reais                                                     |
      | resgatar um valor de reembolso da Bv de quitação de carro                                           |
      | saber sobre reembolso                                                                               |
      | receber reembolso                                                                                   |
      | recebi um sms informando que tenho reembolso a ser efetuado sobre um contrato                       |
      | tenho um reembolso pedente aí com vcs                                                               |
      | Solicitei reembolso de fatura duplicada                                                             |
      | Preciso saber se foi feito o reembolso de um estorno que fiz?                                       |
      | recebi uma mensagem falando que tenho direito a um reembolso                                        |
      | como faço o reembolso                                                                               |
      | quando entro no minha BV aparece reembolso                                                          |
      | solicitei reembolso via site, não obtive nenhum número de protocolo                                 |
      | reembolso solicitado                                                                                |
      | preciso fazer um reembolso                                                                          |
      | aonde olho meu reembolso ? porque sempre paga antecipado                                            |
      | fiz um pedido de reembolso. qual o prazo para o dinheiro entrar na minha conta?                     |
      | Qual telefone eu posso falar pra reembolso                                                          |
      | Tenho um reembolso pra receber quantos dias demora pra receber o valor                              |
      | O que é o reembolso?                                                                                |
      | Foi quitado meu veículo tenho direito a um reembolso                                                |
      | gostaria de saber por que meu reembolso ainda não foi depositado, após eu informar agencia e conta? |
      | Acabei de pagar um financiamento, tenho direito ha algum reembolso                                  |

  @CT2-REEMBOLSO-APP
  Scenario: Solicitar reembolso, informando que não recebi o reembolso e dentro do prazo de 5 dias
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "reembolso online"
    And enviar a mensagem
    And clicar no botao "Não recebi meu reembolso"
    And validar conteudo (ballon 5) "O prazo para recebimento de reembolso é de 5 dias úteis."
    And validar conteudo (ballon 5) "Seu reembolso ainda está dentro deste prazo?"
    And clicar no botao "Sim"
    Then validar conteudo (ballon 7) "Nesse caso, pedimos que você aguarde a finalização do prazo para o processamento do reembolso."

  @CT3-REEMBOLSO-APP
  Scenario: Solicitar reembolso, informando que não recebi o reembolso e fora do prazo de 5 dias (até o transbordo)
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "reembolso online"
    And enviar a mensagem
    And clicar no botao "Não recebi meu reembolso"
    And validar conteudo (ballon 5) "O prazo para recebimento de reembolso é de 5 dias úteis."
    And validar conteudo (ballon 5) "Seu reembolso ainda está dentro deste prazo?"
    And eu digitar a intencao "Não"
    And enviar a mensagem
    Then validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  @CT4-REEMBOLSO-APP
  Scenario: Solicitar reembolso
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "reembolso online"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Verifique se você tem valores disponíveis de forma rápida e fácil"
    And validar conteudo (ballon 3) "Aqui no app Banco BV, na página do financiamento, clique em Reembolso e confira o valor à receber"
    And validar conteudo (ballon 3) "Por fim, clique em Solicitar reembolso e siga todas as instruções"
    And validar conteudo (ballon 3) "Em até 5 dias úteis, o reembolso será depositado em sua conta informada"
    And validar conteudo (ballon 3) "Não recebi meu reembolso"