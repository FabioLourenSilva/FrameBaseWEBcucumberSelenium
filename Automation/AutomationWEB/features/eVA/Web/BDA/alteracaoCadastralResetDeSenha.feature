@RegressivoAltCadWeb
Feature: Alteração cadastral no site

  Scenario: Solicitar alteração cadastral através das intenções de email, telefone e endereço
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Alterar seus dados cadastrados no BV é simples! Você precisa:"
    And validar conteudo (ballon 3) "Ir na Área do cliente aqui no site acessar a Minha BV com CPF e senha"
    And validar conteudo (ballon 3) "Clicar no seu nome no canto superior direito da tela"
    And validar conteudo (ballon 3) "Ir em Meus dados cadastrais"
    And validar conteudo (ballon 3) "Escolher o dado que vai alterar e selecionar Continuar para validação"

    Examples:
      | intent               |
      | Alterar meu email    |
      | Alterar meu telefone |
      | Alterar meu endereço |
#      | Mudar meu email                               |
#      | Mudar meu telefone                            |
#      | Mudar meu endereço                            |
#      | Preciso cadastrar meu novo e-mail             |
#      | Preciso cadastrar meu novo endereço           |
#      | Preciso cadastrar meu novo telefone           |
#      | Trocar meu email                              |
#      | Trocar meu telefone                           |
#      | Trocar meu endereço                           |
#      | Substituir meu email                          |
#      | Substituir meu telefone                       |
#      | Substituir meu endereço                       |
#      | Renovar meu email                             |
#      | Renovar meu telefone                          |
#      | Renovar meu endereço                          |
#      | Preciso de ajuda para mudar o email           |
#      | Preciso de ajuda para mudar o telefone        |
#      | Preciso de ajuda para mudar o endereco        |
#      | Quero ajuda para mudar o email                |
#      | Quero ajuda para mudar o telefone             |
#      | Quero ajuda para mudar o endereco             |
#      | Vou mudar o email                             |
#      | Vou mudar o telefone                          |
#      | Vou mudar o endereco                          |
#      | Vou alterar o email                           |
#      | Vou alterar o telefone                        |
#      | Vou alterar o endereco                        |
#      | preciso alterar o email                       |
#      | preciso alterar o telefone                    |
#      | preciso alterar o endereco                    |
#      | Quero alterar o email                         |
#      | Quero alterar o telefone                      |
#      | Quero alterar o endereco                      |
#      | Quero atualizar o email                       |
#      | Quero atualizar o telefone                    |
#      | Quero atualizar o endereco                    |
#      | Quero trocar o email                          |
#      | Quero trocar o telefone                       |
#      | Quero trocar o endereco                       |
#      | Quero mudar o email                           |
#      | Quero mudar o telefone                        |
#      | Quero mudar o endereco                        |
#      | Preciso trocar o email                        |
#      | Preciso trocar o telefone                     |
#      | Preciso trocar o endereco                     |
#      | Preciso mudar o email                         |
#      | Preciso mudar o telefone                      |
#      | Preciso mudar o endereco                      |
#      | Preciso atualizar o email                     |
#      | Preciso atualizar o telefone                  |
#      | Preciso atualizar o endereco                  |
#      | Preciso de ajudar para alterar o email        |
#      | Preciso de ajudar para alterar o telefone     |
#      | Preciso de ajudar para alterar o endereco     |
#      | Preciso de ajuda para trocar o email          |
#      | Preciso de ajuda para trocar o telefone       |
#      | Preciso de ajuda para trocar o endereco       |
#      | Preciso de ajudar para atualizar o email      |
#      | Preciso de ajudar para atualizar o telefone   |
#      | Preciso de ajudar para atualizar o endereco   |
#      | Preciso alterar porque está errado o email    |
#      | Preciso alterar porque está errado o telefone |
#      | Preciso alterar porque está errado o endereco |
#      | Preciso cadastrar meu novo email              |
#      | Preciso cadastrar meu novo telefone           |
#      | Preciso cadastrar meu novo endereco           |
#      | Como eu faço para alterar o email             |
#      | Como eu faço para alterar o telefone          |
#      | Como eu faço para alterar o endereco          |
#      | Como eu faço para trocar o email              |
#      | Como eu faço para trocar o telefone           |
#      | Como eu faço para trocar o endereco           |
#      | Atualizar meu email                           |
#      | Atualizar meut telefone                       |
#      | Atualizar meu endereco                        |
#      | como posso recuperar meu email                |
#      | como posso recuperar meu telefone             |
#      | como posso recuperar meu endereco             |


  Scenario: Solicitar alteração cadastral através das intenções de alteração de cadastral
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Qual dado cadastrado você gostaria de alterar?"

    Examples:
      | intent             |
      | alterar meus dados |
#      | Quero alterar os meus dados cadastrais |
#      | Quero alterar meu dado                 |
#      | Quero alterar meus dados               |
#      | atualizar meu cadastro                 |
#      | como alterar meus dados?               |
#      | como altero meus dados                 |


  Scenario: Solicitar alteração cadastral através das intenções de mudança de senha
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Qual senha você quer alterar?"

    Examples:
      | intent      |
      | reset senha |
