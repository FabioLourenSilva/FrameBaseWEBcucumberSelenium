Feature: Informe de rendimentos no site

  Scenario: Solicitar informe de rendimentos através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Certo, vamos falar sobre informes do Imposto de Renda. 🦁"
    And validar conteudo (ballon 3) "Só me conta: de qual serviço BV você quer o informe?"

    Examples:
      | intent                                 |
      | Informe de rendimentos                 |
      | Quero meu informe de rendimentos       |
      | Preciso do meu informe de rendimentos  |
#      | Quero meu informe                      |
#      | Não consigo meu informe de rendimentos |
#      | Não recebi meu informe de rendimentos  |
#      | Ajuda para informe de rendimentos      |
#      | Não consigo meu IR                     |
#      | Quero meu IR                           |
#      | Não recebi o meu IR                    |
#      | Ajuda para IR                          |
#      | preciso do informe de rendimentos      |

  Scenario: Solicitar informe de rendimentos (Conta digital)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Informe de rendimentos"
    And enviar a mensagem
    And clicar no botao "Conta digital"
    Then validar conteudo (ballon 5) "Se você tem a Conta BV e ainda não recebeu seu Informe de Rendimentos por e-mail, uma pessoa do nosso time pode te ajudar. 😉"


  Scenario: Solicitar informe de rendimentos (Financiamento de veículos)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Informe de rendimentos"
    And enviar a mensagem
    And clicar no botao "Financiamento de veículos"
    And validar conteudo (ballon 5) "Se você tem um financiamento, pode pegar seu informe para o Imposto de Renda aqui no site."
    And validar conteudo (ballon 5) "Acessar a Minha BV com CPF e senha"
    And validar conteudo (ballon 5) "Selecionar Financiamento no canto superior esquerdo"
    And validar conteudo (ballon 5) "Ir em Extrato Anual Consolidado - Informe de Imposto de Renda"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 5) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"

