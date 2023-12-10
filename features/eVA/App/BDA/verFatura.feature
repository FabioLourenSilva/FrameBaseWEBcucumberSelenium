Feature: Ver fatura pra app

  Scenario: Solicitar a visualização da fatura através da intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para acessar a fatura do seu Cartão BV, você precisa:"
    And validar conteudo (ballon 3) "Ir na tela inicial do app"
    And validar conteudo (ballon 3) "Escolher a opção Meus cartões"
    And validar conteudo (ballon 3) "Tocar em Ver fatura"

    Examples:
      | intent                                                  |
      | Ver fatura                                              |
      | visualizar a minha fatura                               |
      | to precisando ver a fatura                              |
      | quero visualizar a fatura                               |
      | quero ter acesso a minha fatura                         |
      | acessar a minha fatura                                  |
      | ter visão da minha fatura                               |
      | poder ter acesso a minha fatura                         |
      | ajuda para ver a minha fatura                           |
      | olhar a minha fatura                                    |
      | Consultar o valor minha fatura                          |
      | fazer uma consulta na minha fatura pra ver umas compras |