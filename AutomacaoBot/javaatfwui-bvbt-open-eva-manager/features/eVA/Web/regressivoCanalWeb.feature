
Feature: Regressivo web

  @REGRESSIVO_WEB
  Scenario Outline: Solicitar alteração cadastral através das intenções de email, telefone e endereço
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "alterar cadastro"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Alterar seus dados cadastrados no BV é simples! Você pode fazer isso aqui no site pela Minha BV ou pelo app BV."
    And validar conteudo (ballon 3) "Como você prefere?"
    And validar conteudo (ballon 3) "Minha BV"
    And validar conteudo (ballon 3) "App BV"
    And clicar no botao "<canal>"
    And validar conteudo (ballon 5) "Legal! Só me diz antes, qual dado cadastrado você gostaria de alterar?"
    And validar conteudo (ballon 5) "Celular"
    And validar conteudo (ballon 5) "E-mail"
    And validar conteudo (ballon 5) "Endereço"
    And validar conteudo (ballon 5) "Senha"
    And clicar no botao "<dado>"

    Examples: Alteração cadastral Celular e E-mail
    | canal    | dado     |
    | Minha BV | Celular  |
    | App BV   | E-mail   |

    Examples: Alteração cadastral Endereço e Senha
    | canal    | dado     |
    | Minha BV | Endereço |
    | App BV   | Senha    |


  Scenario: Solicitar altereação cadastral (AppBV), contendo o cartão bv até o transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Quero mudar minha senha"
    And enviar a mensagem
    And validar conteudo (ballon 1) "Alterar seus dados cadastrados no BV é simples! Você pode fazer isso aqui no site pela Minha BV ou pelo app BV."
    And validar conteudo (ballon 1) "Como você prefere?"
    And clicar no botao "App BV"
    And validar conteudo (ballon 5) "Legal! Só me diz antes, qual dado cadastrado você gostaria de alterar?"
    And validar conteudo (ballon 5) "Celular"
    And validar conteudo (ballon 5) "E-mail"
    And validar conteudo (ballon 5) "Endereço"
    And validar conteudo (ballon 5) "Senha"
    And clicar no botao "Senha"
    And validar conteudo (ballon 7) "Selecione qual senha você quer alterar:"
    And validar conteudo (ballon 7) "App BV"
    And validar conteudo (ballon 7) "Minha BV"
    And validar conteudo (ballon 7) "Cartão BV"
    And clicar no botao "App BV"
    And validar conteudo (ballon 1) "Só mais uma pergunta: você tem um Cartão BV?"
    And validar conteudo (ballon 1) "Sim"
    And validar conteudo (ballon 1) "Não"
    And clicar no botao "Sim"
    And validar conteudo (ballon 11) "Ah! Só pra te lembrar: a senha da Minha BV é a mesma do app BV."
    And validar conteudo (ballon 11) "Para alterá-la pelo app, você precisa:"
    And validar conteudo (ballon 11) "Ir no seu perfil, que fica no ícone no canto superior direito da tela inicial"
    And validar conteudo (ballon 11) "Escolher Sair do app"
    And validar conteudo (ballon 11) "Digitar seu CPF se ele ainda não estiver aparecendo e tocar em Esqueci minha senha"
    And validar conteudo (ballon 11) "A partir dali, é só seguir as instruções da tela. 😉"
    And clicar no botao "Já tentei isso"
    And validar conteudo (ballon 13) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"
    And validar conteudo (ballon 13) "Falar com uma pessoa"
    Then clicar no botao "Falar com uma pessoa"

    #antecipar pagamentos
  Scenario Outline: Solicitar antecipacao das parcelas atraves das intencoes
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Entendi que você quer fazer uma antecipação. Você gostaria de antecipar o pagamento da sua fatura ou seu boleto de financiamento?"


    Examples:
      | intent                    |
      | Antecipar                 |
      | Antecipar pagamento       |
      | quero pagar antes da data |
