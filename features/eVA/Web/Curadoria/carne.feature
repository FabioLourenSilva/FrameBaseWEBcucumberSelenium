Feature: carnê digital no web

  @CT1-CARNE-WEB
  Scenario: Carnê digital (intenções)
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para pegar a 2ª via do carnê você precisa:"
    And validar conteudo (ballon 3) "Acessar a Minha BV com CPF e senha"
    And validar conteudo (ballon 3) "Clicar em Financiamento → 2ª via do carnê"
    And validar conteudo (ballon 3) "Acessar Minha BV"

    Examples:
      | intent                                                |
      | Quero carne                                           |
      | Quero meu carne digital                               |
      | Carnê                                                 |
      | vcs tem como mandar todo carne em PDF para meu e-mail |
      | Perdi meu carnê                                       |
      | Como faço para pedir meu carnê                        |
      | Preciso de outro carnê                                |
      | Quero outro carnê                                     |
      | Todos os boletos                                      |
      | Todas as faturas                                      |
      | Carnê do financiamento                                |
      | Caderneta                                             |
      | Preciso da caderneta                                  |
      | Quero a caderneta                                     |

  @CT2-CARNE-WEB
  Scenario: Solicitar carnê digital, até o transbordo
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "Quero carne"
    And enviar a mensagem
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 5) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"

