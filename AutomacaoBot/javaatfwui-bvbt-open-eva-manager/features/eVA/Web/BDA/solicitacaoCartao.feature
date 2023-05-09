Feature: Solicitar cartão de crédito no site

  Scenario: Solicitar cartão de crédito através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Que bom que pensou no BV na hora de escolher um cartão de crédito. 😃"
    And validar conteudo (ballon 3) "Pra pedir, você precisa acessar a área de Cartões aqui no site e escolher o que mais combina com você."
    And validar conteudo (ballon 3) "Depois, é só clicar em Pedir agora e preencher os dados que vão aparecer na sua tela."
    And validar conteudo (ballon 3) "A resposta é enviada por e-mail em até 2 dias e você também pode acompanhar o andamento do pedido pelo nosso site."

    Examples:
      | intent                                        |
      | quero solicitar um cartao pra mim             |
      | como faço para conseguir um cartao de credito |
      | gostaria de solicitar um cartao de credito    |
#      | como faço para solicitar um cartao            |
#      | quero fazer o cartao de credito               |
#      | solicitar um cartao de credito BV             |
#      | quero um cartao de credito                    |
#      | solicitação de cartão                         |
#      | Eu gostaria de um cartão de crédito           |
#      | quero pedir um cartão                         |
#      | pedir meu cartão                              |
#      | pedir meu cartão                              |
#      | quero cartão de crédito bv                    |
#      | Quero pedir meu cartão de crédito             |
#      | quero solicitar meu cartao de crédito bv      |
#      | queria um cartão                              |
#      | eu preciso pedir um cartao internacional      |
#      | quero fazer um cartao de credito              |
#      | gostaria de pedir um cartão novo              |
#      | quero solicitar um cartão                     |