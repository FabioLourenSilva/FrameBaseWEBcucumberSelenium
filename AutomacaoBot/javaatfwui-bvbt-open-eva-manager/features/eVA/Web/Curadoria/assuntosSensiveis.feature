Feature: assuntos sensíveis no web

  @CT1-ASSUNTOS-SENSIVEIS-WEB
  Scenario: Assuntos sensiveis (intenções)
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "O BV respeita esse momento. 💙 Se quiser, posso chamar uma pessoa do nosso time para falar com você."

    Examples:
      | intent                                                                                                                           |
      | o titular desse contrato faleceu. como acionar o seguro...                                                                       |
      | falecimento do titular                                                                                                           |
      | proprietário faleceu                                                                                                             |
      | proprietário morreu                                                                                                              |
      | proprietária faleceu                                                                                                             |
      | dona morreu                                                                                                                      |
      | dona faleceu                                                                                                                     |
      | Sinistro por morte                                                                                                               |
      | Sinistro por morte natural                                                                                                       |
      | O meu pai faleceu, mesmo assim continuo vindo a fatura                                                                           |
      | Minha mãe faleceu                                                                                                                |
      | Como que faz quando o proprietário do veículo faleceu?                                                                           |
      | Morreu                                                                                                                           |
      | Faleceu                                                                                                                          |
      | Morto                                                                                                                            |
      | Morta                                                                                                                            |
      | solicitar o seguro de minhas parcelas, estou desempregado e sem condições                                                        |
      | Estou desempregado                                                                                                               |
      | Desemprego                                                                                                                       |
      | Estou desempregada                                                                                                               |
      | Perdi o emprego                                                                                                                  |
      | Perdi o trabalho                                                                                                                 |
      | por causa da covid estou pagando atrasado                                                                                        |
      | prorrogação de parcelas atrasadas covid 19                                                                                       |
      | Fiquei doente                                                                                                                    |
      | Tive um acidente com o carro e ele deu pt. Ainda tenho parcelas para pagar. Mais quero negociar                                  |
      | Meu carro deu pt                                                                                                                 |
      | Sofri um acidente                                                                                                                |
      | sinistro com meu carro                                                                                                           |
      | Boa tarde, tive um acidente com meu carro a seguradora tá mim pedindo a quitação com os dados dos veículos com o prazo de 7 dias |
      | Acidente                                                                                                                         |


  @CT2-ASSUNTOS-SENSIVEIS-WEB
  Scenario: Assuntos sensiveis, até transbordo
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "Acidente"
    And enviar a mensagem
    And clicar no botao "Falar com uma pessoa"
    Then validar conteudo (ballon 5) "Pra começar, o assunto que você quer falar está relacionado a qual serviço?"