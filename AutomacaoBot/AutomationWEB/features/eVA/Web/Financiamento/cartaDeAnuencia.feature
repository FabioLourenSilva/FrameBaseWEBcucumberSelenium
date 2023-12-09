Feature: Carta de anência WEB

  @CT1-CARTA-DE-ANUENCIA-WEB
  Scenario: Perguntar sobre carta de anuência através das intenções
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Carta de Anuência é uma declaração feita pelo credor para informar ao cartório que já pode cancelar o protesto, pois o devedor quitou a dívida."
    And validar conteudo (ballon 3) "Com essa carta em mãos, o credor ainda precisa fazer o pagamento das despesas do cartório para regularizar seu nome."
    And validar conteudo (ballon 4) "Aqui no BV, quando as parcelas do financiamento de veículos estão em atraso, uma assessoria jurídica fica encarregada de negociar a dívida."
    And validar conteudo (ballon 4) "E é ela quem faz o protesto em cartório quando necessário."
    And validar conteudo (ballon 4) "Assim que a dívida é paga, a assessoria envia a carta de anuência para o titular do contrato."
    And validar conteudo (ballon 5) "Pra saber se a carta de anuência já foi emitida, eu preciso te encaminhar para um dos nossos especialistas."
    And validar conteudo (ballon 5) "Escolhe aqui com qual das opções abaixo eu posso te ajudar:"
    And validar conteudo (ballon 5) "Renegociar minha dívida"
    And validar conteudo (ballon 5) "Falar com uma pessoa"
    And validar conteudo (ballon 5) "Falar sobre outro assunto"

    Examples:
      | intent                                        |
      | O que é carta de anuência?                    |
      | Como pego minha carta de anuência?            |
      | Quero pedir carta de anuência                 |
      | Carta para levar no cartório de protesto      |
      | Carta pra tirar protesto                      |
      | Carta para cartório                           |
      | Preciso de uma carta de anuência urgentemente |
      | Preciso carta de anuência rápido              |
      | Queria uma carta de anuência                  |
      | Como faço para receber uma carta de anuência  |


  @CT2-CARTA-DE-ANUENCIA-WEB
  Scenario: Perguntar sobre carta de anuência (Renegociar minha dívida)
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "O que é carta de anuência?"
    And enviar a mensagem
    And clicar no botao "Renegociar minha dívida"
    Then validar conteudo (ballon 7) "As possibilidades de renegociação do financiamento de veículos são personalizadas para cada cliente."
    And validar conteudo (ballon 7) "1.Acessar a Minha BV com CPF e senha"

  @CT3-CARTA-DE-ANUENCIA-WEB
  Scenario: Perguntar sobre carta de anuência (Falar com uma pessoa), até o transbordo
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "O que é carta de anuência?"
    And enviar a mensagem
    And clicar no botao "Falar com uma pessoa"
    Then validar conteudo (ballon 7) "Antes de chamar uma pessoa do time BV aqui, preciso de duas informações."

  @CT4-CARTA-DE-ANUENCIA-WEB
  Scenario: Perguntar sobre carta de anuência (Falar sobre outro assunto)
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "O que é carta de anuência?"
    And enviar a mensagem
    And clicar no botao "Falar sobre outro assunto"
    Then validar conteudo (ballon 7) "Estou aqui pra te ajudar. 💙 O que você precisa?"

  @CT5-CARTA-DE-ANUENCIA-WEB
  Scenario: Perguntar sobre envio da carta de anuência através das intenções
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "A Carta de Anuência é emitida pela assessoria jurídica imediatamente após o BV confirmar a quitação da dívida."
    And validar conteudo (ballon 3) "A carta é enviada endereço do titular do contrato e o prazo para o recebimento é de 10 dias úteis."
    And validar conteudo (ballon 4) "Se você fez o pagamento há mais de 10 dias e ainda não recebeu a sua Carta de Anuência, eu posso te encaminhar para um dos nossos especialistas pra te ajudar."
    And validar conteudo (ballon 4) "Falar com uma pessoa"
    And validar conteudo (ballon 4) "Falar sobre outro assunto"


    Examples:
      | intent                                                    |
      | Minha carta de anuência ainda não chegou                  |
      | Carta de anuência atrasada                                |
      | Já pedi mas não chegou minha carta de anuência            |
      | Quando chega minha carta de anuência                      |
      | Preciso da carta e ela não chega nunca                    |
      | Qual o prazo para envio da carta de anuência              |
      | Até agora não recebi minha carta de anuência;             |
      | Ficaram de enviar minha carta de anuência, mas não recebi |
      | Quero o status de envio da minha carta de anuência        |
      | Onde está minha carta de anuência?                        |

  @CT6-CARTA-DE-ANUENCIA-WEB
  Scenario: Perguntar sobre envio da carta de anuência (Falar com uma pessoa), até o transbordo
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "Minha carta de anuência ainda não chegou"
    And enviar a mensagem
    And clicar no botao "Falar com uma pessoa"
    Then validar conteudo (ballon 6) "Antes de chamar uma pessoa do time BV aqui, preciso de duas informações."

  @CT7-CARTA-DE-ANUENCIA-WEB
  Scenario: Perguntar sobre envio da carta de anuência (Falar sobre outro assunto)
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "Minha carta de anuência ainda não chegou"
    And enviar a mensagem
    And clicar no botao "Falar sobre outro assunto"
    Then validar conteudo (ballon 6) "Estou aqui pra te ajudar. 💙 O que você precisa?"


  @CT8-CARTA-DE-ANUENCIA-WEB
  Scenario: Perguntar/reclamar sobre as taxas de cartório referente a carta de anuência através das intenções
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "De acordo com a legislação brasileira é o credor quem arca com as taxas de cartório em caso de protesto de dívida."
    And validar conteudo (ballon 3) "Se você quiser saber mais sobre isso, pode clicar aqui que eu te encaminho para a página do governo federal com a lei na íntegra."

    Examples:
      | intent                                                           |
      | Não quero pagar taxa de cartório de carta de anuência            |
      | Por que eu preciso pagar taxas de cartório da carta de anuência? |
      | Qual o valor da taxa de cartório?                                |
      | Quanto custa a taxa de cartório da carta de anuência             |
      | Preciso pagar alguma taxa no cartório de protesto?               |
      | Tem taxa pra carta de anuência cartório de protesto?             |
      | Quero gratuidade para taxa de cartório da carta de anuência      |
      | Taxa de cartório para carta de anuencia é muito caro?            |
      | O que acontece se eu não pagar a taxa de cartório?               |

  @CT9-CARTA-DE-ANUENCIA-WEB
  Scenario: Perguntar/reclamar sobre as taxas de cartório referente a carta de anuência (Hyperlink)
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "Não quero pagar taxa de cartório de carta de anuência"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Se você quiser saber mais sobre isso, pode clicar aqui que eu te encaminho para a página do governo federal com a lei na íntegra."
