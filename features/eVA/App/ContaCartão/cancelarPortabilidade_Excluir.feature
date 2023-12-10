Feature: Cancelar portabilidade (App)

  @CT1-CANCELAR-PORTABILIDADE-APP
  Scenario: Solicitar cancelamento da portabilidade através das intenções
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"


    Examples:
      | intent                                        |
      | Não quero mais a portabilidade de salário     |
      | Quero cancelar minha portabilidade de salário |
      | Quero cancelar portabilidade de salário       |
      | Não quero mais receber o salário no BV        |
      | Não quero mais meu salário no BV              |

  @CT2-CANCELAR-PORTABILIDADE-APP
  Scenario: Solicitar cancelamento da portabilidade e deixar para depois, até o transbordo
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "Não quero mais a portabilidade de salário "
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"