#parei aqui
  Scenario: Solicitar antecipacao das parcelas do boleto
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Antecipar pagamento"
    And enviar a mensagem
    And clicar no botao "Boleto"
    Then validar conteudo (ballon 5) "você pode adiantar qualquer parcela do seu contrato e o valor do desconto nos juros vai ser proporcional ao período que você escolheu para antecipar o pagamento."

    #Autorizar celular

  Scenario: Solicitar autorização do celular através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Se você já tem cadastro no app BV, precisa autorizar o seu celular e liberar todas as funções. Para isso, é só:"
    And validar conteudo (ballon 3) "1. Acessar o app com o seu CPF e senha"
    And validar conteudo (ballon 3) "2. Ir na tela inicial do app"
    And validar conteudo (ballon 3) "3. Tocar em Perfil, que fica no ícone no canto superior direito"
    And validar conteudo (ballon 3) "4. Escolher Configurações → Liberar todas as funções no menu App BV"


    Examples:
      | intent                            |
      | preciso autorizar celular         |
      | Autorizar celular                 |
      | não deu certo habilitar o celular |

  Scenario: Solicitar autorização do celular, problemas em autorizar (Meu celular está errado) até o transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "preciso autorizar celular"
    And enviar a mensagem
    And clicar no botao "Já tentei isso"
    And validar conteudo (ballon 5) "Entendi que você tentou autorizar o seu celular para liberar todas as funções do app BV e não deu certo."
    And clicar no botao "Meu celular está errado"
    Then validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

    #Bloqueio de cartao

  Scenario: Solicitar bloqueio do cartao atraves das intencoes
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para que eu possa te ajudar melhor, preciso saber: o que aconteceu com seu cartão?"

    Examples:
      | intent                            |
      | Quero bloquear meu cartão         |
      | Preciso bloquear meu cartão       |
      | Realizar o bloqueio do meu cartão |

  Scenario: Solicitar bloqueio do cartao (foi perdido) até o transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Preciso bloquear meu cartão"
    And enviar a mensagem
    And clicar no botao "Foi perdido"
    And validar conteudo (ballon 5) "Que pena que isso aconteceu. 😩"
    And validar conteudo (ballon 5) "Para fazer o bloqueio, você deve acessar o app e fazer o seguinte:"
    And validar conteudo (ballon 5) "Tocar em Meus cartões →  Bloquear cartão e seguir as instruções da tela"
    And validar conteudo (ballon 5) "Selecionar Perdi meu cartão e confirmar o endereço onde você vai receber o novo cartão"
    And validar conteudo (ballon 5) "Digitar a sua senha"
    And clicar no botao "Já tentei isso"
    And validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

    #Campanha

  Scenario: Solicitar campanha através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Se você recebeu um convite com a oferta especial para abrir sua Conta BV, receberá o valor combinado em até 30 dias depois da abertura."
    And validar conteudo (ballon 3) "Mas, se esse tempo passou e você ainda não recebeu o saldo em conta, posso te passar o número da nossa central para você falar com uma pessoa do time BV. 😃"

    Examples:
      | intent                  |
      | Bonus 100               |
      | Bonus 50                |
      | Quero receber os R$ 100 |

    #Comprovante de pagamentos e transferencias
  Scenario: Solicitar comprovante de pagamento através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Agora me diz, você precisa de um comprovante de transação de:"
    And validar conteudo (ballon 3) "Saldo em conta"
    And validar conteudo (ballon 3) "Cartão BV"
    And validar conteudo (ballon 3) "Pagamento financiamento"
    And validar conteudo (ballon 3) "Pagamento empréstimo"

    Examples:
      | intent                                          |
      | Saber sobre comprovate                          |
      | quero consultar meu historico de pagament       |
      | historico de pagamento                          |

  Scenario: Solicitar comprovante (saldo em conta) fluxo completo até o transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Como acesso os meus comprovantes"
    And enviar a mensagem
    And clicar no botao "Saldo em conta"
    And validar conteudo (ballon 5) "Para pegar um comprovante de pagamento, você precisa ter o app banco BV em seu celular. Nele, é só:"
    And validar conteudo (ballon 5) "Acessar a tela inicial do app"
    And validar conteudo (ballon 5) "Ir em Consultar extrato"
    And validar conteudo (ballon 5) "Tocar na transação feita → Ver comprovante"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

    #Contestar compra
  Scenario: Contestar compra através das intencoes
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Sinto muito que isso tenha acontecido, mas pode deixar que vamos tentar resolver! 😃"

    Examples:
      | intent                     |
      | Nao fiz essa compra        |
      | nao fui eu quem comprou    |
      | quero contestar uma compra |

    #Data da fatura

  Scenario: Solicitar visualização da data de vencimento do cartão através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para ver a data de vencimento da fatura do seu Cartão BV aqui pelo site, você precisa:"
    And validar conteudo (ballon 3) "Acessar a Minha BV com CPF e senha"
    And validar conteudo (ballon 3) "Clicar no menu Cartões"

    Examples:
      | intent                                        |
      | Quero ver data de vencimento da fatura        |
      | Quando vence a fatura do meu cartão           |
      | Qual a data de vencimento da fatura do cartão |

  Scenario: Solicitar visualização da data de vencimento do cartão até transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Quero ver data de vencimento da fatura "
    And enviar a mensagem
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 5) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"

#    Desbloqueio de cartao

  Scenario: Desbloquear cartao no app
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Você quer desbloquear o seu Cartão BV porque ele é um cartão novo ou porque foi bloqueado?"

    Examples:
      | intent                               |
      | Quero desbloquear meu cartão         |
      | Preciso desbloquear meu cartão       |
      | Realizar o desbloqueio do meu cartão |

  Scenario: Solicitar desbloqueio de cartão fluxo completo já com o recebimento do cartão novo (esqueci a senha)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Quero desbloquear meu cartão"
    And enviar a mensagem
    And clicar no botao "Novo"
    And validar conteudo (ballon 5) "Então conte pra mim: você já recebeu o seu novo cartão?"
    And clicar no botao "Sim"
    And validar conteudo (ballon 7) "Para desbloquear o novo Cartão BV, você precisa acessar o app e:"
    And validar conteudo (ballon 7) "Tocar em Meus cartões  → Desbloquear seu novo cartão"
    And validar conteudo (ballon 7) "Selecionar Recebi o meu cartão → Desbloquear cartão"
    And clicar no botao "Esqueci minha senha"
    Then validar conteudo (ballon 9) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

