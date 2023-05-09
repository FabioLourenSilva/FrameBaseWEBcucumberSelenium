Feature: Consultar liberação de limite no site

  Scenario: Consultar liberação de limite através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "O limite do seu Cartão BV é liberado após a confirmação do pagamento da fatura, que acontece em até dois dias úteis. 😉"

    Examples:
      | intent                                           |
      | ainda não liberou limite                         |
#      | meu cartão não voltou o limite                   |
#      | limite do cartão não foi liberado                |
#      | quanto tempo até o limite do cartão ser liberado |
#      | Meu cartão está sem limite                       |
#      | quando libera limite do cartão?                  |
#      | quanto tempo até liberar o limite?               |
#      | meu cartão não liberou o limite                  |
#      | meu limite do cartão não foi liberado            |
#      | quero que libere do cartão                       |
#      | paguei e não liberou o limite                    |
#      | paguei a conta e não liberou o limite            |

  Scenario: Consultar liberação de limite, percorrer fluxo até o transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "ainda não liberou limite"
    And enviar a mensagem
    And clicar no botao "Já passou esse prazo"
    Then validar conteudo (ballon 5) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"