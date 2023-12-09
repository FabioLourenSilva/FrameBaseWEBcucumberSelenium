Feature: Criar QR Code pix site

  Scenario: Solicitar criação qrcode pix através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "É fácil criar um QR Code Pix pra receber um pagamento."
    And validar conteudo (ballon 3) "Você precisa ter a nossa conta digital e o app banco BV no seu celular. Com isso, é só:"
    And validar conteudo (ballon 3) "Ir na tela inicial do app"
    And validar conteudo (ballon 3) "Tocar em Depositar dinheiro aqui 👉 Por QR Code"
    And validar conteudo (ballon 3) "Escolher o valor ou deixar pra quem for pagar preencher"
    And validar conteudo (ballon 3) "Pronto! Você pode copiar ou compartilhar o QR Code gerado. 😉"

    Examples:
      | intent                                       |
      | como criar um qrcode                         |
#      | Tentei criar um qr code e não consegui       |
#      | estou com dúvidas na hora de criar um qrcode |
#      | Como faço pra ciar um qr code?               |
#      | Como posso gerar um QR Code?                 |
#      | Como gerar um QR Code Pix?                   |
#      | como posso criar um QR Code Pix?             |
#      | Não estou conseguindo gerar um QR Code Pix   |
#      | preciso de ajudar para criar um Qrcode Pix   |

  Scenario: Solicitar criação e optar por qrcode pix, até o transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "como criar"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Você quer criar um:"
    And clicar no botao "QR Code Pix"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"


  Scenario: Solicitar portabilidade de chave pix, até o transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Como gerar um qrcode"
    And enviar a mensagem
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 5) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

    