#    Documento de quitacao
  Scenario: Solicitar documento de quitação através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Posso te ajudar com isso! 😉 Mas me conte, você quer um documento de quitação de:"

    Examples:
      | intent                                  |
      | necessito da carta de quitação          |
      | Preciso carta de quitação               |
      | como posso pedir declaração de quitação |

  Scenario: Solicitar documento de quitação de financiamento (Declaracao anual) até transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "necessito da carta de quitação"
    And enviar a mensagem
    And clicar no botao "Financiamento"
    And validar conteudo (ballon 5) "Deixa eu te explicar. A Declaração Anual de Quitação de Débitos apresenta todos os pagamentos que você fez no ano passado em seu financiamento. Ele já serve como comprovante se você quitou a sua dívida no ano anterior."
    And validar conteudo (ballon 5) "Já a Carta de Quitação do Contrato é um comprovante que você consegue pegar a qualquer momento, desde que o financiamento esteja todo pago."
    And clicar no botao "Declaração anual"
    And validar conteudo (ballon 7) "Para pegar a sua Declaração Anual de Quitação de Débitos, você precisa:"
    And validar conteudo (ballon 7) "Acessar a Minha BV com CPF e senha"
    And validar conteudo (ballon 7) "Ir em Financiamentos → Serviços"
    And validar conteudo (ballon 7) "Clicar em Declaração Anual de Quitação de Débitos"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 9) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"

    #Excluir
  Scenario: Solicitar ajuda através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Vai nos deixar agora? 🥺"
    And validar conteudo (ballon 3) "Vou te contar uma coisa: se robôs pudessem ter conta em banco, eu escolheria a do BV pra organizar minha vida financeira."
    And validar conteudo (ballon 3) "E isso não é porque eu trabalho aqui! É que além dos benefícios atuais, a conta digital terá novas opções em breve pra facilitar ainda mais o seu dia a dia."

    Examples:
      | intent                   |
      | encerramento da conta bv |
      | enccerramento conta      |
      | encerramento da conta    |


    #Extrato
  Scenario: Solicitar extrato através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "E qual extrato você quer consultar?"

    Examples:
      | intent                      |
      | Quero ver meu extrato       |
      | Preciso de um extrato       |
      | Não consigo ver meu extrato |

  Scenario: Solicitar extrato do cartão
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Quero ver meu extrato"
    And enviar a mensagem
    And clicar no botao "Fatura do cartão"
    Then validar conteudo (ballon 5) "Para consultar o extrato da sua fatura é só acessar a Minha BV com CPF e senha e:"
    And validar conteudo (ballon 5) "Ir na tela inicial"
    And validar conteudo (ballon 5) "Selecionar Cartões no canto superior esquerdo"
    And validar conteudo (ballon 5) "Clicar na opção Ver extrato completo"


    #Gravame
  Scenario: Se informar sobre o gravame através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Depois de pagar todo o seu contrato do financiamento, a baixa do Gravame acontece automaticamente em até 10 dias corridos. 😃"
    And validar conteudo (ballon 3) "Isso só não vai acontecer se o CRV (Certificado de Registro do Veículo), conhecido também como DUT (Documento Único de Transferência), não tiver sido emitido com o próprio veículo dado como garantia do pagamento do financiamento. Se esse for o seu caso, você precisa procurar o Detran da sua cidade ou consultar um despachante."
    And validar conteudo (ballon 3) "Para saber mais sobre Gravame e como desalienar o seu veículo, clique aqui!"

    Examples:
      | intent          |
      | preciso gravame |
      | baixar gravame  |
      | gravame         |

    #Informe de rendimentos
  Scenario: Solicitar informe de rendimentos através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Certo, vamos falar sobre informes do Imposto de Renda. 🦁"
    And validar conteudo (ballon 3) "Só me conta: de qual serviço BV você quer o informe?"

    Examples:
      | intent                                |
      | Informe de rendimentos                |
      | Quero meu informe de rendimentos      |
      | Preciso do meu informe de rendimentos |


  Scenario: Solicitar informe de rendimentos (Financiamento de veículos)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Informe de rendimentos"
    And enviar a mensagem
    And clicar no botao "Financiamento de veículos"
    And validar conteudo (ballon 5) "Se você tem um financiamento, pode pegar seu informe para o Imposto de Renda aqui no site."
    And validar conteudo (ballon 5) "Acessar a Minha BV com CPF e senha"
    And validar conteudo (ballon 5) "Selecionar Financiamento no canto superior esquerdo"
    And validar conteudo (ballon 5) "Ir em Extrato Anual Consolidado - Informe de Imposto de Renda"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 7) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"

    #Insulto

  Scenario: Informar insatisfação com o bot através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Desculpe por não poder te ajudar dessa vez. 😩"

    Examples:
      | intent       |
      | meu ovo      |
      | robô nojento |

    #ChitChat
  Scenario: Cumprimentar o bot através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Oi, fico feliz em te ver por aqui! 😁"
    And validar conteudo (ballon 3) "Me diz, como posso te ajudar?"

    Examples:
      | intent |
      | olá    |
      | Oi     |

    #Onboarding
  Scenario: Solicitar abertura de conta (intenções)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "A conta BV é grátis e 100% digital. Para abrir a sua , você deve acessar o app banco BV. Depois, é só:"
    And validar conteudo (ballon 3) "Selecionar Abrir minha Conta BV na tela inicial do app"
    And validar conteudo (ballon 3) "Permitir acesso à câmera do seu celular e tirar uma foto do seu rosto"
    And validar conteudo (ballon 3) "Tocar na seta azul no final da tela para continuar"
    And validar conteudo (ballon 3) "Tirar foto da sua CNH ou do seu RG"

    Examples:
      | intent                          |
      | Quero abrir minha conta         |
      | como faço pra abrir minha conta |
      | abertura de conta digital       |

  Scenario: Solicitar abertura de conta, dizer que esta com problemas na abertura (tirar foto do documento), fluxo completo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Quero abrir minha conta"
    And enviar a mensagem
    And clicar no botao "Tive um problema"
    And clicar no botao "Tirar foto do documento"
    Then validar conteudo (ballon 7) "A foto do seu documento é muito importante pra gente na hora de abrir sua Conta BV."
    And validar conteudo (ballon 7) "Como já fiz alguns cursos de fotografia, você está falando com a pessoa certa pra te dar umas dicas. Ops! Quer dizer, com o robô certo. 😅"
    And validar conteudo (ballon 8) "🔖 Se for usar seu RG, tire uma foto da frente e outra do verso. Já se escolher sua CNH (Carteira de Motorista), tire uma foto dela aberta, mostrando a frente e o verso ao mesmo tempo"
    And validar conteudo (ballon 8) "🏷️Tire o plástico ou a capinha do documento"
    And validar conteudo (ballon 8) "📷Não use o flash da câmera"
    And validar conteudo (ballon 8) "💡Escolha um lugar iluminado e confira se o celular não está fazendo sombra no documento"
    And validar conteudo (ballon 8) "🤳Deixe o documento sobre uma mesa e segure firme o celular pra foto não sair tremida ou sem foco"
    And validar conteudo (ballon 8) "🔎Antes de enviar a foto, confira se você consegue ler todas as informações ali"

    #Parcelamento

  Scenario: Solicitar parcelamento através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para parcelar a fatura fechada do seu Cartão BV você deve acessar a Minha BV com CPF e senha. Depois, é só:"
    And validar conteudo (ballon 3) "Selecionar Cartões → Fatura atual → Opções de pagamento"
    And validar conteudo (ballon 3) "Ir em Pague sua fatura em até 1 + 18 vezes e escolher a melhor opção pra você"
    And validar conteudo (ballon 3) "Clicar no botão Gerar boleto"
    And validar conteudo (ballon 3) "Pronto! É só copiar o número do código de barras ou baixar o PDF da sua 1a parcela."
    And validar conteudo (ballon 3) "📱No app BV você também pode parcelar a fatura, na seção Meus cartões."


    Examples:
      | intent                     |
      | Parcelar                   |
      | Fazer um parcelamento      |
      | gostaria de pagar em vezes |

    #Milhas
  Scenario: Informar sobre problemas com milhas através das intenções intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Depois de pedir transferência por aqui, os pontos aparecem, geralmente, em até 10 dias úteis no seu programa de milhagem."
    And validar conteudo (ballon 3) "Se o prazo já passou, uma pessoa do time BV pode te ajudar."

    Examples:
      | intent                                               |
      | estou com problemas ao resgatar meus pontos          |
      | tentei resgatar meus pontos e nao consegui           |
      | nao estou conseguindo trocar os pontos do meu cartao |

    #Quitacao
  Scenario: Solicitar quitação através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Quando você quita o financiamento antes do prazo, recebe um desconto proporcional ao tempo de antecipação."
    And validar conteudo (ballon 4) "Por aqui no chat eu consigo calcular o valor total pra quitação antecipada e gerar uma linha digitável com um código para pagamento."

    Examples:
      | intent                               |
      | Quitar o financiamento               |
      | Pagar por completo meu financiamento |
      | Zerar a dívida do financiamento      |

    #Rastreio de cartao
  Scenario: Solicitar rastreio do cartao através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Pra acompanhar a entrega do seu cartão é só acessar o app BV no seu celular com CPF e senha e:"

    Examples:
      | intent              |
      | rastrear cartão     |
      | Rastrear meu cartão |
      | Entrega cartão      |

  Scenario: Solicitar rastreio do cartao de debito e credito da conta, até transbordo
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Quando chegar cartão"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Pra acompanhar a entrega do seu cartão é só acessar o app BV no seu celular com CPF e senha e:"
    And clicar no botao "Já tentei isso"
    And validar conteudo (ballon 5) "Nesse caso, eu posso chamar uma pessoa do time BV pra te ajudar com isso."

    #reneg
  Scenario: Solicitar renegociação através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Vamos falar sobre renegociação. Primeiro me conta, o que você quer renegociar?"
    And validar conteudo (ballon 3) "Renegociar Financiamento"
    And validar conteudo (ballon 3) "Renegociar Cartão de crédito"

    Examples:
      | intent                        |
      | Renegociar meu carro          |
      | Renegociar meu financiameto   |
      | Rever minhas parcelas abertas |

    #Saque com o cartao bv
  Scenario: Solicitar saque do cartão de crédito através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Caso tenha limite disponível para saque, é só ir em qualquer caixa eletrônico do Banco 24 Horas. 💰"
    And validar conteudo (ballon 3) "📌 Como essa transação é considerada um empréstimo, será cobrada uma tarifa na fatura do cartão para cada saque."
    And validar conteudo (ballon 3) "Se quiser saber como ver o limite disponível para saque ou os valores de tarifas, é só escolher uma das opções abaixo que eu te explico. 😃"

    Examples:
      | intent                                   |
      | Onde tiro dinheiro com cartão de crédito |
      | Preciso sacar com cartão de crédito      |
      | Saque com cartão de crédito              |

  Scenario: Solicitar saque do cartão (ver limite disponivel)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "quero sacar com cartao de credito"
    And enviar a mensagem
    And clicar no botao "Ver limite disponível"
    Then validar conteudo (ballon 5) "Para ver o limite disponível pra saque é só acessar a Minha BV com CPF e senha e:"
    And validar conteudo (ballon 5) "Ir na área Cartões"
    And validar conteudo (ballon 5) "Clicar em Mais → Limites de crédito e taxas → Consultar limites e tarifas → Limite de crédito"

    #Seg via de contrato
  Scenario: Solicitar segunda via de contrato através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Agora só me conta se você tem um contrato ou mais de um com o BV."

    Examples:
      | intent                              |
      | Quero minha segunda via de contrato |
      | Preciso da 2 via do meu contrato    |
      | 2 via do contrato                   |

    #Solicitacao cartao
  Scenario: Solicitar cartão de crédito através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Você quer pedir um cartão BV, ou um cartão adicional?"
    And validar conteudo (ballon 3) "Caso já tenha um cartão BV, pode pedir um adicional pra quem importa pra você!"
    And validar conteudo (ballon 3) "Não precisa de análise de crédito e você ainda compartilha o limite do seu cartão."

    Examples:
      | intent                                        |
      | quero solicitar um cartao pra mim             |
      | como faço para conseguir um cartao de credito |
      | gostaria de solicitar um cartao de credito    |

    #Transferencia de financiamento
  Scenario: Solicitar sobre transferência de dívida através das intenções
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Pra pedir a transferência de dívida do seu financiamento de veículo no BV, você precisa preencher uma ficha cadastral que vai ser analisada pelo banco."
    And validar conteudo (ballon 3) "O seu contrato tem que seguir alguns pré-requisitos. Pra começar, é preciso que os pagamentos estejam em dia e ter, pelo menos, 3 parcelas pagas."
    And validar conteudo (ballon 4) "Ah! E o veículo não pode ter multas ou IPVA atrasados e o seu contrato não pode ser refinanciado."
    And validar conteudo (ballon 4) "Aqui tem o nosso Guia de Orientação pra você ler antes de preencher o pedido."
    And validar conteudo (ballon 5) "Depois, é só enviar a ficha preenchida para o email transferenciadedivida@bv.com.br e aguardar a resposta do pedido."
    And validar conteudo (ballon 5) "A análise no BV pode levar até 5 dias úteis."
    And validar conteudo (ballon 6) "Se você quiser, posso te passar a ficha cadastral para fazer o pedido de transferência de financiamento."
    And validar conteudo (ballon 6) "Só me diz qual é o seu tipo de contrato:"
    And validar conteudo (ballon 6) "contrato pessoa física"
    And validar conteudo (ballon 6) "contrato pessoa jurídica"

    Examples:
      | intent                                            |
      | Mudar o financiamento para o nome de outra pessoa |
      | Transferência de financiamento                    |
      | Transferência de titularidade de financiamento    |

    #Transferencias
  Scenario: Solicitar transferencia atraves das intençoes
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Vou dar uma dica: com o Pix, você pode fazer transferências de um jeito mais fácil, em qualquer dia e hora, sem pagar nada por isso."
    And validar conteudo (ballon 3) "E sabe qual é o melhor? O dinheiro cai em poucos segundos! 💸"

    Examples:
      | intent                                     |
      | Estou com dúvidas pra fazer transferências |
      | Quero fazer uma transferência              |
      | Como transferir dinheiro                   |

  Scenario: Solicitar transferencia TED atraves das intençoes
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "ted"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para fazer uma TED, você precisa ir no app BV e:"
    And validar conteudo (ballon 3) "Acessar a tela inicial do app"
    And validar conteudo (ballon 3) "Tocar em Fazer transferência"
    And validar conteudo (ballon 3) "Colocar os dados solicitados na tela"
    And validar conteudo (ballon 3) "Escolher a forma da transferência em Via → TED"

    #Trocar data da fatura
  Scenario: Solicitar mudança da data de vencimento do cartão através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para alterar a data de vencimento da fatura do seu Cartão BV, você precisa:"
    And validar conteudo (ballon 3) "✅Estar com o pagamento da fatura em dia"
    And validar conteudo (ballon 3) "✅Não ter compras parceladas com juros neste e nos próximos meses"
    And validar conteudo (ballon 3) "✅Não ter alterado a data nos últimos 6 meses"
    And validar conteudo (ballon 3) "✅Não ter faturas anteriores parceladas"

    Examples:
      | intent                                               |
      | Quero mudar a data de vencimento do boleto da fatura |
      | Mudar a data de fechamento da fatura                 |
      | Alterar data de fechamento do cartão                 |

  Scenario: Solicitar mudança da data de vencimento do cartão, visualizar a situação da fatura do cartão e saber como alterar a data
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Alterar a data do vencimento do cartão de crédito "
    And enviar a mensagem
    And clicar no botao "Fatura do cartão"
    Then validar conteudo (ballon 5) "Entendi que você quer falar sobre fatura do cartão."

    #Ver fatura
  Scenario: Solicitar a visualização da fatura através da intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para ver a fatura do seu Cartão BV pelo site, você precisa:"
    And validar conteudo (ballon 3) "Acessar a Minha BV com CPF e senha"
    And validar conteudo (ballon 3) "Clicar na opção Cartões"
    And validar conteudo (ballon 3) "Ir em Fatura Atual → Detalhes da Fatura"

    Examples:
      | intent                     |
      | Ver fatura                 |
      | visualizar a minha fatura  |
      | to precisando ver a fatura |

    #Pagamentos
  Scenario: Solicitar pagamentos através de intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Me conta só mais uma coisinha: o que você quer pagar?"

    Examples:
      | intent                     |
      | Quero fazer um pagamento   |
      | Preciso fazer um pagamento |
      | pagar                      |


  Scenario: Solicitar pagamento do financiamento de veiculos (Quitação)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "efetuar pagamento"
    And enviar a mensagem
    And clicar no botao "Financiamento de veículos"
    And validar conteudo (ballon 5) "Você gostaria do seu boleto:"
    And clicar no botao "Quitação"
    And validar conteudo (ballon 7) "Me conta o que você quer quitar hoje:"
    And clicar no botao "Financiamento de veículos"
    And validar conteudo (ballon 9) "Quando você quita o financiamento antes do prazo, recebe um desconto proporcional ao tempo de antecipação."

    #Emprestimo

  Scenario: Solicitar refinanciamento através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Me conta, você quer refinanciar o seu:"

    Examples:
      | intent                       |
      | Refinanciar                  |
      | quero refinanciar meu carro  |
      | quero refinanciar minha moto |
      | fazer um refinanciamento     |

  Scenario: Solicitar emprestimo (Refinanciamento de veículo)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Estou precisando de dinheiro"
    And enviar a mensagem
    And clicar no botao "Refinanciamento"
    And validar conteudo (ballon 5) "Me conta, você quer refinanciar o seu:"
    And eu digitar a intencao "Veículo"
    And enviar a mensagem
    Then validar conteudo (ballon 7) "O BV refinancia veículos leves com até 15 anos de uso e caminhões com até 20 anos. Você pode ter um crédito de até 80% do valor do seu veículo e parcelar em até 48 vezes."
    And validar conteudo (ballon 7) "É importante lembrar que, para fazer um refinanciamento, o veículo precisa estar financiado no seu nome e é preciso ter quitado, no mínimo, 50% das parcelas do contrato."

  Scenario: Solicitar emprestimo (Refinanciamento consignado)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Estou precisando de dinheiro"
    And enviar a mensagem
    And clicar no botao "Refinanciamento"
    And validar conteudo (ballon 5) "Me conta, você quer refinanciar o seu:"
    And eu digitar a intencao "Consignado"
    And enviar a mensagem
    Then validar conteudo (ballon 7) "Com o BV, você pode renovar o seu Consignado para pegar mais crédito."
    And validar conteudo (ballon 7) "Basta aumentar o número das parcelas e continuar pagando o mesmo valor mensalmente. Ou então ajustar o crédito de acordo com a margem disponível"
    And validar conteudo (ballon 8) "Para saber mais como funciona e pedir o seu, você pode:"
    And validar conteudo (ballon 8) "conversar diretamente com a área de Recursos Humanos da sua empresa"
    And validar conteudo (ballon 8) "falar com nossa central de atendimento de segunda a sexta feira, das 8h às 20h40 e aos sábados, das 10h às 16h, nos telefones 3003 7888 (capitais e regiões metropolitanas) e 0800 011 7888 (demais localidades)."


