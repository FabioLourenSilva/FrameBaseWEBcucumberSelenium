Feature: Segunda via Web

  @CT1-SEGUNDA-VIA-WEB
  Scenario: Solicitar segunda via do boleto através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Você gostaria da segunda via do seu boleto de:"
    And validar conteudo (ballon 3) "Fatura do cartão"
    And validar conteudo (ballon 3) "Financiamento de veículos"
    And validar conteudo (ballon 3) "Outros contratos"

    Examples:
      | intent                    |
      | segunda via do meu boleto |
      | quero meu boleto          |
      | gostaria do boleto        |
      | boleto                    |
      | preciso do boleto         |

  @CT2-SEGUNDA-VIA-WEB
  Scenario: Solicitar segunda via do boleto (Fatura cartão)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "segunda via do meu boleto"
    And enviar a mensagem
    And clicar no botao "Fatura do cartão"
    And clicar no botao "Segunda via da fatura"
    Then validar conteudo (ballon 7) "Para pegar o boleto da fatura aqui pelo site, é só:"
    And validar conteudo (ballon 7) "Acessar a Minha BV com CPF e senha"
    And validar conteudo (ballon 7) "Clicar em Cartões →Fatura atual"
    And validar conteudo (ballon 7) "Escolher a opção de pagamento Valor total ou mínimo e depois clicar em Gerar Boleto"
    And validar conteudo (ballon 7) "Pronto! Copie o número do código de barras ou baixe o PDF do boleto para fazer o pagamento."
    And validar conteudo (ballon 7) "No app BV você também pode pegar o boleto ou pagar direto pela sua Conta BV."
    And clicar no botao "Já tentei isso"
    And validar conteudo (ballon 9) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer?"
    Then clicar no botao "<button>"
    And validar conteudo (ballon 11) "<content>"

    Examples:
      | button               | content                                                                           |
      | Falar com uma pessoa | Antes de te transferir para uma pessoa do time BV, preciso de quatro informações. |
      | Deixar para depois   | Se eu puder te ajudar com outra coisa, me conta aqui                              |

#Em PRD
  @CT3-SEGUNDA-VIA-WEB
  Scenario: Solicitar segunda via do boleto (Financiamento de Veículos)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "segunda via do meu boleto"
    And enviar a mensagem
    And clicar no botao "Financiamento de veículos"
    Then validar conteudo (ballon 5) "Vou te passar o número do código de barras do seu boleto. Com ele você pode realizar o pagamento."
    And validar conteudo (ballon 6) "Só preciso que você me passe e confirme alguns dados, é rapidinho."
    And validar conteudo (ballon 7) "Qual é o seu CPF?"


  @CT4-SEGUNDA-VIA-WEB
  Scenario: Solicitar segunda via do boleto (Outros contratos)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "segunda via do meu boleto"
    And enviar a mensagem
    And clicar no botao "Outros contratos"
    And validar conteudo (ballon 5) "Para pegar o boleto de um financiamento ou crédito aqui pelo site é só:"
    And validar conteudo (ballon 5) "Acessar a Minha BV com CPF e senha"
    And validar conteudo (ballon 5) "Clicar em Financiamento"
    And validar conteudo (ballon 5) "Se tiver mais de um financiamento ou crédito, escolher a opção que deseja"
    And validar conteudo (ballon 5) "Clicar em 'O boleto do mês já está disponível'"
    And validar conteudo (ballon 5) "Pronto! Copie o número do código de barras ou baixe o PDF do boleto para fazer o pagamento."
    And validar conteudo (ballon 5) "Ah, se você tiver uma Conta BV, pode pegar o boleto no app e pagar direto por lá!"
    And clicar no botao "Já tentei isso"
    And validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer?"
    Then clicar no botao "<button>"
    And validar conteudo (ballon 9) "<content>"

    Examples:
      | button               | content                                                                  |
      | Falar com uma pessoa | Antes de chamar uma pessoa do time BV aqui, preciso de duas informações. |
      | Deixar para depois   | Se eu puder te ajudar com outra coisa, me conta aqui                     |


  @CT5-SEGUNDA-VIA-WEB
  Scenario: Solicitar segunda via do boleto (Fatura cartão) att
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para pegar o boleto da fatura aqui pelo site, é só"
    And validar conteudo (ballon 3) "Acessar a Minha BV com CPF e senha"
    And validar conteudo (ballon 3) "Clicar em Cartões →Fatura atual"
    And validar conteudo (ballon 3) "Escolher a opção de pagamento Valor total ou mínimo e depois clicar em Gerar Boleto"
    And validar conteudo (ballon 3) "Pronto! Copie o número do código de barras ou baixe o PDF do boleto para fazer o pagamento."
    And validar conteudo (ballon 3) "No app BV você também pode pegar o boleto ou pagar direto pela sua Conta BV."
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
    And validar conteudo (ballon 6) "Limite"

    Examples:
      | intent                      |
      | Segunda via de fatura       |
      | segunda via de fatura       |
      | via da fatura               |
      | quero minha fatura          |
      | segunda via da minha fatura |