Feature: Como funciona o pix site

  Scenario: Perguntar como funciona o pix através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "O Pix já é o meio de pagamentos e transferências queridinho do Brasil. 💙 Com ele, você pode pagar, transferir e receber a qualquer hora, todos os dias do ano, mesmo em finais de semana e feriados. Como as transações acontecem em tempo real, o dinheiro cai em pouco segundos na outra conta."
    And validar conteudo (ballon 3) "💰 Demais, né? E o melhor: é gratuito para pessoas físicas. Se quiser saber mais sobre o Pix, é só escolher um dos assuntos abaixo."

    Examples:
      | intent       |
      | O que é pix? |
#      | como funciona o pix?             |
#      | estou com dúvidas sobre o pix    |
#      | quero entender como funciona pix |
#      | como funciona o pix              |
#      | estou com duvidas sobre o pix    |

  Scenario: Perguntar como funciona a chave pix através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "As chaves Pix funcionam como um atalho para identificar uma conta bancária. É possível ter até 5 chaves na sua Conta BV, sendo elas: celulares, e-mails, CPF/CNPJ e chave aleatória. 🔑 Você só precisa saber a chave Pix da pessoa ou empresa para transferir. Já para receber uma transferência, é só você informar a sua. Se quiser falar mais sobre as chaves, escolha um dos assuntos abaixo."

    Examples:
      | intent                                   |
      | o que é uma chave pix?                   |
#      | como funciona uma chave pix?             |
#      | quero entender como funciona a chave pix |
#      | como funciona a chave pix                |
#      | estou com duvidas sobre a chave pix      |

   #Fluxo como funciona o pix (Transferencias - fluxo transferencias e QRcode - Pagamentos)

  Scenario: Perguntar como funciona o pix e duvidas sobre transferencias (Esqueci minha senha) até o transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "como funciona o pix"
    And enviar a mensagem
    And clicar no botao "Transferências"
    And validar conteudo (ballon 5) "Para fazer uma transferência Pix, você precisa ir no app BV e:"
    And validar conteudo (ballon 5) "Acessar a tela inicial do app"
    And validar conteudo (ballon 5) "Digitar a chave Pix de quem vai receber"
    And validar conteudo (ballon 5) "Escolher o valor da transferência"
    And validar conteudo (ballon 5) "Depois, é só digitar sua senha do Cartão BV e pronto!"
    And clicar no botao "Não deu certo"
    And validar conteudo (ballon 7) "Então vamos tentar resolver isso juntos! Qual problema você teve com a transferência?"
    And clicar no botao "Esqueci minha senha"
    Then validar conteudo (ballon 9) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Perguntar como funciona o pix e duvidas sobre transferencias (Valor voltou pra conta) até o transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "como funciona o pix"
    And enviar a mensagem
    And clicar no botao "Transferências"
    And validar conteudo (ballon 5) "Para fazer uma transferência Pix, você precisa ir no app BV e:"
    And validar conteudo (ballon 5) "Acessar a tela inicial do app"
    And validar conteudo (ballon 5) "Digitar a chave Pix de quem vai receber"
    And validar conteudo (ballon 5) "Escolher o valor da transferência"
    And validar conteudo (ballon 5) "Depois, é só digitar sua senha do Cartão BV e pronto!"
    And clicar no botao "Não deu certo"
    And validar conteudo (ballon 7) "Então vamos tentar resolver isso juntos! Qual problema você teve com a transferência?"
    And clicar no botao "Valor voltou pra conta"
    And validar conteudo (ballon 9) "Às vezes isso acontece porque algum dado da conta que iria receber estava errado. Por favor, confirme se está tudo certo e tente de novo. 😊"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 11) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Perguntar como funciona o pix e duvidas sobre transferencias (Outro problema) até o transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "como funciona o pix"
    And enviar a mensagem
    And clicar no botao "Transferências"
    And validar conteudo (ballon 5) "Para fazer uma transferência Pix, você precisa ir no app BV e:"
    And validar conteudo (ballon 5) "Acessar a tela inicial do app"
    And validar conteudo (ballon 5) "Digitar a chave Pix de quem vai receber"
    And validar conteudo (ballon 5) "Escolher o valor da transferência"
    And validar conteudo (ballon 5) "Depois, é só digitar sua senha do Cartão BV e pronto!"
    And clicar no botao "Não deu certo"
    And validar conteudo (ballon 7) "Então vamos tentar resolver isso juntos! Qual problema você teve com a transferência?"
    And clicar no botao "Outro problema"
    Then validar conteudo (ballon 9) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Perguntar como funciona o pix e duvidas sobre pagamento qrcode (como pagar) até o transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "como funciona o pix"
    And enviar a mensagem
    And clicar no botao "QR Code"
    And validar conteudo (ballon 5) "Só mais uma pergunta: o que você gostaria de saber sobre o QR Code Pix?"
    And clicar no botao "Como pagar"
    And validar conteudo (ballon 7) "Você precisa ter a nossa conta digital e o app banco BV no seu celular. Com isso, é só:"
    And validar conteudo (ballon 7) "Ir na tela inicial do app, escolher a opção Pagar contas 👉 QR Code Pix"
    And validar conteudo (ballon 7) "Posicionar o QR Code na área indicada"
    And validar conteudo (ballon 7) "Escolher a opção de pagar com saldo em conta ou Cartão BV"
    And validar conteudo (ballon 7) "Digitar a senha do cartão para confirmar"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 9) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Perguntar como funciona o pix e duvidas sobre pagamento qrcode (como criar) até o transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "como funciona o pix"
    And enviar a mensagem
    And clicar no botao "QR Code"
    And validar conteudo (ballon 5) "Só mais uma pergunta: o que você gostaria de saber sobre o QR Code Pix?"
    And clicar no botao "Como criar"
    And validar conteudo (ballon 7) "É fácil criar um QR Code Pix pra receber um pagamento."
    And validar conteudo (ballon 7) "Você precisa ter a nossa conta digital e o app banco BV no seu celular. Com isso, é só:"
    And validar conteudo (ballon 7) "Ir na tela inicial do app"
    And validar conteudo (ballon 7) "Tocar em Depositar dinheiro aqui 👉 Por QR Code"
    And validar conteudo (ballon 7) "Escolher o valor ou deixar pra quem for pagar preencher"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 9) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

        #Fluxo como funciona o pix - Chaves

  Scenario: Perguntar como funciona o pix e duvidas sobre chave
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "como funciona o pix"
    And enviar a mensagem
    And clicar no botao "Chaves"
    Then validar conteudo (ballon 5) "As chaves Pix funcionam como um atalho para identificar uma conta bancária. É possível ter até 5 chaves na sua Conta BV, sendo elas: celulares, e-mails, CPF/CNPJ e chave aleatória. 🔑 Você só precisa saber a chave Pix da pessoa ou empresa para transferir. Já para receber uma transferência, é só você informar a sua. Se quiser falar mais sobre as chaves, escolha um dos assuntos abaixo."

        #Fluxo como funciona o pix - Chaves
  #Todo
  Scenario: Perguntar como funciona o pix e duvidas sobre segurança
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "como funciona o pix"
    And enviar a mensagem
    And clicar no botao "Segurança"
    Then validar conteudo (ballon 5) ""





