Feature: Boleto DDA Web

  @CT1-DDA-WEB
  Scenario: Desativar boleto dda através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    When validar conteudo (ballon 3) "Para desativar o Boleto Digital (DDA), você precisa ir no app BV e:"
    And validar conteudo (ballon 3) "Acessar a tela inicial"
    And validar conteudo (ballon 3) "Tocar em Organizar contas"
    And validar conteudo (ballon 3) "Selecionar Boleto Digital (DDA) está ativo"
    And validar conteudo (ballon 3) "Tocar em Desativar Boleto Digital (DDA)"
    And validar conteudo (ballon 3) "Depois disso, é só seguir as instruções na tela."
    And validar conteudo (ballon 3) "Quando terminar, seus boletos digitais não irão mais aparecer no Organizador."
    And validar conteudo (ballon 4) "Se eu puder te ajudar com outra coisa, me conta aqui"
    Then eu digitar a intencao "Falar com uma pessoa"
    And enviar a mensagem
    And validar conteudo (ballon 6) "Eu consigo te ajudar com vários assuntos de forma rápida"
    And validar conteudo (ballon 6) "Me dá uma chance?"
    And validar conteudo (ballon 6) "Você pode escolher uma das opções abaixo ou digitar o que precisa"
    And validar conteudo (ballon 6) "Alterar cadastro"
    And validar conteudo (ballon 6) "Recuperar senha"
    And validar conteudo (ballon 6) "Boleto de financiamento"
    And validar conteudo (ballon 6) "Fatura do cartão"
    And validar conteudo (ballon 6) "Falar com uma pessoa"

    Examples:
      | intent                                  |
      | Desativar DDA                           |
      | Não quero mais o DDA                    |
      | Eu posso desativar meu DDA              |
      | Não estou conseguindo desativar meu DDA |
      | Como desativar DDA                      |
      | Como Desativar boleto virtual           |