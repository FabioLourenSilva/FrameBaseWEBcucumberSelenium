Feature: Alteração cadastral no site

  Scenario: Solicitar comprovante através de intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Você quer o comprovante de uma transação feita com saldo em conta ou com o Cartão BV?"

    Examples:
      | intent                                     |
      | Como consigo um comprovante?               |
      | Preciso de um comprovante de pagamento     |
      | Preciso de um comprovante de transferência |
#      | Não sei como pegar um comprovante de pagamento   |
#      | Não consigo pegar o comprovante                  |
#      | Preciso do meu histórico de pagamento            |
#      | Como faço pra pegar um comprovante de pagamento? |
#      | Como acesso os meus comprovantes?                |

  Scenario: Solicitar comprovante (saldo em conta) fluxo completo até o transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Como acesso os meus comprovantes?"
    And enviar a mensagem
    And clicar no botao "Saldo em conta"
    And validar conteudo (ballon 5) "Para pegar um comprovante de pagamento, você precisa ter o app banco BV em seu celular. Nele, é só:"
    And validar conteudo (ballon 5) "Acessar a tela inicial do app"
    And validar conteudo (ballon 5) "Ir em Consultar extrato"
    And validar conteudo (ballon 5) "Tocar na transação feita 👉 Ver comprovante"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Solicitar comprovante (Cartao BV) fluxo completo até o transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Como acesso os meus comprovantes?"
    And enviar a mensagem
    And clicar no botao "Cartão BV"
    And validar conteudo (ballon 5) "Para pegar um comprovante de pagamento, você precisa ter o app banco BV em seu celular."
    And validar conteudo (ballon 5) "Acessar a tela inicial"
    And validar conteudo (ballon 5) "Ir em Organizar contas"
    And validar conteudo (ballon 5) "Tocar no ícone do canto inferior 👉 Pago com cartão"
    And validar conteudo (ballon 5) "Escolher o pagamento 👉 Ver comprovante"
    And validar conteudo (ballon 5) "Pronto! É só compartilhar o comprovante com quem você precisa."
    And clicar no botao "Não deu certo"
    And validar conteudo (ballon 7) "Ah, tudo bem! Vou te contar um outro jeito de acessar o comprovante no app BV. É só:"
    And validar conteudo (ballon 7) "Acessar a tela inicial do app"
    And validar conteudo (ballon 7) "Ir em Consultar extrato"
    And validar conteudo (ballon 7) "Tocar no pagamento 👉 Ver comprovante"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 9) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Solicitar comprovante (Cartao BV), conhecer o DDA e percorrer o fluxo completo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Como acesso os meus comprovantes?"
    And enviar a mensagem
    And clicar no botao "Cartão BV"
    And validar conteudo (ballon 5) "Para pegar um comprovante de pagamento, você precisa ter o app banco BV em seu celular."
    And validar conteudo (ballon 5) "Acessar a tela inicial"
    And validar conteudo (ballon 5) "Tocar no ícone do canto inferior 👉 Pago com cartão"
    And validar conteudo (ballon 5) "Escolher o pagamento 👉 Ver comprovante"
    And validar conteudo (ballon 5) "Pronto! É só compartilhar o comprovante com quem você precisa."
    And clicar no botao "Conhecer o DDA"
    And validar conteudo (ballon 7) "O Boleto Digital (DDA) busca e centraliza todos os boletos digitais cadastrados no seu CPF, mesmo os de outras instituições, em um único lugar: o Organizador Financeiro BV."
    And clicar no botao "Ativar DDA"
    Then validar conteudo (ballon 9) "Para ativar o Boleto Digital (DDA), você precisa ter a conta digital no app BV."
    And validar conteudo (ballon 9) "Acessar a tela inicial do app"
    And validar conteudo (ballon 9) "Ir em Organizar contas 👉 Ativar Boleto Digital (DDA)"


