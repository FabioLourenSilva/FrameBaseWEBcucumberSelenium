Feature: Como funciona a portablidade (App)

  @CT1-COMO-FUNCIONA-PORTABILIDADE-APP
  Scenario: Perguntar como funciona a portabilidade através das intenções
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Você pode receber o seu salário na sua Conta BV todos os meses de forma simples e automática, e uma vez que a portabilidade é feita você não precisa pedir mais, a menos que mude de emprego."
    And validar conteudo (ballon 3) "Para isso, é só pedir a portabilidade aqui no app. O processo é bem simples e dura poucos minutos."
    And validar conteudo (ballon 4) "Ao trazer o salário pra cá, você:"
    And validar conteudo (ballon 4) "- Não paga nada por isso. É 100% grátis"
    And validar conteudo (ballon 4) "- Aproveita todas as vantagens da Conta BV, como a possibilidade de guardar o seu dinheiro rendendo em envelopes"
    And validar conteudo (ballon 4) "- Continua recebendo seu salário no dia de sempre"
    And validar conteudo (ballon 4) "- Escolhe organizar sua vida financeira em um só lugar"
    And validar conteudo (ballon 4) "Como pedir"
    And validar conteudo (ballon 4) "Quem pode pedir"
    And validar conteudo (ballon 4) "Como cancelar"

    Examples:
      | intent                                                                         |
      | O que é portabilidade de salário?                                              |
      | Pra que serve a portabilidade de salário?                                      |
      | Como funciona a portabilidade de salário no BV?                                |
      | Portabilidade de salário                                                       |
      | O que preciso pra fazer a portabilidade de salário?                            |
      | Se eu saí do meu serviço preciso avisar o BV sobre a portabilidade de salário? |
      | Eu posso fazer portabilidade de salário?                                       |
      | Quem pode fazer a portabilidade de salário?                                    |
      | Quanto tempo leva pra portabilidade de salário ser aprovada?                   |

  @CT2-COMO-FUNCIONA-PORTABILIDADE-APP
  Scenario: Perguntar como funciona e como pedir a portabilidade (Já tentei isso)
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "O que é portabilidade de salário?"
    And enviar a mensagem
    And clicar no botao "Como pedir"
    And validar conteudo (ballon 6) "Para receber o seu salário na sua Conta BV, você precisa fazer a portabilidade. É só:"
    And validar conteudo (ballon 6) "Ir na tela inicial do app"
    And validar conteudo (ballon 6) "Tocar em Trazer meu salário → Quero trazer meu salário"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 8) "Entendi! Então, me conta melhor: o que aconteceu?"
    And validar conteudo (ballon 8) "Não consigo autorizar o celular"
    And validar conteudo (ballon 8) "Esqueci minha senha"
    And validar conteudo (ballon 8) "Não achei a instituição financeira na lista"
    And validar conteudo (ballon 8) "Não recebi o valor"
    And validar conteudo (ballon 8) "Recebi o valor errado"
    And validar conteudo (ballon 8) "Outro problema"

  @CT3-COMO-FUNCIONA-PORTABILIDADE-APP
  Scenario: Perguntar como funciona e como pedir a portabilidade (Como consultar meu pedido)
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "O que é portabilidade de salário?"
    And enviar a mensagem
    And clicar no botao "Como pedir"
    And validar conteudo (ballon 6) "Para receber o seu salário na sua Conta BV, você precisa fazer a portabilidade. É só:"
    And validar conteudo (ballon 6) "Ir na tela inicial do app"
    And validar conteudo (ballon 6) "Tocar em Trazer meu salário → Quero trazer meu salário"
    And clicar no botao "Como consultar meu pedido"
    Then validar conteudo (ballon 8) "Consultar o seu pedido de portabilidade de salário ou cancelamento é muito simples."
    And validar conteudo (ballon 8) "Ir na tela inicial do app"
    And validar conteudo (ballon 8) "Tocar em Trazer meu salário"

  @CT4-COMO-FUNCIONA-PORTABILIDADE-APP
  Scenario: Perguntar como funciona e com quem pedir a portabilidade
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "O que é portabilidade de salário?"
    And enviar a mensagem
    And clicar no botao "Quem pode pedir"
    Then validar conteudo (ballon 6) "Vou te contar quem pode fazer o pedido de portabilidade para receber o salário na Conta BV:"
    And validar conteudo (ballon 6) "- Todos os colaboradores de empresa públicas ou privadas que recebem seu pagamento em conta salário"
    And validar conteudo (ballon 6) "- Pessoas que recebem mais de um salário ou fonte de renda por mês, como aposentadoria privada, pensões e bônus militar - Nesses casos é preciso fazer um pedido de portabilidade para cada fonte de renda"
    And validar conteudo (ballon 6) "E quem não pode pedir a portabilidade de salário?"
    And validar conteudo (ballon 6) "- Quem recebe em uma conta corrente"
    And validar conteudo (ballon 6) "- Beneficiário do INSS, já que o pagamento é recebido sempre em conta corrente"

  @CT5-COMO-FUNCIONA-PORTABILIDADE-APP
  Scenario: Perguntar como funciona e como cancelar a portabilidade, até o transbordo
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "O que é portabilidade de salário?"
    And enviar a mensagem
    And clicar no botao "Como cancelar"
    Then validar conteudo (ballon 6) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"



