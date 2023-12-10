Feature: Acompanhar aprovação do cartão WEB

  @CT1-ACOMPANHAR-CARTAO-WEB
  Scenario: Solicitar acompanhamento do cartão através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Se você quer saber se o cartão foi aprovado, é só ligar no número abaixo."
    And validar conteudo (ballon 3) "0800 772 8028"
    And validar conteudo (ballon 3) "Nós também temos um número para atender deficientes auditivos e de fala."
    And validar conteudo (ballon 3) "0800 701 8661"
    And validar conteudo (ballon 3) "Estamos prontos para te atender 24 horas, todos os dias."
    Examples:
      | intent                                                       |
      | Status da proposta do cartão de crédito                      |
      | Saber minha proposta de cartão                               |
      | Foi aprovado algum cartão                                    |
      | Queria saber se meu cartão de crédito foi aprovado           |
      | Status do cartão                                             |
      | Acompanhar o pedido do cartão de crédito                     |
      | Onde eu acompanho minha solicitação de cartão de crédito     |
      | Bom dia queria ver a proposta do meu cartão                  |
      | Eu fui aprovado no cartão de crédito?                        |
      | Sabe se meu cartão de crédito foi aprovado                   |
      | Quero saber se foi aprovado o meu pedido crédito para cartão |
      | Levi fui aprovado                                            |
      | Como eu sei se fui aprovada no crédito                       |
      | quero ve como ta o pedido do meu                             |