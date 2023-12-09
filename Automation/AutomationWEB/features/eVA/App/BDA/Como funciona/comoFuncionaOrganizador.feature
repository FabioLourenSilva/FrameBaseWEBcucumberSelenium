Feature: Como funciona (Organizador financeiro) no app

  Scenario: Perguntar como funciona o organizador através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Com o Organizador Financeiro BV, você visualiza, agenda e paga suas contas em um só lugar, sejam elas boletos digitais, parcelas do seu financiamento de veículos e faturas dos seus Cartões BV."

    Examples:
      | intent                                                 |
      | O que é um organizador financeiro                      |
      | como funciona o organizador?                           |
      | tenho algumas duvidas sobre o organizador              |
      | quero entender como funciona um organizador financeiro |
      | quero saber como organizar minhas contas               |
      | Pra que serve o organizador?                           |
      | Como uso o organizador financeiro?                     |
      | como posso organizar minhas contas de forma fácil?     |
      | O que é Organizador Financeiro                         |
      | controle financeiro                                    |
      | Quero organizar meus boletos                           |


  Scenario: Perguntar o que é boleto virtual através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "O Boleto Digital (DDA) busca e centraliza todos os boletos digitais cadastrados no seu CPF, mesmo os de outras instituições, em um único lugar: o Organizador Financeiro BV."
    Then validar conteudo (ballon 3) "Lá você acompanha seus gastos mensais pra se programar melhor e ainda pode pagar aqui direto pelo app. 😉"

    Examples:
      | intent                                      |
      | O que é o DDA?                              |
      | o que é um boleto digital?                  |
      | pra que serve o organizador?                |
      | pra que serve o boleto digital?             |
      | como funciona o boleto digital?             |
      | queros aber mais sobre o boleto digital DDA |
      | Como funciona o boleto digital dda          |
      | o que é um boleto virtual?                  |
      | O que é um boleto digital?                  |
      | boleto digital                              |
      | boleto virtual                              |
      | DDA                                         |



  Scenario: Perguntar como funciona o organizador de beneficios
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "O que é um organizador financeiro?"
    And enviar a mensagem
    And clicar no botao "Benefícios"
    Then validar conteudo (ballon 5) "Antes de mais nada, queria dizer que o Organizador Financeiro BV tem benefícios que eu também queria aproveitar, mas robôs não têm boletos pra pagar."
    And validar conteudo (ballon 5) "Organização da sua vida financeira sem pagar nada a mais por isso"
    And validar conteudo (ballon 5) "Suas contas centralizadas em um único aplicativo"
    And validar conteudo (ballon 5) "Pagamento rápido, de forma 100% digital"
    And validar conteudo (ballon 5) "Avisos de quando suas contas estiverem perto de vencer"


  Scenario: Perguntar como funciona o organizador de boleto digital DDA, até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "O que é um organizador financeiro?"
    And enviar a mensagem
    And clicar no botao "Boleto Digital DDA"
    And validar conteudo (ballon 5) "Para ativar o Boleto Digital (DDA), você precisa:"
    And validar conteudo (ballon 5) "Acessar a tela inicial do app"
    And validar conteudo (ballon 5) "Ir em Organizar contas 👉 Ativar Boleto Digital (DDA)"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Perguntar como funciona o organizador de organizar contas (Contas a pagar), até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "O que é um organizador financeiro?"
    And enviar a mensagem
    And clicar no botao "Organizar contas"
    And validar conteudo (ballon 5) "Você pode gerenciar suas contas no Organizador de forma simples e rápida. 😉 Sobre o que você quer saber?"
    And clicar no botao "Contas a pagar"
    Then validar conteudo (ballon 7) "Em Contas a pagar, você pode conferir quais boletos ainda tem para pagar e a data de vencimento de cada um."
    And validar conteudo (ballon 7) "Acessar tela inicial do app"
    And validar conteudo (ballon 7) "Ir em Organizar contas 👉Contas a pagar"
    And validar conteudo (ballon 7) "Selecionar a conta"
    And validar conteudo (ballon 7) "Tocar em Ver opções 👉Pagar agora"


  Scenario: Perguntar como funciona o organizador de organizar contas (Contas pagas), até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "O que é um organizador financeiro?"
    And enviar a mensagem
    And clicar no botao "Organizar contas"
    And validar conteudo (ballon 5) "Você pode gerenciar suas contas no Organizador de forma simples e rápida. 😉 Sobre o que você quer saber?"
    And clicar no botao "Contas pagas"
    And validar conteudo (ballon 7) "Em Contas pagas, você pode confirmar o que já foi pago e ainda saber o valor total que foi gasto. Para ter uma ideia mês a mês, é só selecionar a opção Filtrar. Quer um comprovante? É muito fácil! Mas eu te conto direitinho apenas se você precisar. 😉"
    And clicar no botao "Saber sobre comprovantes"
    And validar conteudo (ballon 9) "Para ver os comprovantes das contas pagas pelo Organizador financeiro, é só:"
    And validar conteudo (ballon 9) "Acessar tela inicial do app banco BV"
    And validar conteudo (ballon 9) "Ir em Organizar"
    And validar conteudo (ballon 9) "Tocar em Ver todos comprovantes"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 11) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Perguntar como funciona o organizador de organizar contas (Remover conta), até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "O que é um organizador financeiro?"
    And enviar a mensagem
    And clicar no botao "Organizar contas"
    And validar conteudo (ballon 5) "Você pode gerenciar suas contas no Organizador de forma simples e rápida. 😉 Sobre o que você quer saber?"
    And clicar no botao "Remover conta"
    And validar conteudo (ballon 7) "Para remover uma conta do Organizador Financeiro BV, você precisa:"
    And validar conteudo (ballon 7) "Acessar tela inicial do app"
    And validar conteudo (ballon 7) "Ir em Organizar contas 👉Contas a pagar"
    And validar conteudo (ballon 7) "Selecionar a conta"
    And validar conteudo (ballon 7) "Tocar em Ver opções 👉Remover essa conta"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 9) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Perguntar como funciona o organizador de organizar contas (Desativar DDA), até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "O que é um organizador financeiro?"
    And enviar a mensagem
    And clicar no botao "Organizar contas"
    And validar conteudo (ballon 5) "Você pode gerenciar suas contas no Organizador de forma simples e rápida. 😉 Sobre o que você quer saber?"
    And clicar no botao "Desativar DDA"
    And validar conteudo (ballon 7) "Para desativar o Boleto Digital (DDA), você precisa:"
    And validar conteudo (ballon 7) "Acessar a tela inicial do app"
    And validar conteudo (ballon 7) "Ir em Organizar contas"
    And validar conteudo (ballon 7) "Selecionar Boleto Digital (DDA) está ativo"
    And validar conteudo (ballon 7) "Tocar em Desativar Boleto Digital (DDA)"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 9) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

