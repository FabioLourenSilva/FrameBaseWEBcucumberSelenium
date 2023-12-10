Feature: ChitChat 2 no site

  Scenario: ChitChat Pedido para sair e casar (Intenções)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Ah! Obrigado, mas estou dedicado ao meu trabalho, 24h por dia. 😅 Uma dica: tem alguns sites e apps bem legais pra você conhecer novas pessoas! Só não sei te dizer os nomes, porque nunca prestei atenção, já que eles não servem pra robôs. Procura na internet depois. 📲"

    Examples:
      | intent               |
      | Quer sair comigo?    |
#      | Quer casar comigo?   |
#      | Vamos sair?          |
#      | Aceita sair?         |
#      | Aceita casar comigo? |
#      | Aceita sair comigo?  |