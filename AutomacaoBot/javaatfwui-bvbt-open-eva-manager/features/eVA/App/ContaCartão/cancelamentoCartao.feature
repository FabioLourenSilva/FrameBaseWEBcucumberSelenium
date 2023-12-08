Feature: cancelamento de cartao no app

  @CT1-CANCELAMENTO-CARTAO-APP
  Scenario: Cancelamento de cartão através das intenções
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Vamos conversar um pouquinho sobre isso?"
    And validar conteudo (ballon 3) "No BV, o seu cartão tem diversos benefícios exclusivos para deixar sua vida mais leve."
    And validar conteudo (ballon 3) "Você pode contar com os nossos descontos em parceiros, programa de pontos, parcelamento de fatura e muito mais!"
    And validar conteudo (ballon 3) "Se quiser consultar todos os benefícios do seu cartão é só clicar aqui."
    And validar conteudo (ballon 4) "Com o desconto na anuidade, você consegue diminuir em até 100% o valor da sua anuidade de acordo com sua faixa de gastos mensais."
    And validar conteudo (ballon 4) "E o melhor: conforme você usa o seu cartão e paga as faturas em dia, o seu limite pode aumentar de forma automática."
    And validar conteudo (ballon 4) "Não quer pensar mais um pouquinho?"

    Examples:
      | intent                                  |
      | gostaria de cancelar o cartão           |
      | quero cancelar meu cartão               |
      | preciso cancelar o cartão pois não uso  |
      | cancelamento de cartão                  |
      | Não quero mais cartão                   |
      | Não quero mais cartão                   |
      | cancelar meu cartão                     |
      | Necessito do cancelamento do meu cartão |
      | como cancelo meu cartão de crédito?     |

  Scenario: Cancelamento de cartão e optar pela continuidade do cartão
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "gostaria de cancelar o cartão"
    And enviar a mensagem
    And clicar no botao "Sim"
    Then validar conteudo (ballon 6) "Que bom que você decidiu manter o seu cartão."
    And validar conteudo (ballon 6) "Continue aproveitando todos os benefícios e conte com a gente sempre que precisar!"
    And validar conteudo (ballon 6) "Se quiser conversar sobre mais alguma coisa, é só me falar aqui."

  Scenario: Cancelamento de cartão (Transbordo)
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "gostaria de cancelar o cartão"
    And enviar a mensagem
    And clicar no botao "Não"
    Then validar conteudo (ballon 6) "Por favor, espere um pouquinho que uma pessoa do nosso time já vai falar com você. 😃"




