Feature: Reembolso (WEB)

  @CT1-REEMBOLSO-WEB
  Scenario: Solicitar reembolso através das intenções
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Você pode verificar se tem reembolso disponível através da Minha BV ou pelo App Banco BV. Escolha a opção desejada"
    And validar conteudo (ballon 3) "Minha BV"
    And validar conteudo (ballon 3) "App Banco BV"
    And validar conteudo (ballon 3) "Não recebi meu reembolso"

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

  @CT2-REEMBOLSO-WEB
  Scenario: Solicitar reembolso, informando que não recebi o reembolso e dentro do prazo de 5 dias
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "reembolso online"
    And enviar a mensagem
    And clicar no botao "Não recebi meu reembolso"
    And validar conteudo (ballon 5) "O prazo para recebimento de reembolso é de 5 dias úteis."
    And validar conteudo (ballon 5) "Seu reembolso ainda está dentro deste prazo?"
    And clicar no botao "Sim"
    Then validar conteudo (ballon 7) "Nesse caso, pedimos que você aguarde a finalização do prazo para o processamento do reembolso."

  @CT3-REEMBOLSO-WEB
  Scenario: Solicitar reembolso, informando que não recebi o reembolso e fora do prazo de 5 dias (até o transbordo)
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "reembolso online"
    And enviar a mensagem
    And clicar no botao "Não recebi meu reembolso"
    And validar conteudo (ballon 5) "O prazo para recebimento de reembolso é de 5 dias úteis."
    And validar conteudo (ballon 5) "Seu reembolso ainda está dentro deste prazo?"
    And eu digitar a intencao "Não"
    And enviar a mensagem
    Then validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  @CT4-REEMBOLSO-WEB
  Scenario: Solicitar reembolso, e verificar o reembolso disponível no app/site
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "reembolso online"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Você pode verificar se tem reembolso disponível através da Minha BV ou pelo App Banco BV. Escolha a opção desejada"
    And clicar no botao "<button>"
    Then validar conteudo (ballon 5) "<content1>"
    And validar conteudo (ballon 5) "<content2>"
    And validar conteudo (ballon 5) "Por fim, clique em Solicitar reembolso e siga todas as instruções"
    And validar conteudo (ballon 5) "Em até 5 dias úteis, o reembolso será depositado em sua conta informada."

    Examples:
      | button       | content1                                | content2                                                                               |
      | Minha BV     | Acesse a Minha BV com seu login e senha | Na área de Financiamento, clique em Reembolso e verifique se tem algum valor à receber |
      | App Banco BV | Acesse o app Banco BV                   | Na página do financiamento, clique em Reembolso e confira o valor à receber            |
#                                                                 Na página do financiamento, clique em Reembolso e verifique se tem algum valor à receber