Feature: Boleto antecipacao

  @CT1-ANTECIPACAO-WEB
  Scenario:Solicitar antecipação (Desambiguação - Fatura e Financiamento)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Quero adiantar o pagamento do meu boleto"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Entendi que você quer fazer uma antecipação. Você gostaria de antecipar o pagamento da sua fatura ou seu boleto de financiamento?"
    And clicar no botao "<button>"
    Then validar conteudo (ballon 5) "<content>"

    Examples:
      | button                  | content                                                                                                                                                           |
      | Fatura do cartão        | Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉                                                                                   |
      | Boleto de financiamento | você pode adiantar qualquer parcela do seu contrato e o valor do desconto nos juros vai ser proporcional ao período que você escolheu para antecipar o pagamento. |