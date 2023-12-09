Feature: Parcelamento no site

  Scenario: Solicitar parcelamento através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para parcelar a fatura fechada do seu Cartão BV você deve acessar a Minha BV com CPF e senha. Depois, é só:"
    And validar conteudo (ballon 3) "Selecionar Cartões 👉 Fatura atual 👉 Opções de pagamento"
    And validar conteudo (ballon 3) "Ir em Pague sua fatura em até 1 + 18 vezes e escolher a melhor opção pra você"
    And validar conteudo (ballon 3) "Clicar no botão Gerar boleto"
    And validar conteudo (ballon 3) "Pronto! É só copiar o número do código de barras ou baixar o PDF da sua 1a parcela."
    And validar conteudo (ballon 3) "📱No app BV você também pode parcelar a fatura, na seção Meus cartões."


    Examples:
      | intent                            |
      | Parcelar                          |
      | Fazer um parcelamento             |
      | gostaria de pagar em vezes        |
#      | pagar de forma parcelada          |
#      | dividir o pagamentos em partes    |
#      | Gostaria de parcelar minha fatura |
#      | Pagar de forma parcelada          |
#      | parcelar minha fatura             |
