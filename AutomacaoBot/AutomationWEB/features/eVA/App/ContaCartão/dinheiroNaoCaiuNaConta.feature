Feature: Dinheiro não caiu na conta app

  @CT1-DINHEIRO-N-CAIU-CONTA-APP
  Scenario: Informar que o dinheiro não caiu na conta (intenções)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Se não recebeu o valor de uma transferência na sua conta, talvez seja porque no dia 02 de agosto o número do banco BV mudou para 413."
    And validar conteudo (ballon 3) "Nesse caso, você precisa confirmar se a pessoa que fez a transferência usou o número novo. Para transferências programadas, é só olhar se o novo número está atualizado. 😉"
    And validar conteudo (ballon 3) "Se for outra situação, é só tocar no botão abaixo."


    Examples:
      | intent                                             |
      | Não recebi uma transferência de dinheiro           |
      | Me fizeram uma transferência mas não caiu na conta |
      | Dinheiro não caiu na conta                         |
      | Transferiram dinheiro mas não caiu                 |
      | Não recebi um valor que transferiram               |
      | Tinha uma transferência programada e não caiu      |
      | Pq o dinheiro não caiu na minha conta?             |
      | Não estou recebendo dinheiro na minha conta        |
      | Não ta caindo dinheiro na minha conta              |
      | Estão tentando me transferir mas o valor não cai   |


  @CT2-DINHEIRO-N-CAIU-CONTA-APP
  Scenario: Informar que o dinheiro não caiu na conta, até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Não recebi uma transferência de dinheiro"
    And enviar a mensagem
    And clicar no botao "Falar com uma pessoa"
    Then validar conteudo (ballon 5) "Por favor, espere um pouquinho que uma pessoa do nosso time já vai falar com você. 😃"