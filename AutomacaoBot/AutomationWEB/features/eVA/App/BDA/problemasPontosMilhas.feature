Feature: Problemas (Pontos milhas) no app

  Scenario: Informar sobre problemas com milhas através das intenções intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Depois de pedir a transferência por aqui, os pontos aparecem, geralmente, em até 10 dias úteis no seu programa de milhagem."
    And validar conteudo (ballon 3) "Se esse prazo já passou, uma pessoa do time BV pode te ajudar."

    Examples:
      | intent                                               |
      | estou com problemas ao resgatar meus pontos          |
      | tentei resgatar meus pontos e nao consegui           |
      | nao estou conseguindo trocar os pontos do meu cartao |
      | nao consegui trocar meus pontos                      |
      | nao consigo ver meus pontos                          |
      | Nao consigo resgatar minhas milhas                   |
      | Cade meus pontos                                     |
      | Nao consigo resgatar meus pontos                     |
      | tentei trocar os pontos do cartao e nao deu certo    |
      | meus pontos sumiram                                  |
      | Minhas milhas nao cairam                             |
