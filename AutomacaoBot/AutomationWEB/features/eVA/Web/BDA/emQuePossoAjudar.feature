Feature: Solicitação de ajuda no site

  Scenario: Solicitar ajuda através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Estou aqui pra te ajudar. 💙 O que você precisa?"

    Examples:
      | intent                  |
      | Preciso de ajuda        |
      | Quero ajuda             |
      | Me ajuda                |
#      | Estou com problemas     |
#      | Preciso de uma ajudinha |
#      | Preciso de auxilio      |
#      | Quero ajuda por favor   |
#      | Me tira uma dúvida      |
#      | Estou com uma dúvida    |

