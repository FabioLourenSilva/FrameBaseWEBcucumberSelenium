Feature: Consultar limite do cartão no site

  Scenario: Solicitar ajuste/aumento de limite através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Certo! Você quer falar sobre qual tipo de limite?"

    Examples:
      | intent                            |
      | quero saber mais sobre meu limite |
#      | quero ver meu limite              |
#      | preciso consultar limite          |
#      | saber mais sobre meu limite       |

  Scenario: Solicitar ajuste/aumento de limite através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "consultar limite"
    And enviar a mensagem
    And clicar no botao "Cartão de crédito"
    And validar conteudo (ballon 5) "Consulte os limites do seu cartão de forma rápida aqui no site. É só acessar a Minha BV e ir na área Cartões. 😉"
    And validar conteudo (ballon 5) "O limite total aparece ao lado do limite disponível e representa o valor do limite liberado para o seu cartão"
    And validar conteudo (ballon 5) "O limite disponível é o valor que você ainda tem para fazer compras"
    And clicar no botao "Ajustar limite"
    Then validar conteudo (ballon 7) "Para ajustar o limite do seu Cartão BV, você precisa ter o app banco BV em seu celular. Nele, é só:"
    And validar conteudo (ballon 7) "Ir na tela inicial"
    And validar conteudo (ballon 7) "Escolher a opção Meus Cartões"
    And validar conteudo (ballon 7) "Tocar em Limite disponível"
    And validar conteudo (ballon 7) "Escolher o novo valor arrastando o círculo azul na linha horizontal"
    And validar conteudo (ballon 7) "Confirmar no botão Ajustar limite"

  Scenario: Consultar limite do cartão de credito e ver o limite do cartao adicional, até o transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "consultar limite"
    And enviar a mensagem
    And clicar no botao "Cartão de crédito"
    And validar conteudo (ballon 5) "Consulte os limites do seu cartão de forma rápida aqui no site. É só acessar a Minha BV e ir na área Cartões. 😉"
    And validar conteudo (ballon 5) "O limite total aparece ao lado do limite disponível e representa o valor do limite liberado para o seu cartão"
    And validar conteudo (ballon 5) "O limite disponível é o valor que você ainda tem para fazer compras"
    And clicar no botao "Ver limite do cartão adicional"
    Then validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Consultar limite do cartão de credito e ver o limite do cartao internacional
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "consultar limite"
    And enviar a mensagem
    And clicar no botao "Cartão de crédito"
    And validar conteudo (ballon 5) "Consulte os limites do seu cartão de forma rápida aqui no site. É só acessar a Minha BV e ir na área Cartões. 😉"
    And validar conteudo (ballon 5) "O limite total aparece ao lado do limite disponível e representa o valor do limite liberado para o seu cartão"
    And validar conteudo (ballon 5) "O limite disponível é o valor que você ainda tem para fazer compras"
    And clicar no botao "Ver limite do cartão internacional"
    Then validar conteudo (ballon 7) "Caso tenha um cartão internacional e queira consultar o limite para compras fora do Brasil, você precisa acessar a Minha BV com CPF e senha e:"
    And validar conteudo (ballon 7) "Ir na área Cartões"
    And validar conteudo (ballon 7) "Clicar em Mais 👉 Limites de crédito e taxas 👉 Consultar limites e tarifas 👉 Limite de crédito"
