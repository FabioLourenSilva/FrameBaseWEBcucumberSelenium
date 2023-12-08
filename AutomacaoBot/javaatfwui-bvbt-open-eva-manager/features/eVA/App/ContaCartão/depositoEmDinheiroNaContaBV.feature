Feature: Solicitar deposito em conta no app

  @CT1-DEPOSITO-CONTA-APP
  Scenario: Solicitar deposito em conta através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Na sua Conta BV tudo é digital, inclusive as movimentações. 💸"
    And validar conteudo (ballon 3) "Você consegue depositar dinheiro na sua conta com qualquer outro banco, e o melhor: sem sair de casa!"
    And validar conteudo (ballon 3) "Pra isso, pode contar com as opções de transferência Pix e QR Code Pix, que são grátis, e também com as de TED ou DOC. 😃"
    And validar conteudo (ballon 3) "Se quiser saber mais sobre como fazer um depósito, é só escolher um dos botões abaixo."

    Examples:
      | intent                                             |
      | depositar dinheiro                                 |
      | como depositar na conta digital?                   |
      | quero saber como deposito dinheiro na conta        |
      | deposito em conta                                  |
      | como faço para eu depositar dinheiro na conta      |
      | nao consigo depositar                              |
      | colocar dinheiro na conta                          |
      | quero depositar dinheiro na conta mas nao sei como |
      | como faço para depositar dinheiro nesta conta      |
      | preciso depositar valor na conta                   |
      | como depositar dinheiro na conta bancaria digital? |


  @CT2-DEPOSITO-CONTA-APP
  Scenario: Solicitar deposito em conta (deposito pix)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "depositar dinheiro"
    And enviar a mensagem
    And clicar no botao "Pix"
    Then validar conteudo (ballon 5) "Nesse caso, você tem que ter uma chave Pix cadastrada com a gente."
    And validar conteudo (ballon 5) "Para cadastrar ou conferir suas chaves, você precisa:"
    And validar conteudo (ballon 5) "Ir na tela inicial e escolher a opção Pix"
    And validar conteudo (ballon 5) "Selecionar Minhas Chaves"
    And validar conteudo (ballon 5) "Depois, é só transferir o valor por outro banco usando a sua chave."

  @CT3-DEPOSITO-CONTA-APP
  Scenario: Solicitar deposito em conta (deposito qrcode)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "depositar dinheiro"
    And enviar a mensagem
    And clicar no botao "QR Code Pix"
    Then validar conteudo (ballon 5) "Para fazer um depósito por QR Code Pix, você precisa:"
    And validar conteudo (ballon 5) "Ir na tela inicial e escolher a opção Depositar dinheiro aqui"
    And validar conteudo (ballon 5) "Selecionar Por QR Code Pix"
    And validar conteudo (ballon 5) "Depois, é só copiar o código ou compartilhar o QR code e pagar em outro banco."

  @CT4-DEPOSITO-CONTA-APP
  Scenario: Solicitar deposito em conta (deposito ted)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "depositar dinheiro"
    And enviar a mensagem
    And clicar no botao "TED"
    Then validar conteudo (ballon 5) "Para fazer um depósito por TED, você precisa:"
    And validar conteudo (ballon 5) "Ir na tela inicial e escolher a opção Depositar dinheiro aqui"
    And validar conteudo (ballon 5) "Selecionar Por TED ou DOC"
    And validar conteudo (ballon 5) "Depois, é só copiar ou compartilhar os dados e fazer a transferência em outro banco."

  @CT5-DEPOSITO-CONTA-APP
  Scenario: Solicitar deposito em conta (deposito doc)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "depositar dinheiro"
    And enviar a mensagem
    And clicar no botao "DOC"
    Then validar conteudo (ballon 5) "Para fazer um depósito por DOC, você precisa:"
    And validar conteudo (ballon 5) "Ir na tela inicial e escolher a opção Depositar dinheiro aqui"
    And validar conteudo (ballon 5) "Selecionar Por TED ou DOC"
    And validar conteudo (ballon 5) "Depois, é só copiar ou compartilhar os dados e fazer a transferência em outro banco."


