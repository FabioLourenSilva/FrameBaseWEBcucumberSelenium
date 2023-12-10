Feature: Portabilidade de salário (App)

  @CT1-PORTABILIDADE-DE-SALARIO-APP
  Scenario: Solicitar portabilidade através das intenções
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Me conta só mais uma coisinha, você quer fazer uma portabilidade de:"

    Examples:
      | intent                        |
      | Fazer portabilidade           |
      | Quero fazer uma portabilidade |
      | Portabilidade                 |

#    diferente no web
  @CT2-PORTABILIDADE-DE-SALARIO-APP
  Scenario: Solicitar portabilidade (Chave Pix)
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "Fazer portabilidade"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Me conta só mais uma coisinha, você quer fazer uma portabilidade de:"
    And clicar no botao "Chave Pix"
    Then validar conteudo (ballon 5) "Cada e-mail, celular ou CPF só pode estar cadastrado em uma única conta bancária."
    And validar conteudo (ballon 5) "Se você tem cadastro em outra instituição e agora quer ter sua chave Pix com a gente, é só pedir a portabilidade aqui pelo app."
    And validar conteudo (ballon 5) "Ir na tela inicial e tocar na opção Pix"
    And validar conteudo (ballon 5) "Selecionar Minhas chaves → Cadastrar nova chave"
    And validar conteudo (ballon 5) "Escolher a chave que irá trazer para o BV (CPF, e-mail ou celular)"
    And validar conteudo (ballon 5) "Já tentei isso"

#    diferente no web
  @CT3-PORTABILIDADE-DE-SALARIO-APP
  Scenario: Solicitar portabilidade (Salário)
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "Fazer portabilidade"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Me conta só mais uma coisinha, você quer fazer uma portabilidade de:"
    And clicar no botao "Salário"
    Then validar conteudo (ballon 5) "Para receber o seu salário na sua Conta BV, você precisa fazer a portabilidade. Uma vez feita você não precisa pedir mais, a menos que mude de emprego."
    Then validar conteudo (ballon 5) "Tenha em mãos o seu demonstrativo de pagamento ou informe de rendimentos. Depois, é só:"
    Then validar conteudo (ballon 5) "Ir na tela inicial do app"
    Then validar conteudo (ballon 5) "Tocar em Trazer meu salário → Quero trazer meu salário"
    Then validar conteudo (ballon 5) "Já tentei isso"
    Then validar conteudo (ballon 5) "Como consultar meu pedido"

  @CT4-PORTABILIDADE-DE-SALARIO-APP
  Scenario: Solicitar portabilidade so salário através das intenções
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para receber o seu salário na sua Conta BV, você precisa fazer a portabilidade. Uma vez feita você não precisa pedir mais, a menos que mude de emprego."

    Examples:
      | intent                                                    |
      | Quero trazer meu salário pro BV                           |
      | Quero receber meu salário aqui                            |
      | Quero fazer portabilidade de salário                      |
      | Receber meu salário no BV                                 |
      | Fazer portabilidade de salário                            |
      | Preciso trazer meu salário pra cá                         |
      | Não estou conseguindo trazer meu salário pro BV           |
      | Não estou conseguindo fazer portabilidade de salário      |
      | Fiz a portabilidade de salário mas ainda não foi aprovada |
      | Como pedir portabilidade de salário                       |

  @CT5-PORTABILIDADE-DE-SALARIO-APP
  Scenario: Solicitar portabilidade do salário (Não consigo autorizar celular)
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "Quero trazer meu salário pro BV"
    And enviar a mensagem
    And clicar no botao "Já tentei isso"
    And validar conteudo (ballon 5) "Entendi! Então, me conta melhor: o que aconteceu?"
    And clicar no botao "Não consigo autorizar o celular"
    Then validar conteudo (ballon 7) "Para autorizar o seu celular e liberar todas as funções do app, você precisa:"
    And validar conteudo (ballon 7) "Ir na tela inicial"
    And validar conteudo (ballon 7) "Tocar em Perfil, que fica no"
    And validar conteudo (ballon 7) "Escolher Configurações"
    And validar conteudo (ballon 7) "Já tentei isso"

  @CT6-PORTABILIDADE-DE-SALARIO-APP
  Scenario: Solicitar portabilidade do salário (Esqueci a minha senha)
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "Quero trazer meu salário pro BV"
    And enviar a mensagem
    And clicar no botao "Já tentei isso"
    And validar conteudo (ballon 5) "Entendi! Então, me conta melhor: o que aconteceu?"
    And clicar no botao "Esqueci minha senha"
    Then validar conteudo (ballon 7) "Já vamos resolver isso! Vou enviar a senha do seu cartão por mensagem SMS"

  @CT7-PORTABILIDADE-DE-SALARIO-APP
  Scenario: Solicitar portabilidade do salário (Não achei a instituição financeira na lista)
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "Quero trazer meu salário pro BV"
    And enviar a mensagem
    And clicar no botao "Já tentei isso"
    And validar conteudo (ballon 5) "Entendi! Então, me conta melhor: o que aconteceu?"
    And clicar no botao "Não achei a instituição financeira na lista"
    Then validar conteudo (ballon 7) "Provavelmente, você colocou alguma instituição pela qual recebe o seu salário hoje, mas que não é a mesma da conta salário aberta pelo seu empregador."
    And validar conteudo (ballon 7) "Confirme com o seu empregador ou no seu holerite o nome da instituição financeira original e tente fazer o pedido de portabilidade de novo."

  @CT8-PORTABILIDADE-DE-SALARIO-APP
  Scenario: Solicitar portabilidade do salário (Não recebi o valor - 10 dias úteis ou mais)
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "Quero trazer meu salário pro BV"
    And enviar a mensagem
    And clicar no botao "Já tentei isso"
    And validar conteudo (ballon 5) "Entendi! Então, me conta melhor: o que aconteceu?"
    And clicar no botao "Não recebi o valor"
    And validar conteudo (ballon 7) "Então me diz: já tem 10 dias úteis ou mais que você fez a portabilidade ou tem menos de 10 dias úteis?"
    And clicar no botao "10 dias úteis ou mais"
    Then validar conteudo (ballon 9) "Entendi! Se a portabilidade foi aprovada perto do dia do seu pagamento, é possível que tenha caído na conta antiga."
    And validar conteudo (ballon 9) "Nesse caso, procure seu empregador ou a instituição financeira por onde você já recebia o salário."

