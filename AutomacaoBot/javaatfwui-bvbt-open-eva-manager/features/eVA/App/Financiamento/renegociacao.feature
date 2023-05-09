Feature: Renegociação App

  @CT1-RENEG-APP
  Scenario: Solicitar renegociação através das intenções
    Given que acessei o chatbot do eva (App)
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

  @CT2-RENEG-APP
  Scenario: Solicitar renegociação (Quero fazer)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "renegociar"
    And enviar a mensagem
    And clicar no botao "Quero fazer"
    Then validar conteudo (ballon 5) "As possibilidades de renegociação aqui no BV são personalizadas para cada cliente."
    And validar conteudo (ballon 5) "Para saber se é possível renegociar seu contrato, é só:"
    And validar conteudo (ballon 5) "✔️Ir na tela inicial do app"
    And validar conteudo (ballon 5) "✔️Selecionar Financiamento de veículo"
    And validar conteudo (ballon 5) "✔️ Tocar em Consulte a disponibilidade no banner de renegociação que está no final"
    And validar conteudo (ballon 5) "Se tiver renegociação disponível pra você na hora, é só seguir as instruções na tela. "
    And validar conteudo (ballon 5) "Mas, caso não tenha, tenta de novo outro dia. As nossas análises são sempre atualizadas, você pode ter novidades em breve."
    And validar conteudo (ballon 6) "Quero saber: essa informação que eu te passei foi útil pra você resolver o que precisa?"
    And validar conteudo (ballon 6) "Sim"
    And validar conteudo (ballon 6) "Não"

  @CT3-RENEG-APP
  Scenario: Solicitar renegociação (Já tenho)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "renegociar"
    And enviar a mensagem
    And clicar no botao "Já tenho"
    Then validar conteudo (ballon 5) "Quem entrou na campanha de renegociação e, para ter um respiro no orçamento, aproveitou a possibilidade de adiar o vencimento de até duas parcelas, vale o lembrete: esses pagamentos devem ser feitos no final do contrato."
    And validar conteudo (ballon 5) "Você pode conferir na Minha BV quantas parcelas faltam pra finalizar seu contrato."
    And validar conteudo (ballon 5) "No BV, todas as propostas de renegociação são personalizadas."
    And validar conteudo (ballon 5) "Acessa a Minha BV e veja se você tem alguma opção pré-aprovada."
    And validar conteudo (ballon 5) "Acessar Minha BV"