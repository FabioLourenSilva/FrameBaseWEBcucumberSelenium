Feature: Mudança do número banco BV app

  @CT1-MUDANÇA-NUMERO-BANCOBV-APP
  Scenario: Se informar sobre mudança do numero banco bv através das intenções (intenções)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "A partir do dia 02 de agosto, o número do banco BV passa a ser 413."
    And validar conteudo (ballon 3) "Com isso é preciso ficar atento a algumas mudanças, mas pode deixar que eu te explico! "
    And validar conteudo (ballon 4) "🔑 Para continuar com sua chave Pix, é só aceitar a portabilidade de chave que será oferecida enquanto você utiliza seu aplicativo."
    And validar conteudo (ballon 4) "📌 Importante: Caso não faça a portabilidade, a chave será excluída após a mudança"
    And validar conteudo (ballon 4) "💸 Para transações, avise a quem irá transferir que o número do banco mudará para 413. Se tem alguma transação programada, faça a atualização com o novo número do banco."
    And validar conteudo (ballon 4) "🦁 Se você escolheu a Conta BV pra receber sua restituição do Imposto de Renda, não deixe de cadastrar o novo número da conta na declaração."

    Examples:
      | intent                                                |
      | Recebi um SMS informando que o número do banco mudou  |
      | O número do banco mudou?                              |
      | Me falaram que o número do banco mudou                |
      | Qual o novo número do banco?                          |
      | O que preciso fazer com a mudança do número do banco? |
      | Enviaram mensagem falando da mudança do número banco  |
      | o número do banco mudou pra 413?                      |
      | O que muda com o novo número do banco?                |
      | Por que mudou o número do banco?                      |
      | Quando muda o número do banco muda?                   |