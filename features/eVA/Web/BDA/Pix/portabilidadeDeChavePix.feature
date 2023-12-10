Feature: Portabilidade de chave Pix site

  Scenario: Solicitar portabilidade da chave pix através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Cada e-mail, celular ou CPF só pode estar cadastrado em uma única conta bancária."
    And validar conteudo (ballon 3) "Se você tem cadastro em outra instituição e agora quer ter sua chave Pix com a gente, é só pedir a sua portabilidade pelo app banco BV. Lá, é só você:"
    And validar conteudo (ballon 3) "Ir na tela inicial e tocar na opção Pix"
    And validar conteudo (ballon 3) "Selecionar Minhas chaves 👉 Portabilidade de chave 👉Solicitar portabilidade"
    And validar conteudo (ballon 3) "Escolher a chave que irá trazer para o BV (CPF, e-mail ou celular)"
    And validar conteudo (ballon 3) "Pronto! Depois disso, você deve acessar o app ou site da instituição financeira em que a chave já está cadastrada e confirmar a mudança para a Conta BV."

    Examples:
      | intent                              |
      | Quero trazer minha chave pix pra cá |
#      | como faço uma portabilidade de chave?              |
#      | Preciso fazer a portabilidade de uma chave         |
#      | Ajuda para fazer a portabilidade de chave pix      |
#      | Como posso fazer a portablidade da minha chave pix |
#      | Quero trazer uma chave pix                         |

  Scenario: Solicitar portabilidade e optar por chave pix
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "trazer pro bv"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Me conta só mais uma coisinha, você quer fazer a portabilidade de:"
    And clicar no botao "Chave Pix"
    Then validar conteudo (ballon 5) "Cada e-mail, celular ou CPF só pode estar cadastrado em uma única conta bancária."

  Scenario: Solicitar portabilidade de chave pix, até o transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "quero a portabilidade da minha chave pix"
    And enviar a mensagem
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 5) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"


