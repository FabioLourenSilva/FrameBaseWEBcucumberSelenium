Feature: ChitChat 2 no app

  Scenario: ChitChat Elogios (Intenções)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Se você gostou da nossa conversa, que tal contar pra todo mundo na loja de aplicativos?"

    Examples:
      | intent                   |
      | Linda                    |
      | Lindo                    |
      | Maravilhoso              |
#      | Você é muito inteligente |
#      | Você é muito esperto     |
#      | Parabéns                 |
#      | Você é muito bom         |
