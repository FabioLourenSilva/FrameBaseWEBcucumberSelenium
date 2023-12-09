Feature: Excluir (conta) no site

  Scenario: Solicitar ajuda através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Vai nos deixar agora? 🥺"
    And validar conteudo (ballon 3) "Vou te contar uma coisa: se robôs pudessem ter conta em banco, eu escolheria a do BV pra organizar minha vida financeira."
    And validar conteudo (ballon 3) "E isso não é porque eu trabalho aqui! É que além dos benefícios atuais, a conta digital terá novas opções em breve pra facilitar ainda mais o seu dia a dia."

    Examples:
      | intent                                    |
      | encerramento da conta bv                  |
      | enccerramento conta                       |
      | encerramento da conta                     |
#      | encerramento da conta digital             |
#      | encerramento da minha conta               |
#      | encerramento de conta corrente            |
#      | como encerro minha conta corrente?        |
#      | como encerro minha conta corrente         |
#      | como encerro minha conta                  |
#      | como encerro minha conta?                 |
#      | preciso encerrar minha conta              |
#      | quero fazer o encerramento da minha conta |
#      | quero terminar minha conta                |
#      | encerramento de conta                     |
#      | encerrar conta digital                    |
#      | encerrar minha conta                      |
#      | encerrar conta bv                         |
#      | quero encerrar conta digital              |
#      | quero encerrar conta bv                   |
#      | quero encerrar conta corrente             |
#      | cancelar minha conta                      |
#      | quero cancelar minha conta                |
#      | quero apagar minha conta                  |
#      | excluir minha conta                       |
#      | como excluir minha conta                  |
#      | como excluo minha conta                   |
#      | como cancelo a conta                      |
#      | como cancelo minha conta                  |
#      | como cancelo conta digital                |
#      | como cancelar minha conta                 |
#      | como cancelar a conta bv                  |

  Scenario: Solicitar encerramento/cancelamento, e optando por manter a conta
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "como cancelar a conta bv"
    And enviar a mensagem
    And clicar no botao "Manter minha conta"
    Then validar conteudo (ballon 6) "Que bom que você decidiu manter sua Conta BV. 😄"
    And validar conteudo (ballon 6) "Continue aproveitando todos os benefícios e conte com a gente sempre que precisar!"
    And validar conteudo (ballon 6) "Se quiser conversar sobre mais alguma coisa, é só me falar aqui."
