Feature: Chitchat no site

  Scenario: ChitChat Hobby (Intenções)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Hmm...eu adoro aprender sempre! Além de me atualizar sobre o universo financeiro, participo de projetos sociais, ações sustentáveis e acompanho o mundo dos esportes. ⚽🏀🎾 Falando nisso, já conhece o BV Esportes?"

    Examples:
      | intent                                     |
      | O que você gosta de fazer?                 |
#      | O que você faz quando não está trabalhando |
#      | O vc gosta de fazer                        |
#      | Vc faz o que no seu tempo livre?           |
#      | Qual é o seu Hobby?                        |
#      | O que você faz no seu tempo livre?         |