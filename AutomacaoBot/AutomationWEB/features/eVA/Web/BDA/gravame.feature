Feature: Gravame no site

  Scenario: Se informar sobre o gravame através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Depois de pagar todo o seu contrato do financiamento, a baixa do Gravame acontece automaticamente em até 10 dias corridos. 😃"
    And validar conteudo (ballon 3) "Isso só não vai acontecer se o CRV (Certificado de Registro do Veículo), conhecido também como DUT (Documento Único de Transferência), não tiver sido emitido com o próprio veículo dado como garantia do pagamento do financiamento. Se esse for o seu caso, você precisa procurar o Detran da sua cidade ou consultar um despachante."
    And validar conteudo (ballon 3) "Para saber mais sobre Gravame e como desalienar o seu veículo, clique aqui!"

    Examples:
      | intent           |
      | preciso gravame  |
      | baixar gravame   |
      | gravame          |
#      | Baixa do gravame |
#      | quero gravame    |

  Scenario: Se informar sobre o gravame, percorrer fluxo até o transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Baixa do gravame"
    And enviar a mensagem
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 5) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"