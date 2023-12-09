Feature: Consultar redução de limite no site

  Scenario: Consultar redução de limite através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Tem alguns motivos para que o limite do cartão de crédito seja reduzido, mas o principal deles é apoiar no controle do orçamento."
    And validar conteudo (ballon 3) "O banco faz esse ajuste depois de avaliar alguns dados no histórico do cliente, tanto no BV quanto em outras instituições financeiras, como pagamentos atrasados ou parciais da fatura e de outros serviços."
    And validar conteudo (ballon 3) "Quando o limite é ajustado, o cliente sempre é avisado por mensagem de texto no seu celular cadastrado."
    And validar conteudo (ballon 3) "Isso está combinado no Contrato do Cartão de Crédito assinado."

    Examples:
      | intent                                          |
      | Meu limite diminuiu do nada                     |
#      | Por que meu limite caiu?                        |
#      | meu limite vai voltar ao valor que era antes?   |
#      | por que meu limite foi reduzido                 |
#      | vocês reduziram meu limite?                     |
#      | meu limite caiu                                 |
#      | Quero saber porque meu limite caiu              |
#      | meu limite caiu pq?                             |
#      | meu limite abaixou                              |
#      | meu limite foi reduzido                         |
#      | gostaria de saber porque o meu limite abaixou   |
#      | recebi mensagem falando que meu limite diminuiu |