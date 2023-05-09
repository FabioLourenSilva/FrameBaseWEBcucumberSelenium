Feature: Contratação de produto BV APP

  @CT1-CONTRATACAO-PROD-BV-APP
  Scenario: Solicitar contratação dos produtos BV através das intenções
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Entendi, você quer contratar um produto BV 😊"
    And validar conteudo (ballon 3) "Aqui no BV, temos uma variedade de produtos, escolha abaixo qual está buscando."
    And validar conteudo (ballon 3) "Abrir conta"
    And validar conteudo (ballon 3) "Cartão de crédito"
    And validar conteudo (ballon 3) "Empréstimo"
    And validar conteudo (ballon 3) "Financiamento"
    And validar conteudo (ballon 3) "Refinanciamento"

    Examples:
      | intent                            |
      | Quero contratar um produto        |
      | Onde contrato um produto BV?      |
      | Quais produtos têm no BV?         |
      | Com quais produtos o BV trabalha? |
      | Preciso contratar um produto      |
      | Produtos disponíveis no BV        |
      | Produtos que o BV trabalha        |

  @CT2-CONTRATACAO-PROD-BV-APP
  Scenario: Solicitar contratação dos produtos BV (Abrir conta)
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "Quero contratar um produto"
    And enviar a mensagem
    And clicar no botao "Abrir conta"
    Then validar conteudo (ballon 5) "A Conta BV é grátis e 100% digital. Para abrir a sua é só:"
    And validar conteudo (ballon 5) "Selecionar Abrir minha Conta BV na tela inicial do app"
    And validar conteudo (ballon 5) "Permitir acesso à câmera do seu celular e tirar uma foto do seu rosto"
    And validar conteudo (ballon 5) "Tocar na seta azul no final da tela para continuar"
    And validar conteudo (ballon 5) "Tirar foto da sua CNH ou do seu RG"

  @CT3-CONTRATACAO-PROD-BV-APP
  Scenario: Solicitar contratação dos produtos BV (Cartão de crédito)
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "Quero contratar um produto"
    And enviar a mensagem
    And clicar no botao "Cartão de crédito"
    Then validar conteudo (ballon 5) "Que bom que pensou no BV na hora de escolher um cartão de crédito. 😃"
    And validar conteudo (ballon 5) "Pra pedir, você precisa acessar o site do BV na área de Cartões e escolher o que mais combina com você."

  @CT4-CONTRATACAO-PROD-BV-APP
  Scenario: Solicitar contratação dos produtos BV (Empréstimo)
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "Quero contratar um produto"
    And enviar a mensagem
    And clicar no botao "Empréstimo"
    Then validar conteudo (ballon 5) "Posso te ajudar com isso. O BV tem várias opções de crédito. Selecione abaixo a melhor opção para você"
    And validar conteudo (ballon 5) "Crédito Pessoal"
    And validar conteudo (ballon 5) "Crédito Imóvel Garantia"
    And validar conteudo (ballon 5) "Crédito Veículo Garantia"
    And validar conteudo (ballon 5) "Refinanciamento"
    And validar conteudo (ballon 5) "Consignado"
    And validar conteudo (ballon 5) "Financiamento"

  @CT5-CONTRATACAO-PROD-BV-APP
  Scenario: Solicitar contratação dos produtos BV (Financiamento)
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "Quero contratar um produto"
    And enviar a mensagem
    And clicar no botao "Financiamento"
    Then validar conteudo (ballon 5) "Entendi que você quer falar sobre financiamento. 😊"
    And validar conteudo (ballon 5) "Então me conta, sobre qual assunto posso te ajudar?"
    And validar conteudo (ballon 5) "Boleto de financiamento"
    And validar conteudo (ballon 5) "Empréstimo"
    And validar conteudo (ballon 5) "Carnê"
    And validar conteudo (ballon 5) "Alterar dado cadastrado"
    And validar conteudo (ballon 5) "Renegociação"

  @CT6-CONTRATACAO-PROD-BV-APP
  Scenario: Solicitar contratação dos produtos BV (Refinanciar)
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "Quero contratar um produto"
    And enviar a mensagem
    And clicar no botao "Refinanciamento"
    Then validar conteudo (ballon 5) "Me conta, você quer refinanciar o seu"
    And validar conteudo (ballon 5) "Veículo"
    And validar conteudo (ballon 5) "Consignado"
    And validar conteudo (ballon 5) "Imóvel"