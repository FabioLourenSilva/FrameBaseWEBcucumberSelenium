Feature: Renegociação Web

  @CT1-RENEG-WEB
  Scenario: Solicitar renegociação através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Vamos falar sobre renegociação. Primeiro me conta, você já tem uma renegociação com a gente agora?"
    And validar conteudo (ballon 3) "Quero fazer"
    And validar conteudo (ballon 3) "Já tenho"

    Examples:
      | intent                         |
      | Renegociar meu carro           |
      | Renegociar meu financiameto    |
      | Rever minhas parcelas abertas  |
      | quero renegociar               |
      | preciso fazer uma renegociação |
      | renegociar                     |

  @CT2-RENEG-WEB
  Scenario: Solicitar renegociação (Quero fazer)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "renegociar"
    And enviar a mensagem
    And clicar no botao "Quero fazer"
    And validar conteudo (ballon 5) "As possibilidades de renegociação aqui no BV são personalizadas para cada cliente."
    And validar conteudo (ballon 5) "Para saber se é possível renegociar seu contrato, é só:"
    And validar conteudo (ballon 5) "✔️Acessar a Minha BV com CPF e senha"
    And validar conteudo (ballon 5) "✔️Ir em Financiamento"
    And validar conteudo (ballon 5) "✔️Tocar em Consulte a disponibilidade no banner de renegociação, que aparece dentro de Resolva agora"
    And validar conteudo (ballon 5) "Se tiver renegociação disponível pra você na hora, é só seguir as instruções na tela. "
    And validar conteudo (ballon 5) "Mas, caso não tenha, tenta de novo outro dia. As nossas análises são sempre atualizadas, você pode ter novidades em breve."
    Then clicar no botao "Acessar Minha BV"
    And validar conteudo (ballon 7) "Prontinho, tá aqui."

  @CT3-RENEG-WEB
  Scenario: Solicitar renegociação (Já tenho)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "renegociar"
    And enviar a mensagem
    And clicar no botao "Já tenho"
    And validar conteudo (ballon 5) "Quem entrou na campanha de renegociação e, para ter um respiro no orçamento, aproveitou a possibilidade de adiar o vencimento de até duas parcelas, vale o lembrete: esses pagamentos devem ser feitos no final do contrato."
    And validar conteudo (ballon 5) "Você pode conferir na Minha BV quantas parcelas faltam pra finalizar seu contrato."
    And validar conteudo (ballon 5) "No BV, todas as propostas de renegociação são personalizadas."
    And validar conteudo (ballon 5) "Acessa a Minha BV e veja se você tem alguma opção pré-aprovada."
    Then clicar no botao "Acessar Minha BV"
    And validar conteudo (ballon 7) "Prontinho, tá aqui."