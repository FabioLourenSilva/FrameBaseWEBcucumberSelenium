Feature: Parcelamento no app

  Scenario: Solicitar parcelamento através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Ah! Deixa eu te lembrar: você só pode pagar a fatura do seu cartão quando ela estiver fechada, tudo bem?"
    And validar conteudo (ballon 3) "Se quer parcelar a fatura fechada do seu Cartão BV, você precisa:"
    And validar conteudo (ballon 3) "Acessar a tela inicial do app"
    And validar conteudo (ballon 3) "Ir em Meus cartões"
    And validar conteudo (ballon 3) "Tocar em Ver fatura 👉Pagar fatura"
    And validar conteudo (ballon 3) "Selecionar Quero parcelar e escolher a melhor opção pra você"
    And validar conteudo (ballon 3) "Tocar em Continuar para pagamento"


    Examples:
      | intent                            |
      | Parcelar                          |
      | Fazer um parcelamento             |
      | gostaria de pagar em vezes        |
      | pagar de forma parcelada          |
      | dividir o pagamentos em partes    |
      | Gostaria de parcelar minha fatura |
      | Pagar de forma parcelada          |
      | parcelar minha fatura             |
