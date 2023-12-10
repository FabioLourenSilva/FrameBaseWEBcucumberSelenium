Feature: Ajustar e aumentar limite no app

  Scenario: Solicitar ajuste/aumento de limite através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Você consegue ajustar o limite do seu Cartão BV de forma fácil. É só:"
    And validar conteudo (ballon 3) "Ir na tela inicial do app"
    And validar conteudo (ballon 3) "Escolher a opção Meus Cartões"
    And validar conteudo (ballon 3) "Tocar em Limite disponível"
    And validar conteudo (ballon 3) "Escolher o novo valor arrastando o círculo azul na linha horizontal"
    And validar conteudo (ballon 3) "Confirmar no botão Ajustar limite"

    Examples:
      | intent                            |
      | como funciona o ajuste de limites |
#  | quero mais limite do cartão de crédito                |
#  | aumento do cartão                                     |
#  | gostaria de aumentar o limite do cartao de credito bv |
#  | Aumentar limite do cartão de credito                  |
#  | aumentar meu limite de cartão                         |
#  | ajuste de limite de cartão                            |
#  | preciso de um ajuste de limite do cartão              |
#  | aumento de limite                                     |
#  | como aumentar meu limite do cartão                    |
#  | preciso aumentar o limite do meu cartão               |
#  | como funcionar o ajuste de limites do cartão          |
#  | acabou o limite do cartão                             |
#  | meu cartao acabou o limite                            |
#  | quero mais limite                                     |

  Scenario: Solicitar ajuste/aumento de limite, até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "como funciona o ajuste de limites"
    And enviar a mensagem
    And clicar no botao "Aumentar meu limite"
    And validar conteudo (ballon 5) "Para pedir o aumento de limite do seu Cartão BV, você precisa:"
    And validar conteudo (ballon 5) "✅ Ter o cartão há pelo menos 3 meses e 3 faturas pagas"
    And validar conteudo (ballon 5) "✅ Não ter pedido aumento de limite e ter sido aprovado nos últimos 6 meses"
    And validar conteudo (ballon 5) "✅ Não ter passado por redução de limite nos últimos 6 meses"
    Then validar conteudo (ballon 6) "Se o seu caso está dentro dessas condições, posso chamar uma pessoa do time BV para fazer seu pedido de aumento de limite. 😉"
