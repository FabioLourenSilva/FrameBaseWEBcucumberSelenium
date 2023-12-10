Feature: Saque FGTS app

  @CT1-FGTS-APP
  Scenario: Solicitar saque FGTS através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Você sabia que pode solicitar a antecipação do saldo do seu FGTS?"
    And validar conteudo (ballon 3) "Isso mesmo."
    And validar conteudo (ballon 3) "É uma nova modalidade de crédito para quem possui saldo em contas ativas ou inativas"
    And validar conteudo (ballon 3) "Quero mais informações"

    Examples:
      | intent                                  |
      | Saque fgts                              |
      | Saque-aniversário fgts                  |
      | Saque aniversário fgts                  |
      | Sacar fgts                              |
      | Pegar o fgts                            |
      | Opção de crédito com fgts               |
      | Como antecipar o fgts                   |
      | Como antecipar o saque do fgts          |
      | Quero antecipar o fgts                  |
      | Crédito fgts                            |
      | Pegar o valor do fgts                   |
      | Fazer saque-aniversário do fgts         |
      | Fazer o saque aniversário do fgts       |
      | Como fazer o saque do fgts              |
      | Como fazer o saque aniversário do fgts  |
      | Quero antecipar o meu fgts              |
      | Fgts                                    |
      | Saber sobre saque fgts                  |
      | Saber sobre saque aniversário do fgts   |
      | Saber sobre saque-aniversário do fgts   |
      | Mais informações sobre sacar o fgts     |
      | Mais informações sobre antecipar o fgts |
      | Informações sobre antecipar o fgts      |
      | Informações sobre sacar o fgts          |
      | Como sacar o fgts                       |

  @CT2-FGTS-APP
  Scenario: Solicitar saque FGTS e solicitar mais informações
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Saque FGTS"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Você sabia que pode solicitar a antecipação do saldo do seu FGTS?"
    And validar conteudo (ballon 3) "Isso mesmo."
    And validar conteudo (ballon 3) "É uma nova modalidade de crédito para quem possui saldo em contas ativas ou inativas"
    And clicar no botao "Quero mais informações"
    And validar conteudo (ballon 5) "Legal!"
    And validar conteudo (ballon 5) "Para saber se você tem direito a essa antecipação, siga o passo a passo:"
    And validar conteudo (ballon 5) "Aqui no app, na tela inicial, tocar em Menu;"
    And validar conteudo (ballon 5) "Depois, tocar em Créditos;"
    And validar conteudo (ballon 5) "Na opção Antecipação do Saque FGTS, tocar em Simular;"
    And validar conteudo (ballon 5) "Em seguida, tocar em Continuar contratação;"
    And validar conteudo (ballon 5) "Logo após, é só tocar na opção Ir para o Whatsapp, enviar a mensagem automática que vai aparecer na tela, e seguir todas as instruções"
    And validar conteudo (ballon 6) "Se eu puder te ajudar com outra coisa, me conta aqui."

