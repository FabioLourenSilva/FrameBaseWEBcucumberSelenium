Feature: Top assuntos financiamento (APP)

  @CT1-DESAMB-FINANCIAMENTO-APP
  Scenario: Top assuntos financiamento (Intenções)
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Entendi que você quer falar sobre financiamento. 😊"
    And validar conteudo (ballon 3) "Então me conta, sobre qual assunto posso te ajudar?"
    And validar conteudo (ballon 3) "Boleto de financiamento"
    And validar conteudo (ballon 3) "Empréstimo"
    And validar conteudo (ballon 3) "Alterar dado cadastrado"
    And validar conteudo (ballon 3) "Renegociação"
    And validar conteudo (ballon 3) "Simular Financiamento"

    Examples:
      | intent                           |
      | Financiamento                    |
      | financiei                        |
      | falar sobre financiamento        |
      | financiar                        |
      | duvidas sibre financiamento      |
      | financio                         |
      | quero falar do meu financiamento |
      | saber mais sobre financiamento   |
      | financiamento de veículos        |
      | Financiamento no BV              |

  @CT2-DESAMB-FINANCIAMENTO-APP
  Scenario: Top assuntos financiamento (Boleto de financiamento)
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "Financiamento"
    And enviar a mensagem
    And clicar no botao "Boleto de financiamento"
    Then validar conteudo (ballon 5) "Você gostaria do seu boleto:"
    And validar conteudo (ballon 5) "Em aberto"
    And validar conteudo (ballon 5) "Antecipação"
    And validar conteudo (ballon 5) "Quitação"
    And validar conteudo (ballon 5) "Carnê"

  @CT3-DESAMB-FINANCIAMENTO-APP
  Scenario: Top assuntos financiamento (Empréstimo)
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "Financiamento"
    And enviar a mensagem
    And clicar no botao "Empréstimo"
    Then validar conteudo (ballon 5) "Posso te ajudar com isso. O BV tem várias opções de crédito. Selecione abaixo a melhor opção para você"
    And validar conteudo (ballon 5) "Crédito Pessoal"
    And validar conteudo (ballon 5) "Crédito Imóvel Garantia"
    And validar conteudo (ballon 5) "Crédito Veículo Garantia"
    And validar conteudo (ballon 5) "Refinanciamento"
    And validar conteudo (ballon 5) "Consignado"
    And validar conteudo (ballon 5) "Financiamento"
#Depreciado
#  @CT4-DESAMB-FINANCIAMENTO-APP
#  Scenario: Top assuntos financiamento (Carnê)
#    Given que acessei o chatbot do eva (App)
#    And eu digitar a intencao "Financiamento"
#    And enviar a mensagem
#    And clicar no botao "Carnê"
#    Then validar conteudo (ballon 5) "Para pegar a 2ª via do carnê você precisa:"
#    And validar conteudo (ballon 5) "Acessar o site da Minha BV com CPF e senha"
#    And validar conteudo (ballon 5) "Clicar em Financiamento → 2ª via do carnê"

  @CT5-DESAMB-FINANCIAMENTO-APP
  Scenario: Top assuntos financiamento (Alteração cadastral)
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "Financiamento"
    And enviar a mensagem
    And clicar no botao "Alteração de dados cadastrais"
    Then validar conteudo (ballon 5) "Qual dado cadastrado você gostaria de alterar?"
    And validar conteudo (ballon 5) "Telefone"
    And validar conteudo (ballon 5) "E-mail"
    And validar conteudo (ballon 5) "Endereço"
    And validar conteudo (ballon 5) "Senha"

  @CT6-DESAMB-FINANCIAMENTO-APP
  Scenario: Top assuntos financiamento (Renegociação)
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "Financiamento"
    And enviar a mensagem
    And clicar no botao "Renegociação"
    Then validar conteudo (ballon 5) "As possibilidades de renegociação do financiamento de veículos são personalizadas para cada cliente."
    And validar conteudo (ballon 5) "Para saber se é possível renegociar seu contrato hoje, é só:"
    And validar conteudo (ballon 5) "Ir na tela inicial do app"
    And validar conteudo (ballon 5) "Selecionar Financiamento de veículo"
    And validar conteudo (ballon 5) "Tocar em Consulte a disponibilidade no banner de renegociação que está no final"

  @CT7-DESAMB-FINANCIAMENTO-APP
  Scenario: Top assuntos financiamento (Simular financiamento)
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "Financiamento"
    And enviar a mensagem
    And clicar no botao "Simular Financiamento"
    Then validar conteudo (ballon 5) "Me conta, você quer um financiamento de:"
    And validar conteudo (ballon 5) "Veículo"
    And validar conteudo (ballon 5) "Estudantil"
    And validar conteudo (ballon 5) "Energia solar"
