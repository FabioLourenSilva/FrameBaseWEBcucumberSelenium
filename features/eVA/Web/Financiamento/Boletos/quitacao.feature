Feature: Boleto quitacao web

  @CT1-QUITACAO-WEB
  Scenario:Solicitar quitacao (Outros tipos de quitação) através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Claro!"
    And validar conteudo (ballon 3) "Me conta o que você quer quitar hoje:"
    And clicar no botao "Outro tipo de quitação"
    Then validar conteudo (ballon 5) "Para quitar um financiamento ou crédito aqui pelo site, você precisa"
    And validar conteudo (ballon 5) "Acessar a Minha BV com CPF e senha"
    And validar conteudo (ballon 5) "Ir em Financiamento no canto superior esquerdo"
    And validar conteudo (ballon 5) "Se tiver mais de um contrato, selecione qual quer quitar"
    And validar conteudo (ballon 5) "Ir em Resolva agora → Quitar contrato → Escolher o vencimento"
    And validar conteudo (ballon 5) "Clicar em Calcular → Gerar boleto"
    And validar conteudo (ballon 5) "Pronto! Agora é só copiar o código de barras ou baixar o PDF do seu boleto."
    And validar conteudo (ballon 5) "Acessar Minha BV"
    And validar conteudo (ballon 6) "Se eu puder te ajudar com outra coisa, me conta aqui. 😃"


    Examples:
      | intent                |
      | quitar                |
      | quitação              |
      | quero quitar          |
      | pagar tudo o que devo |
      | pagar tudo que devo   |
      | simulação quitação    |
      | pagar por completo    |