#      | resetar senha         |
#      | recuperar minha senha |
#      | Quero alterar minha senha                  |
#      | Preciso de ajuda para mudar a senha        |
#      | Quero ajudar para mudar a senha            |
#      | Vou mudar a senha                          |
#      | Vou alterar a senha                        |
#      | Preciso alterar a senha                    |
#      | Substituir senha                           |
#      | Trocar senha                               |
#      | Mudar senha                                |
#      | Alterar senha                              |
#      | Quero atualizar senha                      |
#      | Quero trocar a senha                       |
#      | Quero mudar a senha                        |
#      | Preciso trocar a senha                     |
#      | preciso mudar a senha                      |
#      | Preciso atualizar a senha                  |
#      | Preciso de ajuda para alterar a senha      |
#      | Preciso de ajudar para trocar a senha      |
#      | Preciso de ajudar para atualizar a senha   |
#      | Preciso alterar porque a senha está errado |
#      | mudar minha senha                          |
#      | Preciso cadastrar uma nova senha           |
#      | Como eu faço para alterar a senha          |
#      | Como eu faço para trocar a senha           |
#      | Atualizar minha senha                      |
#      | como posso recuperar minha senha           |
#      | quero mudar a minha senha                  |

  Scenario: Solicitar alteração cadastral do e-mail, até o transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Alterar meu email"
    And enviar a mensagem
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 5) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"

  Scenario: Solicitar alteração cadastral (AppBV), contendo o cartão bv até o transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Quero mudar minha senha"
    And enviar a mensagem
    And clicar no botao "App BV"
    And validar conteudo (ballon 5) "Só mais uma pergunta: você tem um Cartão BV?"
    And clicar no botao "Sim"
    And validar conteudo (ballon 7) "Ah! Só pra te lembrar: a senha da Minha BV é a mesma do app BV."
    And validar conteudo (ballon 7) "Para alterar a senha de acesso aqui pelo site, você precisa ter o seu cartão em mãos e:"
    And validar conteudo (ballon 7) "Entrar na Minha BV, digitar o CPF e clicar em Continuar"
    And validar conteudo (ballon 7) "Selecionar Esqueci minha senha e seguir as instruções da tela 😉"
    And validar conteudo (ballon 7) "Se preferir, pode alterar a senha direto pelo app BV. Lá, é só digitar seu CPF e tocar"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 9) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"

  Scenario: Solicitar alteração cadastral (AppBV), não contendo o cartão bv até o transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Quero mudar minha senha"
    And enviar a mensagem
    And clicar no botao "App BV"
    And validar conteudo (ballon 5) "Só mais uma pergunta: você tem um Cartão BV?"
    And clicar no botao "Não"
    Then validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Solicitar alteração cadastral (Minha BV), contendo o cartão bv até o transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Quero mudar minha senha"
    And enviar a mensagem
    And clicar no botao "Minha BV"
    And validar conteudo (ballon 5) "Só mais uma pergunta: você tem um Cartão BV?"
    And clicar no botao "Sim"
    And validar conteudo (ballon 7) "Ah! Só pra te lembrar: a senha da Minha BV é a mesma do app BV."
    And validar conteudo (ballon 7) "Para alterar a senha de acesso aqui pelo site, você precisa ter o seu cartão em mãos e:"
    And validar conteudo (ballon 7) "Entrar na Minha BV, digitar o CPF e clicar em Continuar"
    And validar conteudo (ballon 7) "Selecionar Esqueci minha senha e seguir as instruções da tela 😉"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 9) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"

  Scenario: Solicitar alteração cadastral (Minha BV), não contendo o cartão bv até o transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Quero mudar minha senha"
    And enviar a mensagem
    And clicar no botao "Minha BV"
    And validar conteudo (ballon 5) "Só mais uma pergunta: você tem um Cartão BV?"
    And clicar no botao "Não"
    Then validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Solicitar alteração cadastral (Cartão BV), lembrando a senha do cartão bv até o transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Quero mudar minha senha"
    And enviar a mensagem
    And clicar no botao "Cartão BV"
    And validar conteudo (ballon 5) "Só mais uma pergunta: você lembra a senha atual do seu Cartão BV?"
    And clicar no botao "Sim"
    And validar conteudo (ballon 7) "Para alterar a senha do Cartão BV aqui pelo site, você precisa estar com ele em mãos e:"
    And validar conteudo (ballon 7) "Acessar a Minha BV com CPF e senha"
    And validar conteudo (ballon 7) "Ir em Cartões 👉 Segurança 👉 Alterar senha do cartão e selecionar o cartão"
    And validar conteudo (ballon 7) "A partir daí, siga as instruções na tela e pronto! 😉"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 9) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"

  Scenario: Solicitar alteração cadastral (Cartão BV), não lembrando a senha do cartão bv até o transbordo (Com o celular atualizado)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Quero mudar minha senha"
    And enviar a mensagem
    And clicar no botao "Cartão BV"
    And validar conteudo (ballon 5) "Só mais uma pergunta: você lembra a senha atual do seu Cartão BV?"
    And clicar no botao "Não"
    And validar conteudo (ballon 7) "Já vamos resolver isso! Vou enviar a senha do seu cartão por mensagem SMS.📲"
    And clicar no botao "Sim"
    Then validar conteudo (ballon 9) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

  Scenario: Solicitar alteração cadastral (Cartão BV), não lembrando a senha do cartão bv até o transbordo (Sem o celular atualizado)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Quero mudar minha senha"
    And enviar a mensagem
    And clicar no botao "Cartão BV"
    And validar conteudo (ballon 5) "Só mais uma pergunta: você lembra a senha atual do seu Cartão BV?"
    And clicar no botao "Não"
    Then validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"







