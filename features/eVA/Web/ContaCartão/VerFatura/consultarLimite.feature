Feature: Consultar limite WEB

  @CT1-CONSULTAR-LIMITE-WEB
  Scenario: Solicitar limite (Cartão de crédito)
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "Ver limite"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Certo! Você quer falar sobre qual tipo de limite?"
    And clicar no botao "Cartão de crédito"
    Then validar conteudo (ballon 5) "Consulte os limites do seu cartão de forma rápida aqui no site. É só acessar a Minha BV e ir na área Cartões. 😉"
    And validar conteudo (ballon 5) "O limite total aparece ao lado do limite disponível e representa o valor do limite liberado para o seu cartão"
    And validar conteudo (ballon 5) "O limite disponível é o valor que você ainda tem para fazer compras"
    And validar conteudo (ballon 5) "Acessar Minha BV"
    And validar conteudo (ballon 5) "Ajustar limite"
    And validar conteudo (ballon 5) "Ver limite do cartão adicional"
    And validar conteudo (ballon 5) "Ver limite do cartão internacional"

  @CT2-CONSULTAR-LIMITE-WEB
  Scenario: Solicitar limite (Cartão de débito), até o transbordo
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "Ver limite"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Certo! Você quer falar sobre qual tipo de limite?"
    And clicar no botao "Cartão de débito"
    And validar conteudo (ballon 5) "Pode deixar que eu te explico como funcionam os limites do seu cartão de débito! 💳"
    And validar conteudo (ballon 5) "Por dia, você tem um limite disponível pra fazer compras e pagamentos."
    And validar conteudo (ballon 5) "Durante as 20h às 6h, o limite de compras e pagamentos pode ser reduzido."
    And validar conteudo (ballon 5) "Se quiser consultar os seus limites, é só clicar no botão abaixo."
    And clicar no botao "Consultar limites"
    Then validar conteudo (ballon 7) "Pra consultar seus limites, você precisa da ajuda de uma pessoa do time BV."
    And clicar no botao "Falar com uma pessoa"
    And validar conteudo (ballon 9) "Antes de te transferir para uma pessoa do time BV, preciso de quatro informações."

  @CT3-CONSULTAR-LIMITE-WEB
  Scenario: Solicitar limite (Cartão de débito) e deixar para depois
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "Ver limite"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Certo! Você quer falar sobre qual tipo de limite?"
    And clicar no botao "Cartão de débito"
    And validar conteudo (ballon 5) "Pode deixar que eu te explico como funcionam os limites do seu cartão de débito! 💳"
    And validar conteudo (ballon 5) "Por dia, você tem um limite disponível pra fazer compras e pagamentos."
    And validar conteudo (ballon 5) "Durante as 20h às 6h, o limite de compras e pagamentos pode ser reduzido."
    And validar conteudo (ballon 5) "Se quiser consultar os seus limites, é só clicar no botão abaixo."
    And clicar no botao "Consultar limites"
    Then validar conteudo (ballon 7) "Pra consultar seus limites, você precisa da ajuda de uma pessoa do time BV."
    And clicar no botao "Deixar para depois"
    And validar conteudo (ballon 9) "Se eu puder te ajudar com outra coisa, me conta aqui. 😃"

  @CT4-CONSULTAR-LIMITE-WEB
  Scenario: Solicitar limite (Pagamentos), até o transbordo
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "Ver limite"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Certo! Você quer falar sobre qual tipo de limite?"
    And clicar no botao "Pagamentos"
    And validar conteudo (ballon 5) "Pode deixar que eu te explico como funcionam os limites pra pagamentos aqui no BV! 💙"
    And validar conteudo (ballon 5) "Por dia, você tem um limite disponível pra pagamentos."
    And validar conteudo (ballon 5) "Durante as 20h às 6h, só é possível pagar até certo valor, que chamamos de Limite noturno."
    And validar conteudo (ballon 5) "📌 Ah, no caso de pagamento dos boletos BV, não precisa se preocupar com o limite diário e nem noturno. 😉"
    And validar conteudo (ballon 5) "Se quiser consultar os seus limites, é só clicar no botão abaixo."
    And clicar no botao "Consultar limites"
    Then validar conteudo (ballon 7) "Pra consultar seus limites, você precisa da ajuda de uma pessoa do time BV."
    And validar conteudo (ballon 7) "O que prefere? 😃"
    And clicar no botao "Falar com uma pessoa"
    And validar conteudo (ballon 9) "Antes de te transferir para uma pessoa do time BV, preciso de quatro informações."

  @CT5-CONSULTAR-LIMITE-WEB
  Scenario: Solicitar limite (Pagamentos) e deixar para depois
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "Ver limite"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Certo! Você quer falar sobre qual tipo de limite?"
    And clicar no botao "Pagamentos"
    And validar conteudo (ballon 5) "Pode deixar que eu te explico como funcionam os limites pra pagamentos aqui no BV! 💙"
    And validar conteudo (ballon 5) "Por dia, você tem um limite disponível pra pagamentos."
    And validar conteudo (ballon 5) "Durante as 20h às 6h, só é possível pagar até certo valor, que chamamos de Limite noturno."
    And validar conteudo (ballon 5) "📌 Ah, no caso de pagamento dos boletos BV, não precisa se preocupar com o limite diário e nem noturno. 😉"
    And validar conteudo (ballon 5) "Se quiser consultar os seus limites, é só clicar no botão abaixo."
    And clicar no botao "Consultar limites"
    Then validar conteudo (ballon 7) "Pra consultar seus limites, você precisa da ajuda de uma pessoa do time BV."
    And validar conteudo (ballon 7) "O que prefere? 😃"
    And clicar no botao "Deixar para depois"
    And validar conteudo (ballon 9) "Se eu puder te ajudar com outra coisa, me conta aqui. 😃"

  @CT6-CONSULTAR-LIMITE-WEB
  Scenario: Solicitar limite (Transferências), até o transbordo
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "Ver limite"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Certo! Você quer falar sobre qual tipo de limite?"
    And clicar no botao "Transferências"
    And validar conteudo (ballon 5) "Pode deixar que eu te explico como funcionam os limites pra transferências aqui no BV! 💸"
    And validar conteudo (ballon 5) "Por dia, você tem um limite disponível pra transferências."
    And validar conteudo (ballon 5) "Durante as 20h às 6h, só é possível transferir até certo valor, que chamamos de Limite noturno."
    And validar conteudo (ballon 5) "Se quiser consultar os seus limites, é só clicar no botão abaixo."
    And clicar no botao "Consultar limites"
    Then validar conteudo (ballon 7) "Pra consultar seus limites, você precisa da ajuda de uma pessoa do time BV."
    And validar conteudo (ballon 7) "O que prefere? 😃"
    And clicar no botao "Falar com uma pessoa"
    And validar conteudo (ballon 9) "Antes de te transferir para uma pessoa do time BV, preciso de quatro informações."

  @CT7-CONSULTAR-LIMITE-WEB
  Scenario: Solicitar limite (Transferências) e deixar para depois
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "Ver limite"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Certo! Você quer falar sobre qual tipo de limite?"
    And clicar no botao "Transferências"
    And validar conteudo (ballon 5) "Pode deixar que eu te explico como funcionam os limites pra transferências aqui no BV! 💸"
    And validar conteudo (ballon 5) "Por dia, você tem um limite disponível pra transferências."
    And validar conteudo (ballon 5) "Durante as 20h às 6h, só é possível transferir até certo valor, que chamamos de Limite noturno."
    And validar conteudo (ballon 5) "Se quiser consultar os seus limites, é só clicar no botão abaixo."
    And clicar no botao "Consultar limites"
    Then validar conteudo (ballon 7) "Pra consultar seus limites, você precisa da ajuda de uma pessoa do time BV."
    And validar conteudo (ballon 7) "O que prefere? 😃"
    And clicar no botao "Deixar para depois"
    And validar conteudo (ballon 9) "Se eu puder te ajudar com outra coisa, me conta aqui. 😃"

  @CT8-CONSULTAR-LIMITE-WEB
  Scenario: Solicitar limite (Pix) e deixar para depois
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "Ver limite"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Certo! Você quer falar sobre qual tipo de limite?"
    And clicar no botao "Pix"
    Then validar conteudo (ballon 5) "Pode deixar que eu te explico como funcionam os limites do Pix. 😃"
    And validar conteudo (ballon 5) "Por dia, você tem um limite disponível pra transações."
    And validar conteudo (ballon 5) "Durante as 20h às 6h, só é possível fazer um Pix até certo valor, que chamamos de Limite noturno."
    And validar conteudo (ballon 5) "Você pode consultar os limites pelo app BV, é só:"
    And validar conteudo (ballon 5) "Ir na tela inicial do app"
    And validar conteudo (ballon 5) "Selecionar Pix → Meus Limites"
    And validar conteudo (ballon 5) "Se eu puder te ajudar com mais alguma coisa, é só me contar aqui. 😉"

  @CT9-CONSULTAR-LIMITE-WEB
  Scenario: Solicitar limite (Saque), até o transbordo
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "Ver limite"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Certo! Você quer falar sobre qual tipo de limite?"
    And clicar no botao "Saque"
    And validar conteudo (ballon 5) "Nesse caso, você precisa falar com uma pessoa do time BV."
    And validar conteudo (ballon 5) "O que prefere? 😃"
    And clicar no botao "Falar com uma pessoa"
    Then validar conteudo (ballon 7) "Antes de te transferir para uma pessoa do time BV, preciso de quatro informações."

  @CT10-CONSULTAR-LIMITE-WEB
  Scenario: Solicitar limite (Saque) e deixar para depois
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "Ver limite"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Certo! Você quer falar sobre qual tipo de limite?"
    And clicar no botao "Saque"
    And validar conteudo (ballon 5) "Nesse caso, você precisa falar com uma pessoa do time BV."
    And validar conteudo (ballon 5) "O que prefere? 😃"
    And clicar no botao "Deixar para depois"
    Then validar conteudo (ballon 7) "Se eu puder te ajudar com outra coisa, me conta aqui. 😃"