Feature: Como funciona (Busca e Apreensão) APP

  @CT1-COMO-FUNCIONA-APREENSAO-APP
  Scenario: Perguntar sobre busca e apreensão através das intenções
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Quando um financiamento está com várias parcelas atrasadas e ainda não foi feito nenhum acordo para renegociar a dívida, a legislação brasileira permite que a instituição financeira faça a busca e apreensão do veículo e o leve a leilão para quitação da dívida."
    And validar conteudo (ballon 3) "Aqui no BV essa é sempre a última opção."
    And validar conteudo (ballon 3) "Se você está com parcelas atrasadas a gente pode conversar mais por aqui. Que tal?"
    And validar conteudo (ballon 3) "Renegociar minha dívida"
    And validar conteudo (ballon 3) "Saber mais sobre Busca e Apreensão"

    Examples:
      | intent                               |
      | O que é busca e apreensão?           |
      | Como funciona busca e apreensão?     |
      | Quero saber sobre busca e apreensão. |
      | Busca e apreensão de veículos        |
      | Apreensão de carro                   |
      | Apreensão de moto                    |
      | Apreensão de caminhão                |
      | Apreensão de caminhonete             |
      | Apreensão de camionete               |
      | Buscaeapreensão                      |
      | Busca e apreensão                    |
      | Busca e aprenção                     |
      | Busca e apreensao                    |

  @CT2-COMO-FUNCIONA-APREENSAO-APP
  Scenario: Perguntar sobre busca e apreensão através das intenções (carro leiloado)
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Quando um financiamento está com várias parcelas atrasadas e ainda não foi feito nenhum acordo para renegociar a dívida, a legislação brasileira permite que a instituição financeira faça a busca e apreensão do veículo e o leve a leilão para quitação da dívida."
    And validar conteudo (ballon 3) "Aqui no BV essa é sempre a última opção."
    And validar conteudo (ballon 3) "Se você está com parcelas atrasadas a gente pode conversar mais por aqui. Que tal?"
    And validar conteudo (ballon 3) "Renegociar minha dívida"
    And validar conteudo (ballon 3) "Saber mais sobre Busca e Apreensão"

    Examples:
      | intent                                |
      | Em quantos dias meu carro é leiloado? |
      | Vão leiloar meu carro?                |
      | Vão vender meu carro?                 |

  @CT3-COMO-FUNCIONA-APREENSAO-APP
  Scenario: Perguntar sobre busca e apreensão (Renegociar dívida)
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "O que é busca e apreensão?"
    And enviar a mensagem
    And clicar no botao "Renegociar minha dívida"
    Then validar conteudo (ballon 5) "As possibilidades de renegociação do financiamento de veículos são personalizadas para cada cliente."

  @CT4-COMO-FUNCIONA-APREENSAO-APP
  Scenario: Perguntar sobre busca e apreensão (Renegociar dívida), até o transbordo
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "O que é busca e apreensão?"
    And enviar a mensagem
    And clicar no botao "Saber mais sobre Busca e Apreensão"
    Then validar conteudo (ballon 5) "Quando um veículo é apreendido, ele é encaminhado para ser vendido em leilão depois de 7 dias corridos.."
    And validar conteudo (ballon 5) "O dinheiro dessa venda é usado pelo BV para abater da sua dívida:"
    And validar conteudo (ballon 5) "o valor das parcelas restantes do financiamento e"
    And validar conteudo (ballon 5) "as despesas com a assessoria jurídica e com o pátio."
    And validar conteudo (ballon 5) "Se você ainda quiser saber mais sobre busca e apreensão, posso te encaminhar pra alguém do nosso time de especialistas."
    And clicar no botao "Falar com uma pessoa"
    And validar conteudo (ballon 7) "Por favor, espere um pouquinho que uma pessoa do nosso time já vai falar com você. 😃"

