Feature: Cópia de contrato APP

  @CT1-COPIA-CONTRATO-APP
  Scenario: Solicitar cópia de contrato através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Agora só me conta se você tem um contrato ou mais de um com o BV."

    Examples:
      | intent                                   |
      | Segunda via do contrato de financiamento |
      | copia do meu contrato                    |
      | informações sobre contrato               |
      | Como pego 2ª via do meu contrato         |
      | como pego segunda via do meu contrato    |
      | Quero meu contrato de financiamento      |
      | 2ª via do contrato                       |
      | preciso do meu contrato de financiamento |
      | peciso de informações de um contrato     |

  @CT2-COPIA-CONTRATO-APP
  Scenario: Solicitar cópia de contrato através das intenções (Desamb)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Isso é simples! 😉 Você gostaria de qual 2ª via?"
    And validar conteudo (ballon 3) "Fatura"
    And validar conteudo (ballon 3) "Cartão"
    And validar conteudo (ballon 3) "Boleto de financiamento"
    And validar conteudo (ballon 3) "Contrato do financiamento"

    Examples:
      | intent                                         |
      | Gostaria da cópia dos meus contratos           |
      | verificar contratos                            |
      | Gostaria de receber a cópia dos meus contratos |
      | cegunda via                                    |
      | segunda via                                    |

  @CT3-COPIA-CONTRATO-APP
  Scenario: Solicitar cópia de contrato (Apenas 1)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Cópia de contrato"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Agora só me conta se você tem um contrato ou mais de um com o BV."
    And clicar no botao "Apenas um"
    Then validar conteudo (ballon 5) "Você consegue pegar a cópia do seu contrato direto aqui no app."
    And validar conteudo (ballon 5) "Na página inicial do app, tocar em Meu Contrato"
    And validar conteudo (ballon 5) "Clicar em Acessar Contrato e rolar até o final da tela."
    And validar conteudo (ballon 5) "Então clicar no botão Acessar contrato."
    And validar conteudo (ballon 5) "Ali você vai confirmar seu email pra receber a cópia do contrato em sua caixa de entrada."
    And validar conteudo (ballon 6) "Se eu puder te ajudar com outra coisa, me conta aqui."

  @CT4-COPIA-CONTRATO-APP
  Scenario: Solicitar cópia de contrato (Mais de um)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Cópia de contrato"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Agora só me conta se você tem um contrato ou mais de um com o BV."
    And clicar no botao "Mais de um"
    Then validar conteudo (ballon 5) "Você consegue pegar a cópia do seu contrato direto aqui no app."
    And validar conteudo (ballon 5) "Na página inicial, é só selecionar o produto que você quer receber o contrato e seguir este passo a passo:"
    And validar conteudo (ballon 5) "Tocar em Meu Contrato."
    And validar conteudo (ballon 5) "Clicar em Acessar Contrato e rolar até o final da tela."
    And validar conteudo (ballon 5) "Então clicar no botão Acessar contrato."
    And validar conteudo (ballon 5) "Ali você vai confirmar seu email pra receber a cópia do contrato em sua caixa de entrada."
    And validar conteudo (ballon 6) "Se eu puder te ajudar com outra coisa, me conta aqui."

  @CT5-COPIA-CONTRATO-APP
  Scenario: Solicitar cópia de contrato (Contrato quitado)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Cópia de contrato"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Agora só me conta se você tem um contrato ou mais de um com o BV."
    And clicar no botao "Contrato quitado"
    Then validar conteudo (ballon 5) "Vamos lá: dá pra pegar a cópia do seu contrato quitado direto no app. Na página inicial aqui do app, você precisa:"
    And validar conteudo (ballon 5) "Tocar em Meu Contrato."
    And validar conteudo (ballon 5) "Clicar em Acessar Contrato e rolar até o final da tela."
    And validar conteudo (ballon 5) "Então clicar no botão Acessar contrato."
    And validar conteudo (ballon 5) "Ali você vai confirmar seu email pra receber a cópia do contrato em sua caixa de entrada."
    And validar conteudo (ballon 6) "Se eu puder te ajudar com outra coisa, me conta aqui."