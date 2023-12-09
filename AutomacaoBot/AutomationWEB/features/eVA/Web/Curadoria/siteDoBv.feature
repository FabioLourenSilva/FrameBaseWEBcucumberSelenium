Feature: Site do BV

  @CT1-SITE-BV-WEB
  Scenario: Perguntar qual é o site do BV através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Essa é fácil! 😃 Nosso site é:"
    And validar conteudo (ballon 3) "www.bv.com.br"
    And validar conteudo (ballon 3) "Vou deixar uma dica. Ao acessar o site, no menu Para você, que fica na parte superior da página, tem várias opções como:"
    And validar conteudo (ballon 3) "- Financiamentos"
    And validar conteudo (ballon 3) "- Cartões"
    And validar conteudo (ballon 3) "- Conta"
    And validar conteudo (ballon 3) "- Créditos"
    And validar conteudo (ballon 3) "- Seguros e Assistências"
    And validar conteudo (ballon 3) "- Private Bank"
    And validar conteudo (ballon 3) "Acessar o site"

    Examples:
      | intent                       |
      | Preciso do site do BV        |
      | Onde está o site do BV       |
      | Saite                        |
      | Site de vocês                |
      | Qual é o site do banco       |
      | O site de vocês              |
      | Saite do BV                  |
      | Qual é o site do BV          |
      | Site do BV                   |
      | Me conta qual é o site do BV |
