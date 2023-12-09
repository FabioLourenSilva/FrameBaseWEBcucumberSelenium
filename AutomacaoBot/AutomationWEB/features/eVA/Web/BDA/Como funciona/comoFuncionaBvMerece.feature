Feature: Como funciona (bv merece) no site

  Scenario: Se informar o que é o bv merece através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Com o Cartão BV Internacional, Gold, Mais, Platinum ou Grafite, suas compras se transformam em pontos que são convertidos em diversas recompensas no Programa BV Merece, como vale-compras ou recargas de celular."
    And validar conteudo (ballon 3) "Para aproveitar e conhecer melhor, confira o site: bvprogramamerece.com.br"

  Examples:
  | intent                                      |
  | Como funciona o bv merece                   |
#  | o que é bv merece                           |

  Scenario: Se informar o que é o bv merece, até transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Como funciona o bv merece"
    And enviar a mensagem
    And clicar no botao "Tive um problema"
    Then validar conteudo (ballon 5) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"