#    diferente na web
  @CT9-PORTABILIDADE-DE-SALARIO-APP
  Scenario: Solicitar portabilidade do salário (Não recebi o valor - Menos de 10 dias úteis)
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "Quero trazer meu salário pro BV"
    And enviar a mensagem
    And clicar no botao "Já tentei isso"
    And validar conteudo (ballon 5) "Entendi! Então, me conta melhor: o que aconteceu?"
    And clicar no botao "Não recebi o valor"
    And validar conteudo (ballon 7) "Então me diz: já tem 10 dias úteis ou mais que você fez a portabilidade ou tem menos de 10 dias úteis?"
    And clicar no botao "Menos de 10 dias úteis"
    Then validar conteudo (ballon 9) "Enquanto isso, você pode consultar a situação do seu pedido de portabilidade quando quiser aqui pelo app. É só:"
    And validar conteudo (ballon 9) "Ir na tela inicial"
    And validar conteudo (ballon 9) "Tocar em Trazer meu salário"

  @CT10-PORTABILIDADE-DE-SALARIO-APP
  Scenario: Solicitar portabilidade do salário (Recebi o valor errado)
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "Quero trazer meu salário pro BV"
    And enviar a mensagem
    And clicar no botao "Já tentei isso"
    And validar conteudo (ballon 5) "Entendi! Então, me conta melhor: o que aconteceu?"
    And clicar no botao "Recebi o valor errado"
    Then validar conteudo (ballon 7) "Caso o valor esteja diferente do esperado você pode verificar o holerite ou falar com o seu empregador."
    And validar conteudo (ballon 7) "Ele é o responsável pelo seu pagamento e pode te orientar da melhor forma sobre o que aconteceu."

  @CT11-PORTABILIDADE-DE-SALARIO-APP
  Scenario: Solicitar portabilidade do salário (Recebi o valor errado), até o transbordo
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "Quero trazer meu salário pro BV"
    And enviar a mensagem
    And clicar no botao "Já tentei isso"
    And validar conteudo (ballon 5) "Entendi! Então, me conta melhor: o que aconteceu?"
    And clicar no botao "Outro problema"
    Then validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

#    diferente na web
  @CT12-PORTABILIDADE-DE-SALARIO-APP
  Scenario: Solicitar portabilidade do salário (Como consultar meu pedido)
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "Quero trazer meu salário pro BV"
    And enviar a mensagem
    And clicar no botao "Como consultar meu pedido"
    Then validar conteudo (ballon 5) "Consultar o seu pedido de portabilidade de salário ou cancelamento é muito simples."
    And validar conteudo (ballon 5) "Ir na tela inicial do app"
    And validar conteudo (ballon 5) "Tocar em Trazer meu salário"



