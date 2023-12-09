Feature: Ver fatura pra site

  Scenario: Solicitar a visualização da fatura através da intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para ver a fatura do seu Cartão BV pelo site, você precisa:"
    And validar conteudo (ballon 3) "Acessar a Minha BV com CPF e senha"
    And validar conteudo (ballon 3) "Clicar na opção Cartões"
    And validar conteudo (ballon 3) "Ir em Fatura Atual 👉 Detalhes da Fatura"

    Examples:
      | intent                                                  |
      | Ver fatura                                              |
      | visualizar a minha fatura                               |
      | to precisando ver a fatura                              |
#      | quero visualizar a fatura                               |
#      | quero ter acesso a minha fatura                         |
#      | acessar a minha fatura                                  |
#      | ter visão da minha fatura                               |
#      | poder ter acesso a minha fatura                         |
#      | ajuda para ver a minha fatura                           |
#      | olhar a minha fatura                                    |
#      | Consultar o valor minha fatura                          |
#      | fazer uma consulta na minha fatura pra ver umas compras |