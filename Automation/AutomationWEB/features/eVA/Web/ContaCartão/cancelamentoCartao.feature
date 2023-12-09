Feature: cancelamento de cartao no web

  @CT1-CANCELAMENTO-CARTAO-WEB
  Scenario: Cancelamento de cartão através das intenções
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Vamos conversar um pouquinho sobre isso?"
    And validar conteudo (ballon 3) "No BV, o seu cartão tem diversos benefícios exclusivos para deixar sua vida mais leve."
    And validar conteudo (ballon 3) "Você pode contar com os nossos descontos em parceiros, programa de pontos, parcelamento de fatura e muito mais!"
    And validar conteudo (ballon 3) "Se quiser consultar todos os benefícios do seu cartão é só clicar aqui."
    And validar conteudo (ballon 4) "Com o desconto na anuidade, você consegue diminuir em até 100% o valor da sua anuidade de acordo com sua faixa de gastos mensais."
    And validar conteudo (ballon 4) "E o melhor: conforme você usa o seu cartão e paga as faturas em dia, o seu limite pode aumentar de forma automática."
    And validar conteudo (ballon 4) "Quer pensar mais um pouco?"

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
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "gostaria de cancelar o cartão"
    And enviar a mensagem
    And clicar no botao "Sim"
    Then validar conteudo (ballon 6) "Que bom que você decidiu manter o seu cartão."
    And validar conteudo (ballon 6) "Continue aproveitando todos os benefícios e conte com a gente sempre que precisar!"
    And validar conteudo (ballon 6) "Se quiser conversar sobre mais alguma coisa, é só me falar aqui."

  Scenario: Cancelar cartão
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "gostaria de cancelar o cartão"
    And enviar a mensagem
    And clicar no botao "Não"
    Then validar conteudo (ballon 6) "Neste caso, você precisa entrar em contato com os atendentes do time BV no telefone abaixo."
    And validar conteudo (ballon 6) "0800 772 8028"
    And validar conteudo (ballon 6) "0800 701 8661"
    And validar conteudo (ballon 6) "⏰ Estamos prontos para te atender 24 horas, todos os dias."