#    Transbordo
  Scenario: Solicitar atendimento humano através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Eu consigo te ajudar com vários assuntos de forma rápida! 😉"

    Examples:
      | intent                    |
      | Atendimento humano        |
      | Quero falar com um humano |
      | Me transfere pra humano   |

  Scenario: Solicitar atendimento humano com sucesso (Financiamento)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "Atendimento humano"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Eu consigo te ajudar com vários assuntos de forma rápida! 😉"
    And clicar no botao "Falar com uma pessoa"
    And validar conteudo (ballon 5) "Pra começar, você quer falar sobre qual assunto?"
    And clicar no botao "<button_subject>"
    And validar conteudo (ballon 7) "Você já tem um financiamento com o BV?"
    And clicar no botao "Sim"
    And validar conteudo (ballon 9) "Entendi! E você precisa de ajuda com:"
    And eu digitar a intencao "<button_help>"
    And enviar a mensagem
    And validar conteudo (ballon 11) "Por favor, qual é o seu primeiro nome?"
    And eu digitar a intencao "<name>"
    And enviar a mensagem
    And validar conteudo (ballon 13) "E qual é o seu sobrenome?"
    And eu digitar a intencao "<surname>"
    And enviar a mensagem
    Then validar conteudo (ballon 15) "Agora, conta pra mim: qual é o seu CPF?"

    Examples:
      | intent             | button_subject | button_help       | name          | surname |
      | Atendimento humano | Financiamento  | Boleto            | Maria Rita    | Naka    |
      | Atendimento humano | Financiamento  | Cópia de contrato | Mauricio Yuji | Naka    |
      | Atendimento humano | Financiamento  | Outro assunto     | Mauricio Yuji | Naka    |

        # Carne digital
  Scenario: Solicitar carnê digital, até o transbordo
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para pegar a 2ª via do carnê você precisa:"
    And validar conteudo (ballon 3) "Acessar a Minha BV com CPF e senha"
    And validar conteudo (ballon 3) "Clicar em Financiamento → 2ª  via do carnê"
    And validar conteudo (ballon 3) "Acessar Minha BV"

    Examples:
      | intent                  |
      | Quero carne             |
      | Quero meu carne digital |
      | Carnê                   |

  Scenario: Solicitar carnê digital, até o transbordo
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "Quero carne"
    And enviar a mensagem
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 5) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"

    #    Cancelamento do cartao

  Scenario: Cancelamento de cartão através das intenções
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Vamos conversar um pouquinho sobre isso?"
    And validar conteudo (ballon 3) "No BV, o seu cartão tem diversos benefícios exclusivos para deixar sua vida mais leve."
    And validar conteudo (ballon 3) "Você pode contar com os nossos descontos em parceiros, programa de pontos, parcelamento de fatura e muito mais!"
    And validar conteudo (ballon 3) "Se quiser consultar todos os benefícios do seu cartão é só clicar aqui."
    And validar conteudo (ballon 4) "Com o desconto na anuidade, você consegue diminuir em até 100% o valor da sua anuidade de acordo com sua faixa de gastos mensais."
    And validar conteudo (ballon 4) "E o melhor: conforme você usa o seu cartão e paga as faturas em dia, o seu limite pode aumentar de forma automática."
    And validar conteudo (ballon 4) "Quer pensar mais um pouco?"

    Examples:
      | intent                                 |
      | gostaria de cancelar o cartão          |
      | quero cancelar meu cartão              |
      | preciso cancelar o cartão pois não uso |

  Scenario: Cancelar cartão
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "gostaria de cancelar o cartão"
    And enviar a mensagem
    And clicar no botao "Não"
    Then validar conteudo (ballon 6) "Antes de te transferir para uma pessoa do time BV, preciso de quatro informações."

    #    Compensação de pagamentos

  Scenario: Solicitar compensação de pagamento através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para que eu possa te ajudar melhor, me fale, qual boleto você pagou?"

    Examples:
      | intent                                         |
      | Tá falando que nao está pago, mas eu já paguei |
      | ta falando que nao esta pago, mas eu ja paguei |
      | não consta meu pagamento                       |

  Scenario: Solicitar compensação de pagamento da fatura do cartão bv (Saber mais sobre o limite)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "não consta meu pagamento"
    And enviar a mensagem
    And clicar no botao "Cartão BV"
    And validar conteudo (ballon 5) "A compensação do pagamento acontece em até dois dias úteis, se ainda não passou desse prazo, aguarde, logo sua fatura aparecerá como paga"
    And validar conteudo (ballon 5) "Se o prazo de compensação passou, clique em"
    And validar conteudo (ballon 5) "Agora, se quiser saber mais sobre como funciona o limite do seu cartão, clique no botão"
    And clicar no botao "Saber mais sobre limite"
    Then validar conteudo (ballon 7) "Certo! Você quer falar sobre qual tipo de limite?"

  Scenario: Solicitar acompanhamento do cartão através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Se você quer saber se o cartão foi aprovado, é só ligar no número abaixo."
    And validar conteudo (ballon 3) "0800 772 8028"
    And validar conteudo (ballon 3) "Nós também temos um número para atender deficientes auditivos e de fala."
    And validar conteudo (ballon 3) "0800 701 8661"
    And validar conteudo (ballon 3) "Estamos prontos para te atender 24 horas, todos os dias."
    Examples:
      | intent                                  |
      | Status da proposta do cartão de crédito |
      | Saber minha proposta de cartão          |
      | Foi aprovado algum cartão               |

  Scenario: Cancelamento de cartão e optar pela continuidade do cartão
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "gostaria de cancelar o cartão"
    And enviar a mensagem
    And clicar no botao "Sim"
    Then validar conteudo (ballon 6) "Que bom que você decidiu manter o seu cartão."
    And validar conteudo (ballon 6) "Continue aproveitando todos os benefícios e conte com a gente sempre que precisar!"
    And validar conteudo (ballon 6) "Se quiser conversar sobre mais alguma coisa, é só me falar aqui."

  Scenario: Solicitar credito pessoal e saber informações sobre o Site BV
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "contratar credito pessoal"
    And enviar a mensagem
    And clicar no botao "Site BV"
    Then validar conteudo (ballon 6) "Pelo site, você vai precisar de alguns documentos: RG, CPF e comprovantes de renda e residência pra fazer sua análise de crédito pessoal."
    And validar conteudo (ballon 6) "Pode clicar aqui que te redireciono agora mesmo."

  Scenario: Perguntar sobre entrega amigável através das intenções
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "A qualquer momento do seu financiamento você pode optar por fazer a devolução do veículo para o BV."
    And validar conteudo (ballon 3) "Mas devolver é uma coisa, encerrar a dívida é outra coisa."
    And validar conteudo (ballon 3) "Quando você devolve o veículo pro BV, a gente leva a leilão e usa o dinheiro para abater das suas parcelas em aberto com o banco."
    And validar conteudo (ballon 3) "Se você está com parcelas atrasadas a gente pode conversar mais por aqui. Que tal?"
    And validar conteudo (ballon 3) "Renegociar minha dívida"
    And validar conteudo (ballon 3) "Saber mais sobre Entrega Amigável"

    Examples:
      | intent                                 |
      | Me explica como fazer entrega amigável |
      | Quero detalhes da entrega amigável     |
      | Quero fazer uma entrega amigável       |

  Scenario: Perguntar sobre entrega amigável (renegociar minha dívida)
    Given que acessei o chatbot do eva (Web)
    And eu digitar a intencao "Quero devolver o carro pro banco"
    And enviar a mensagem
    And clicar no botao "Renegociar minha dívida"
    Then validar conteudo (ballon 5) "Vamos falar sobre renegociação. Primeiro me conta, o que você quer renegociar?"

  Scenario: Solicitar contatos bv através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Antes de te passar os telefones, me diz sobre qual assunto você quer falar. 😃"

    Examples:
      | intent                 |
      | qual telefone do BV    |
      | qual o numero de voces |
      | voces tem telefone     |

  Scenario: Solicitar contatos bv (Financiamento)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "qual telefone do BV"
    And enviar a mensagem
    And clicar no botao "Financiamento"
    Then validar conteudo (ballon 5) "Para falar sobre financiamento e empréstimos é só ligar para:"
    And validar conteudo (ballon 5) "📞 3003 1616"
    And validar conteudo (ballon 5) "Capitais e regiões metropolitanas"
    And validar conteudo (ballon 5) "📞 0800 701 8600"
    And validar conteudo (ballon 5) "Nós também temos um número especial para atender deficientes auditivos e de fala."
    And validar conteudo (ballon 5) "📞 0800 701 86 61"
    And validar conteudo (ballon 5) "⏰De segunda a sexta das 9h às 18h, menos em feriados nacionais."

  Scenario: Solicitar contatos bv (Cartao)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "qual telefone do BV"
    And enviar a mensagem
    And clicar no botao "Cartão"
    Then validar conteudo (ballon 5) "Para falar sobre os cartões BV e Dotz BV é só ligar para:"
    And validar conteudo (ballon 5) "📞 3003 7728"
    And validar conteudo (ballon 5) "Capitais e regiões metropolitanas"
    And validar conteudo (ballon 5) "📞 0800 777 2828"
    And validar conteudo (ballon 5) "Outras regiões"
    And validar conteudo (ballon 6) "Já se for sobre cartão Platinum os telefones são:"
    And validar conteudo (ballon 6) "📞 3003 0086"
    And validar conteudo (ballon 6) "Capitais e regiões metropolitanas"
    And validar conteudo (ballon 6) "📞 0800 777 8686"
    And validar conteudo (ballon 6) "Outras regiões"
    And validar conteudo (ballon 7) "Nós também temos um número especial para atender deficientes auditivos e de fala."
    And validar conteudo (ballon 7) "📞 0800 771 0755"
    And validar conteudo (ballon 7) "É necessário usar um telefone adaptado neste caso."
    And validar conteudo (ballon 7) "⏰ Estamos prontos para te atender 24 horas, todos os dias."
