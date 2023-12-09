Feature: Boleto quitacao app

  @CT1-QUITACAO-APP
  Scenario:Solicitar quitacao (Outros tipos de quitação) através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Claro!"
    And validar conteudo (ballon 3) "Me conta o que você quer quitar hoje:"
    And clicar no botao "Outro tipo de quitação"
    Then validar conteudo (ballon 5) "Para quitar um financiamento ou crédito, você precisa:"
    And validar conteudo (ballon 5) "Acessar a tela inicial do app"
    And validar conteudo (ballon 5) "Ir no ícone de Quitar financiamento ou Quitar contrato"
    And validar conteudo (ballon 5) "Selecionar o botão Gerar boleto"
    And validar conteudo (ballon 5) "Copiar o código de barras ou baixar o PDF do seu boleto"
    And validar conteudo (ballon 5) "Ah! Se você tiver mais de um financiamento ou crédito, só precisa selecionar antes qual gostaria de quitar e então seguir esse mesmo passo a passo. 😉"
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