Feature: Reclama SMS App

  @CT1-RECLAMACAO-SMS-APP
  Scenario: Perguntar sobre o SMS de cobrança através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "O banco BV enviou um lembrete via SMS para os clientes que entraram na campanha de renegociação 60 dias."
    And validar conteudo (ballon 3) "Funcionou assim: nos últimos meses o BV ofereceu para alguns clientes a possibilidade de adiar o pagamento de até duas parcelas do financiamento e ter mais tempo para reorganizar seu orçamento."
    And validar conteudo (ballon 4) "Então, quem aderiu teve um respiro nas contas por um período. E agora, perto do vencimento destas parcelas postergadas, o BV está mandando o aviso para ninguém perder a data de vencimento."
    And validar conteudo (ballon 4) "Você pode conferir na Minha BV quantas parcelas faltam pra finalizar seu contrato."
    And validar conteudo (ballon 5) "No BV, todas as propostas de renegociação são personalizadas."
    And validar conteudo (ballon 5) "Se você quiser ver os detalhes do seu contrato ou ver se você tem alguma opção de renegociação pré-aprovada, é só acessar a Minha BV."
    And validar conteudo (ballon 5) "Acessar Minha BV"
    And validar conteudo (ballon 5) "Deixar para depois"

    Examples:
      | intent                                              |
      | recebi SMS de cobrança e não entendi                |
      | recebi SMS falando em prorrogação                   |
      | prorrogação 60 dias                                 |
      | pq o banco me mandou SMS de prorrogação             |
      | pq BV está me mandando mais boletos?                |
      | recebi boleto e não entendi                         |
      | não lembro de ter pedido prorrogação                |
      | o que é prorrogação 60 dias?                        |
      | recebi email com boleto de prorrogação, o q é isso? |
      | que cobrança é essa de prorrogação?                 |
      | recebi sms de cobrança                              |
      | que sms de cobrança é esse?                         |

  @CT2-RECLAMACAO-SMS-APP
  Scenario: Perguntar sobre o SMS de cobrança (Acessar Minha BV)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "recebi SMS de cobrança e não entendi "
    And enviar a mensagem
    Then clicar no botao "Acessar Minha BV"

  @CT3-RECLAMACAO-SMS-APP
  Scenario: Perguntar sobre o SMS de cobrança (Deixar para depois)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "recebi SMS de cobrança e não entendi"
    And enviar a mensagem
    And clicar no botao "Deixar para depois"
    And validar conteudo (ballon 7) "Se eu puder te ajudar com outra coisa, me conta aqui"