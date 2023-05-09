Feature: ChitChat 2 no site

  Scenario: ChitChat Elogios (Intenções)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Tem um pessoal trabalhando aqui comigo e me ensinando coisas novas todos os dias. Tenho um super orgulho deles. 😊"

    Examples:
      | intent                   |
      | Linda                    |
#      | Lindo                    |
#      | Maravilhoso              |
#      | Você é muito inteligente |
#      | Você é muito esperto     |
#      | Parabéns                 |
#      | Você é muito bom         |
