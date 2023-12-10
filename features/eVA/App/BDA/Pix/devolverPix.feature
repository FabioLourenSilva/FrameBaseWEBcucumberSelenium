Feature: Devolver pix app

  Scenario: Solicitar devolução de pix através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Você pode devolver o Pix no mesmo valor ou parte dele pra quem te enviou."
    And validar conteudo (ballon 3) "Para fazer isso, é só:"
    And validar conteudo (ballon 3) "Ir na tela inicial 👉Pix 👉Transações"
    And validar conteudo (ballon 3) "Selecionar a transferência recebida e tocar em Devolver valor"
    And validar conteudo (ballon 3) "Escolher o valor para devolver e conferir os dados de quem vai receber"
    And validar conteudo (ballon 3) "Tocar em Devolver valor"
    And validar conteudo (ballon 3) "Digitar a senha do Cartão BV para confirmar"
    And validar conteudo (ballon 3) "Pronto! Você pode também gerar o comprovante para compartilhar. 😉"

    Examples:
      | intent                                |
      | Caiu um pix na minha conta por engano |
#      | Não estou conseguindo devolver um pix                  |
#      | Não reconheço um pix que caiu na minha conta           |
#      | Como eu faço pra devolver um pix?                      |
#      | Quero devolver um pix                                  |
#      | Preciso devolver um pix                                |
#      | tem como devolver um pix?                              |
#      | caiu um valor estranho de pix na minha conta           |
#      | quero saber o procedimento pra fazer uma devolução pix |
#      | como realizo um procedimento de devolução pix?         |
#      | qual é o processo pra devolver um pix?                 |

  Scenario: Solicitar devolução de pix até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Quero efetuar uma devolução de pix"
    And enviar a mensagem
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 5) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"
