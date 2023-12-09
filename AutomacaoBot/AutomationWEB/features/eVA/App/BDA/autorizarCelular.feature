Feature: Autorizar celular no app

  Scenario: Solicitar autorização do celular através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para autorizar o seu celular e liberar todas as funções do app, você precisa:"
    And validar conteudo (ballon 3) "1. Ir na tela inicial"
    And validar conteudo (ballon 3) "2. Tocar em Perfil, que fica no ícone no canto superior direito"
    And validar conteudo (ballon 3) "3. Escolher Configurações 👉 Liberar todas as funções no menu App BV"
    And validar conteudo (ballon 3) "Pronto! É só seguir as instruções da tela a partir dali."


    Examples:
      | intent                                      |
      | preciso autorizar celular                   |
      | Autorizar celular                           |
      | não deu certo habilitar o celular           |
#      | autorizar aparelho                          |
#      | celular não habilita                        |
#      | liberação   de aparelho                     |
#      | quero autorizar celular                     |
#      | quero liberar funções                       |
#      | erro com autorização de celular             |
#      | autorizar cel                               |
#      | preciso habilitar celular                   |
#      | não dá certo autorizar o celular            |
#      | como autorizo meu celular                   |
#      | habilitar aparelho                          |
#      | erro ao autorizar celular                   |
#      | preciso autorizar meu cel                   |
#      | como faço pra habilitar meu celular         |
#      | preciso liberar funções do aplicativo       |
#      | preciso autorizar meu celular               |
#      | quero autorizar meu celular                 |
#      | tive um problema ao autorizar o celular     |
#      | preciso liberar todas as funções do meu app |
#      | habilitar celular                           |
#      | quero autorizar                             |
#      | como habilito meu celular                   |
#      | não consigo autorizar o celular             |
#      | como libero todas as funções do app         |
#      | como libero todas as funções do meu celular |

  Scenario: Solicitar autorização do celular, problemas em autorizar (Meu celular está errado) até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "preciso autorizar celular"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Para autorizar o seu celular e liberar todas as funções do app, você precisa:"
    And clicar no botao "Já tentei isso"
    And validar conteudo (ballon 5) "Entendi que você tentou autorizar o seu celular para liberar todas as funções do app e não deu certo."
    And clicar no botao "Meu celular está errado"
    Then validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Solicitar autorização do celular, problemas em autorizar (O código não chegou) até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "preciso autorizar celular"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Para autorizar o seu celular e liberar todas as funções do app, você precisa:"
    And clicar no botao "Já tentei isso"
    And validar conteudo (ballon 5) "Entendi que você tentou autorizar o seu celular para liberar todas as funções do app e não deu certo."
    And clicar no botao "O código não chegou"
    Then validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Solicitar autorização do celular, problemas em autorizar (Esqueci minha senha) até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "preciso autorizar celular"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Para autorizar o seu celular e liberar todas as funções do app, você precisa:"
    And clicar no botao "Já tentei isso"
    And validar conteudo (ballon 5) "Entendi que você tentou autorizar o seu celular para liberar todas as funções do app e não deu certo."
    And clicar no botao "Esqueci minha senha"
    Then validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Solicitar autorização do celular, problemas em autorizar (Outro problema) até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "preciso autorizar celular"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Para autorizar o seu celular e liberar todas as funções do app, você precisa:"
    And clicar no botao "Já tentei isso"
    And validar conteudo (ballon 5) "Entendi que você tentou autorizar o seu celular para liberar todas as funções do app e não deu certo."
    And clicar no botao "Outro problema"
    Then validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"


#    Fluxo: Como funciona (Autorizar celular)
  Scenario: Perguntar como funciona a autorização do celular através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para acessar todas as funções do app com total segurança, você"
    And validar conteudo (ballon 3) "precisa autorizar o seu celular. 📲"
    And validar conteudo (ballon 3) "Ah! Também é importante dizer que um celular só pode estar autorizado para uma pessoa."

    Examples:
      | intent                              |
      | Por que preciso autorizar o celular |
#      | pq preciso autorizar o celular      |
#      | o que é autorização de cel          |

  Scenario: Perguntar como funciona a autorização do celular
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Por que preciso autorizar o celular"
    And enviar a mensagem
    And clicar no botao "Como autorizar celular"
    Then validar conteudo (ballon 3) "Para acessar todas as funções do app com total segurança, você precisa autorizar o seu celular. 📲"



