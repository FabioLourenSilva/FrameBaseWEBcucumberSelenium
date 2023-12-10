Feature: Onboarding no site

  Scenario: Solicitar abertura de conta (intenções)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "A Conta BV é grátis e 100% digital. Tudo pra deixar sua vida financeira mais leve e organizada."
    And validar conteudo (ballon 3) "Por enquanto, só quem recebeu um convite consegue abrir a conta pelo app banco BV, mas logo ela vai estar disponível pra todo mundo. 😃"
    And validar conteudo (ballon 4) "Para abrir sua conta, você deve acessar o app banco BV. Depois, é só:"
    And validar conteudo (ballon 4) "Selecionar Abrir minha Conta BV na tela inicial do app"
    And validar conteudo (ballon 4) "Permitir acesso à câmera do seu celular e tirar uma foto do seu rosto"
    And validar conteudo (ballon 4) "Tocar na seta azul no final da tela para continuar"
    And validar conteudo (ballon 4) "Tirar foto da sua CNH ou do seu RG"

    Examples:
      | intent                                   |
      | Quero abrir minha conta                  |
      | como faço pra abrir minha conta?         |
      | abertura de conta digital                |
#      | como abrir minha conta                   |
#      | como abrir uma conta BV?                 |
#      | quero abrir uma conta e não consigo      |
#      | preciso de ajuda pra abrir conta digital |
#      | como abro uma conta?                     |
#      | preciso de ajuda pra abrir minha conta   |
#      | como abrir minha conta?                  |
#      | preciso abrir minha conta                |
#      | como eu abro uma conta com vocês         |
#      | como faço abertura de conta?             |
#      | não to conseeguindo abrir conta          |

  Scenario: Problemas em abrir a conta (intenções)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Vamos tentar resolver isso juntos! Ao abrir sua conta, você encontrou um problema na hora de:"

    Examples:
      | intent                                |
      | não consigo abrir uma conta           |
#      | to tentando abrir uma conta com vocês |
#      | Não consegui abrir a conta            |
#      | Pq não consigo abrir conta?           |
#      | to tendo dificuldade em abrir conta   |
#      | estou com problemas pra abrir conta   |

  Scenario: Solicitar abertura de conta, dizer que esta com problemas na abertura (tirar foto do documento), fluxo completo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Quero abrir minha conta"
    And enviar a mensagem
    And clicar no botao "Tive um problema"
    And clicar no botao "Tirar foto do documento"
    Then validar conteudo (ballon 8) "A foto do seu documento é muito importante pra gente na hora de abrir sua Conta BV."
    And validar conteudo (ballon 8) "Como já fiz alguns cursos de fotografia, você está falando com a pessoa certa pra te dar umas dicas. Ops! Quer dizer, com o robô certo. 😅"
    And validar conteudo (ballon 9) "🔖 Se for usar seu RG, tire uma foto da frente e outra do verso. Já se escolher sua CNH (Carteira de Motorista), tire uma foto dela aberta, mostrando a frente e o verso ao mesmo tempo"
    And validar conteudo (ballon 9) "🏷️Tire o plástico ou a capinha do documento"
    And validar conteudo (ballon 9) "📷Não use o flash da câmera"
    And validar conteudo (ballon 9) "💡Escolha um lugar iluminado e confira se o celular não está fazendo sombra no documento"
    And validar conteudo (ballon 9) "🤳Deixe o documento sobre uma mesa e segure firme o celular pra foto não sair tremida ou sem foco"
    And validar conteudo (ballon 9) "🔎Antes de enviar a foto, confira se você consegue ler todas as informações ali"

  Scenario: Solicitar abertura de conta, dizer que esta com problemas na abertura (Tirar foto do rosto), fluxo completo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Quero abrir minha conta"
    And enviar a mensagem
    And clicar no botao "Tive um problema"
    And clicar no botao "Tirar foto do rosto"
    Then validar conteudo (ballon 8) "Pra gente confirmar sua identidade na hora de abrir a Conta BV, precisamos de uma foto sua."
    And validar conteudo (ballon 8) "Já fiz alguns cursos de fotografia e posso dar algumas dicas para uma boa foto. 📷"
    And validar conteudo (ballon 8) "🙂Tire uma foto sua sem óculos e acessórios, como bonés ou lenços que cobrem o rosto"
    And validar conteudo (ballon 8) "🤳Deixe a câmera do celular na altura do seu rosto pra gente poder te ver direitinho"
    And validar conteudo (ballon 8) "💡 Escolha um lugar bem iluminado"
    And validar conteudo (ballon 8) "Assim, sua foto tem tudo pra dar certo. E não falo isso só porque foram minhas dicas, tá bom? 😅"

  Scenario: Solicitar abertura de conta, dizer que esta com problemas na abertura (Autorizar o celular), fluxo completo até o transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Quero abrir minha conta"
    And enviar a mensagem
    And clicar no botao "Tive um problema"
    And clicar no botao "Autorizar o celular"
    Then validar conteudo (ballon 8) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Solicitar abertura de conta, dizer que esta com problemas na abertura (Cadastrar ou recuperar senha), fluxo completo até o transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Quero abrir minha conta"
    And enviar a mensagem
    And clicar no botao "Tive um problema"
    And clicar no botao "Cadastrar ou recuperar senha"
    Then validar conteudo (ballon 8) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"