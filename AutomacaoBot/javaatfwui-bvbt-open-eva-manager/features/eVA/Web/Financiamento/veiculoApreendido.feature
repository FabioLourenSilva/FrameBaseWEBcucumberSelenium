Feature: Veículo apreendido (WEB)

  @CT1-VEICULO-APREENDIDO-WEB
  Scenario: Perguntar sobre o veículo apreendido através das intenções
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Quando há parcelas em aberto há mais de 71 dias corridos, o BV encaminha a renegociação da sua dívida para uma assessoria jurídica."
    And validar conteudo (ballon 3) "É ela quem passa a fazer as cobranças e, em último caso, solicita a busca e apreensão do veículo."
    And validar conteudo (ballon 4) "Se o veículo foi apreendido há menos de 7 dias corridos, você pode recuperá-lo depois de negociar a dívida diretamente com a assessoria."
    And validar conteudo (ballon 4) "Depois desse prazo, o veículo vai a leilão para quitação da dívida do financiamento."
    And validar conteudo (ballon 5) "Posso te passar pra alguém do time BV, pra verificar o contato da assessoria que está com seu contrato agora. Que tal?"

    Examples:
      | intent                                    |
      | Meu carro foi apreendido e agora?         |
      | Meu veículo foi apreendido                |
      | Minha moto foi apreendida                 |
      | Meu caminhão foi apreendido               |
      | O banco levou meu carro                   |
      | O banco levou minha moto                  |
      | O banco levou meu caminhão                |
      | Levaram meu carro pro pátio               |
      | Levaram meu caminhão pro pátio            |
      | Levaram minha moto pro pátio              |
      | Vocês pegaram meu carro de volta e agora? |

  @CT2-VEICULO-APREENDIDO-WEB
  Scenario: Perguntar sobre o veículo apreendido, até o transbordo
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "Meu carro foi apreendido e agora?"
    And enviar a mensagem
    And clicar no botao "Falar com uma pessoa"
    Then validar conteudo (ballon 7) "Antes de chamar uma pessoa do time BV aqui, preciso de duas informações"