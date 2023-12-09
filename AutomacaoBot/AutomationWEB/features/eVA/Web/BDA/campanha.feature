Feature: Campanha site

  Scenario: Solicitar campanha através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Se você recebeu um convite com a oferta especial para abrir sua Conta BV, receberá o valor combinado em até 30 dias depois da abertura."
    And validar conteudo (ballon 3) "Mas, se esse tempo passou e você ainda não recebeu o saldo em conta, posso te passar o número da nossa central para você falar com uma pessoa do time BV. 😃"

    Examples:
      | intent    |
      | Bonus 100 |
      | Bonus 50                                                                                                          |
      | Quero receber os R$ 100 |
      | Quero receber os R$ 50  |
#      | Promoção de 100 reais                                                                                             |
#      | Promoção de 50 reais                                                                                              |
#      | Quero meu bônus 100                                                                                               |
#      | Quero meu bônus 50                                                                                                |
#      | Quero saber sobre o saldo grátis na conta                                                                         |
#      | Cadê os meus R$100                                                                                                |
#      | Cadê os meus R$50                                                                                                 |
#      | Promoção R$ 100                                                                                                   |
#      | Abri a conta e quero R$ 100                                                                                       |
#      | Abri a conta e quero R$50                                                                                         |
#      | Conta corrente ganha R$ 50                                                                                        |
#      | 100 reais                                                                                                         |
#      | 50 reais                                                                                                          |
#      | 100 de brinde                                                                                                     |
#      | 50 de brinde                                                                                                      |
#      | abra sua conta ganhe 100                                                                                          |
#      | abra sua conta ganha 50                                                                                           |
#      | bônus                                                                                                             |
#      | premiação                                                                                                         |
#      | não recebi abertura conta digital                                                                                 |
#      | crédito abertura de conta                                                                                         |
#      | cade 100 pra iniciar a conta                                                                                      |
#      | Bom dia ,abri conta falou que teria 100,00 de brinde (100 de brinde, 50 de brinde)                                |
#      | abra sua conta ganhe 100,00 use do jeito que quiser assim fiz (abra sua conta ganhe 100, abra sua conta ganha 50) |
#      | 50 reais da abertura da conta                                                                                     |
#      | abri a conta BV e não ganhei os R$100,00                                                                          |
#      | bônus                                                                                                             |
#      | quando e depositado os 100 que ganhei pra abrir a conta                                                           |
#      | nao recebi os 100.00 de incentivo pela abertura da conta                                                          |
#      | o valor de $100 ficou de entrar na conta em 30 dias até agora nada                                                |
#      | valor de $100                                                                                                     |
#      | queria saber sobre os 100 reais que eu ia ganhar abrindo a conta                                                  |
#      | oi bom dia , e minha premiação de 100 reais que me prometeram ?                                                   |
#      | Premiação                                                                                                         |
#      | bônus de 100,00                                                                                                   |
#      | Não recebi os 100,00 com a abertura da conta digital (Não recebi abertura conta digital)                          |
#      | Queria receber os 100,00 da conta digital                                                                         |
#      | quando cai os 100 reais pra usar como quiser ??                                                                   |
#      | crédito de 100,00 pela abertura da conta (crédito abertura de conta)                                              |
#      | Fiz a abertura da conta com promessa de 100 reais na conta, onde está?                                            |
#      | 100 na conta                                                                                                      |

  Scenario: Solicitar campanha e solicitar falar com um operador
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "100 na conta"
    And enviar a mensagem
    And clicar no botao "Falar com uma pessoa"
    Then validar conteudo (ballon 5) "Por favor, espere um pouquinho que uma pessoa do nosso time já vai falar com você. 😃"

  
  

