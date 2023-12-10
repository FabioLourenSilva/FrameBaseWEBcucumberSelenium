@REGRESSIVO_APP
Feature: Regressivo app

  #Alteração cadastral

  Scenario Outline: Solicitar alteração cadastral através das intenções de email, telefone e endereço
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Você pode alterar direto na Minha BV os seus dados cadastrados. É só:"
    And validar conteudo (ballon 3) "Ir na Área do cliente no site BV e acessar a Minha BV com CPF e senha"
    And validar conteudo (ballon 3) "Tocar no seu nome no canto superior direito da tela"
    And validar conteudo (ballon 3) "Escolher o dado que vai alterar e selecionar Continuar para validação"
    And validar conteudo (ballon 3) "A partir daí, siga as instruções na tela. 😉"

    Examples:
      | intent               |
      | Alterar meu email    |
      | Alterar meu telefone |
      | Alterar meu endereço |

  Scenario: Solicitar alteração cadastral (AppBV), contendo o cartão bv até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Quero mudar minha senha"
    And enviar a mensagem
    And clicar no botao "App BV"
    And validar conteudo (ballon 5) "Só mais uma pergunta: você tem um Cartão BV?"
    And clicar no botao "Sim"
    And validar conteudo (ballon 7) "Ah! Só pra te lembrar: a senha da Minha BV é a mesma do app BV."
    And validar conteudo (ballon 7) "Para alterá-la aqui pelo app, você precisa:"
    And validar conteudo (ballon 7) "Ir no seu perfil, que fica no ícone no canto superior direito da tela inicial"
    And validar conteudo (ballon 7) "Escolher Sair do app"
    And validar conteudo (ballon 7) "Digitar seu CPF se ele ainda não estiver aparecendo e tocar em Esqueci minha senha"
    And validar conteudo (ballon 7) "A partir dali, é só seguir as instruções da tela. 😉"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 9) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"


# Antecipar pagamentos

  Scenario: Solicitar antecipação de parcela
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Quero antecipar boleto financiamento"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Entendi que você quer fazer uma antecipação. Você gostaria de antecipar o pagamento da sua fatura ou seu boleto de financiamento?"
    And clicar no botao "Boleto de financiamento"
    And validar conteudo (ballon 5) "você pode adiantar qualquer parcela do seu contrato e o valor do desconto nos juros vai ser proporcional ao período que você escolheu para antecipar o pagamento."
    And validar conteudo (ballon 5) "Ou seja: quanto mais antecipado, maior o desconto."
    And validar conteudo (ballon 6) "Para antecipar o boleto da sua parcela atual, você precisa:"
    And validar conteudo (ballon 6) "Acessar a tela inicial do app"
    And validar conteudo (ballon 6) "Ir em Meus veículos → Antecipar"
    And validar conteudo (ballon 6) "Alterar a data de vencimento do boleto → Gerar boleto"
    And validar conteudo (ballon 6) "Pronto! É só copiar o código de barras ou baixar o PDF do seu boleto."

  Scenario: Solicitar antecipação de parcela através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Entendi que você quer fazer uma antecipação. Você gostaria de antecipar o pagamento da sua fatura ou seu boleto de financiamento?"

    Examples:
      | intent                               |
      | Quero antecipar boleto financiamento |
      | antecipar boleto                     |
      | pagar antes da data                  |

    #Autorização celular

  Scenario: Solicitar autorização do celular através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para autorizar o seu celular e liberar todas as funções do app, você precisa:"
    And validar conteudo (ballon 3) "Ir na tela inicial"
    And validar conteudo (ballon 3) "Tocar em Perfil, que fica no ícone no canto superior direito"
    And validar conteudo (ballon 3) "Escolher Configurações → Liberar todas as funções no menu App BV"
    And validar conteudo (ballon 3) "Pronto! É só seguir as instruções da tela a partir dali."


    Examples:
      | intent                            |
      | preciso autorizar celular         |
      | Autorizar celular                 |
      | não deu certo habilitar o celular |

  Scenario: Solicitar autorização do celular, problemas em autorizar (Meu celular está errado) até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "preciso autorizar celular"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Para autorizar o seu celular e liberar todas as funções do app, você precisa:"
    And clicar no botao "Já tentei isso"
    And validar conteudo (ballon 5) "Entendi que você tentou autorizar o seu celular para liberar todas as funções do app BV e não deu certo."
    And clicar no botao "Meu celular está errado"
    Then validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"


#    Bloqueio de cartao

  Scenario: Solicitar bloqueio do cartao atraves das intencoes
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para que eu possa te ajudar melhor, preciso saber: o que aconteceu com seu cartão?"

    Examples:
      | intent                            |
      | Quero bloquear meu cartão         |
      | Preciso bloquear meu cartão       |
      | Realizar o bloqueio do meu cartão |

  Scenario: Solicitar bloqueio do cartao (foi perdido) até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Preciso bloquear meu cartão"
    And enviar a mensagem
    And clicar no botao "Foi perdido"
    And validar conteudo (ballon 5) "Que pena que isso aconteceu. 😩"
    And validar conteudo (ballon 5) "Para fazer o bloqueio pelo app, você deve fazer o seguinte:"
    And validar conteudo (ballon 5) "Acessar a tela inicial do app"
    And validar conteudo (ballon 5) "Tocar em Meus cartões → Bloquear cartão"
    And validar conteudo (ballon 5) "Escolher o cartão que precisa ser bloqueado. Só para avisar: ele também vai ser cancelado"
    And validar conteudo (ballon 5) "Selecionar Perdi meu cartão e confirmar o endereço onde você vai receber o novo cartão"
    And validar conteudo (ballon 5) "Digitar a sua senha e pronto! Seu cartão está bloqueado e cancelado"
    And validar conteudo (ballon 5) "Agora é só aguardar a chegada do novo cartão."
    And clicar no botao "Já tentei isso"
    And validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"

    # Campanha

  Scenario: Solicitar campanha através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Se você recebeu um convite com a oferta especial para abrir sua Conta BV, receberá o valor combinado em até 30 dias depois da abertura."
    And validar conteudo (ballon 3) "Já passaram 30 dias"
    And validar conteudo (ballon 3) "Mudar de assunto"

    Examples:
      | intent                  |
      | Bonus 100               |
      | Bonus 50                |
      | Quero receber os R$ 100 |

#    Comprovante de pagamento e transferencia

  Scenario: Solicitar comprovante de pagamento através das intenções
    Given que acessei o chatbot do eva (App)
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
      | quero consultar meu historico de pagamento      |
      | historico de pagamento                          |


  Scenario: Solicitar comprovante (saldo em conta) fluxo completo até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "como acesso os comprovantes"
    And enviar a mensagem
    And clicar no botao "Saldo em conta"
    And validar conteudo (ballon 5) "Para pegar um comprovante, é só:"
    And validar conteudo (ballon 5) "Acessar a tela inicial do app"
    And validar conteudo (ballon 5) "Ir em Consultar extrato"
    And validar conteudo (ballon 5) "Tocar na transação feita → Ver comprovante"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 7) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"


#    Contestar compra

  Scenario: Contestar compra através das intencoes
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Sinto muito que isso tenha acontecido, mas pode deixar que vamos tentar resolver! 😃"

    Examples:
      | intent                     |
      | Nao fiz essa compra        |
      | nao fui eu quem comprou    |
      | quero contestar uma compra |

    #   Desbloqueio de conta


  Scenario: Desbloquear cartao no app
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Você quer desbloquear o seu Cartão BV porque ele é um cartão novo ou porque foi bloqueado?"

    Examples:
      | intent                               |
      | Quero desbloquear meu cartão         |
      | Preciso desbloquear meu cartão       |
      | Realizar o desbloqueio do meu cartão |


  Scenario: Solicitar desbloqueio de cartão fluxo completo já com o recebimento do cartão novo (esqueci a senha)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Quero desbloquear meu cartão"
    And enviar a mensagem
    And clicar no botao "Novo"
    And validar conteudo (ballon 5) "Então conte pra mim: você já recebeu o seu novo cartão?"
    And clicar no botao "Sim"
    And validar conteudo (ballon 7) "Para desbloquear o novo Cartão BV pelo app, você deve:"
    And validar conteudo (ballon 7) "Acessar a tela inicial do app"
    And validar conteudo (ballon 7) "Tocar em Meus cartões → Desbloquear seu novo cartão"
    And validar conteudo (ballon 7) "Escolher o cartão que será desbloqueado"
    And validar conteudo (ballon 7) "Selecionar Recebi o meu cartão → Desbloquear cartão"
    And validar conteudo (ballon 7) "Digitar a senha de compras do seu cartão anterior"
    And clicar no botao "Esqueci minha senha"
    Then validar conteudo (ballon 9) "Neste caso, você precisa da ajuda de uma pessoa do time BV. O que prefere fazer? 😉"


    #Documento de quitação

  Scenario: Solicitar documento de quitação através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Posso te ajudar com isso! 😉 Mas me conte, você quer um documento de quitação de:"

    Examples:
      | intent                                  |
      | necessito da carta de quitação          |
      | Preciso carta de quitação               |
      | como posso pedir declaração de quitação |


  Scenario: Solicitar documento de quitação de financiamento (Declaracao anual) até transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "necessito da carta de quitação"
    And enviar a mensagem
    And clicar no botao "Financiamento"
    And validar conteudo (ballon 5) "Deixa eu te explicar. A Declaração Anual de Quitação de Débitos apresenta todos os pagamentos que você fez no ano passado em seu financiamento. Ele já serve como comprovante se você quitou a sua dívida no ano anterior."
    And validar conteudo (ballon 5) "Já a Carta de Quitação do Contrato é um comprovante que você consegue pegar a qualquer momento, desde que o financiamento esteja todo pago."
    And clicar no botao "Declaração anual"
    And validar conteudo (ballon 7) "Para pegar a sua Declaração anual de quitação de débitos, você precisa:"
    And validar conteudo (ballon 7) "Acessar o site da Minha BV com CPF e senha"
    And validar conteudo (ballon 7) "Ir em Financiamentos → Serviços"
    And validar conteudo (ballon 7) "Clicar em Declaração anual de quitação de débitos"
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 9) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"


    # Excluir conta no app

  Scenario: Solicitar ajuda através das intenções
    Given que acessei o chatbot do eva (App)
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

  Scenario: Solicitar encerramento/cancelamento, e optando por manter a conta
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "como cancelar a conta bv"
    And enviar a mensagem
    And clicar no botao "Manter minha conta"
    Then validar conteudo (ballon 6) "Que bom que você decidiu manter sua Conta BV. 😄"
    And validar conteudo (ballon 6) "Continue aproveitando todos os benefícios e conte com a gente sempre que precisar!"
    And validar conteudo (ballon 6) "Se quiser conversar sobre mais alguma coisa, é só me falar aqui."

    #Extrato

  Scenario: Solicitar extrato através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "E qual extrato você quer consultar?"

    Examples:
      | intent                      |
      | Quero ver meu extrato       |
      | Preciso de um extrato       |
      | Não consigo ver meu extrato |

  Scenario: Solicitar extrato do cartão até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Quero ver meu extrato"
    And enviar a mensagem
    And validar conteudo (ballon 3) "E qual extrato você quer consultar?"
    And clicar no botao "Fatura do cartão"
    Then validar conteudo (ballon 5) "Para consultar o extrato da sua fatura é só:"
    And validar conteudo (ballon 5) "Ir na tela inicial → Menu → Cartões"
    And validar conteudo (ballon 5) "Escolher a opção Minhas faturas"

    #Gravame

  Scenario: Se informar sobre o gravame através das intenções
    Given que acessei o chatbot do eva (App)
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
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Certo, vamos falar sobre informes do Imposto de Renda. 🦁"
    And validar conteudo (ballon 3) "Só me conta: de qual serviço BV você quer o informe?"

    Examples:
      | intent                                |
      | Informe de rendimentos                |
      | Quero meu informe de rendimentos      |
      | Preciso do meu informe de rendimentos |

    #Insultos
  Scenario: Informar insatisfação com o bot através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Desculpe por não poder te ajudar dessa vez. 😩"

    Examples:
      | intent       |
      | meu ovo      |
      | robô nojento |

    #chitchat

  Scenario: Cumprimentar o bot através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Oi, fico feliz em te ver por aqui! 😁"
    And validar conteudo (ballon 3) "Me diz, como posso te ajudar?"

    Examples:
      | intent   |
      | olá      |
      | Oi       |
      | Tudo bem |

    #Onboarding
  Scenario: Solicitar abertura de conta através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "A Conta BV é grátis e 100% digital. Para abrir a sua é só:"
    And validar conteudo (ballon 3) "Selecionar Abrir minha Conta BV na tela inicial do app"
    And validar conteudo (ballon 3) "Permitir acesso à câmera do seu celular e tirar uma foto do seu rosto "
    And validar conteudo (ballon 3) "Tocar na seta azul no final da tela para continuar"
    And validar conteudo (ballon 3) "Tirar foto da sua CNH ou do seu RG"

    Examples:
      | intent                          |
      | Quero abrir minha conta         |
      | como faço pra abrir minha conta |
      | abertura de conta digital       |

  Scenario: Solicitar abertura de conta, dizer que esta com problemas na abertura (tirar foto do documento), fluxo completo
    Given que acessei o chatbot do eva (App)
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

    # Pagamentos

  Scenario: Solicitar pagamentos através de intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Me conta só mais uma coisinha: o que você quer pagar?"

    Examples:
      | intent                     |
      | Quero fazer um pagamento   |
      | Preciso fazer um pagamento |
      | pagar                      |

  Scenario: Solicitar pagamentos de financiamentos através de intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Você gostaria do seu boleto:"

    Examples:
      | intent                                          |
      | pagar financiamento                             |
      | quero fazer o pagamento do meu financiamento    |
      | Preciso fazer um pagamento do meu financiamento |

  Scenario: Solicitar pagamentos de boletos através de intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Você gostaria de pagar um boleto de:"

    Examples:
      | intent                                 |
      | preciso pagar um boleto                |
      | Quero fazer um pagamento do meu boleto |
      | Preciso fazer um pagamento do boleto   |

  Scenario: Solicitar pagamentos de boletos através de intenções até transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "efetuar pagamento"
    And enviar a mensagem
    And clicar no botao "Financiamento de veículos"
    And validar conteudo (ballon 5) "Você gostaria do seu boleto:"
    And clicar no botao "Em aberto"
    And validar conteudo (ballon 7) "Agora me diz, o que você quer pagar?"
    And clicar no botao "Parcela atual"
    And validar conteudo (ballon 9) "Para pegar o boleto da sua parcela atual, você precisa:"
    And validar conteudo (ballon 9) "Acessar a tela inicial do app"
    And validar conteudo (ballon 9) "Ir em Meus veículos → Pagar Parcela → Gerar boleto"
    Then validar conteudo (ballon 9) "Pronto! É só copiar o código de barras ou baixar o PDF do seu boleto"

  Scenario: Solicitar pagamento do financiamento de veiculos (Parcelas atrasadas)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "efetuar pagamento"
    And enviar a mensagem
    And clicar no botao "Financiamento de veículos"
    And validar conteudo (ballon 5) "Você gostaria do seu boleto:"
    And clicar no botao "Em aberto"
    And validar conteudo (ballon 7) "Agora me diz, o que você quer pagar?"
    And clicar no botao "Parcelas atrasadas"
    Then validar conteudo (ballon 9) "Para pegar o boleto da sua parcela atrasada, você tem que:"
    And validar conteudo (ballon 9) "Acessar a tela inicial do app"
    And validar conteudo (ballon 9) "Ir em Meus veículos → Pagar Parcela → Gerar boleto"
    And validar conteudo (ballon 9) "Caso tenha mais de uma parcela atrasada, você precisa escolher qual quer pagar depois de selecionar Pagar Parcela."
    And validar conteudo (ballon 9) " Dica: você pode selecionar mais de uma parcela pra pagar tudo em apenas um boleto."


    #Parcelamento
  Scenario: Solicitar parcelamento através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Ah! Deixa eu te lembrar: você só pode pagar a fatura do seu cartão quando ela estiver fechada, tudo bem?"
    And validar conteudo (ballon 3) "Se quer parcelar a fatura fechada do seu Cartão BV, você precisa:"
    And validar conteudo (ballon 3) "Acessar a tela inicial do app"
    And validar conteudo (ballon 3) "Ir em Meus cartões"
    And validar conteudo (ballon 3) "Tocar em Ver fatura → Pagar fatura"
    And validar conteudo (ballon 3) "Selecionar Quero parcelar e escolher a melhor opção pra você"
    And validar conteudo (ballon 3) "Tocar em Continuar para pagamento"


    Examples:
      | intent                     |
      | Parcelar                   |
      | Fazer um parcelamento      |
      | gostaria de pagar em vezes |

    #Milhas
  Scenario: Informar sobre problemas com milhas através das intenções intenções
    Given que acessei o chatbot do eva (App)
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
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Ah, tudo bem. Você pode simular aqui mesmo pelo app, é só:"
    And validar conteudo (ballon 3) "Na tela inicial, acessar a opção Meus Veículos"
    And validar conteudo (ballon 3) "Lá você vai ver um resumo com a quantidade de parcelas pagas, próxima data de vencimento e a parcela em aberto"
    And validar conteudo (ballon 3) "Toque no botão +"
    And validar conteudo (ballon 3) "Por fim, toque em Quitar financiamento e selecione todas as parcelas"
    And validar conteudo (ballon 3) "No final, vai aparecer o valor total a pagar, a opção de gerar o boleto ou se deseja utilizar o saldo da sua conta BV para quitação"

    Examples:
      | intent                               |
      | Quitar o financiamento               |
      | Pagar por completo meu financiamento |
      | Zerar a dívida de financiamento      |

    #Rastreio do cartao

  Scenario: Solicitar rastreio do cartao através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Acompanhar a entrega do seu cartão aqui pelo app BV é bem fácil."

    Examples:
      | intent              |
      | rastrear cartão     |
      | Rastrear meu cartão |
      | Entrega cartão      |

  Scenario: Solicitar rastreio do cartao de debito e credito da conta, até transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Quando chegar cartão"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Acompanhar a entrega do seu cartão aqui pelo app BV é bem fácil."
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 5) "Nesse caso, eu posso chamar uma pessoa do time BV pra te ajudar com isso."

    #Reneg
  Scenario: Solicitar renegociação através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Vamos falar sobre renegociação. Primeiro me conta, o que você quer renegociar?"


    Examples:
      | intent                        |
      | Renegociar meu carro          |
      | Renegociar meu financiameto   |
      | Rever minhas parcelas abertas |

    #Saque com cartao de credito

  Scenario: Solicitar saque do cartão de crédito através das intenções
    Given que acessei o chatbot do eva (App)
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
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "quero sacar com cartao de credito"
    And enviar a mensagem
    And clicar no botao "Ver limite disponível"
    Then validar conteudo (ballon 5) "Para ver o limite disponível pra saque aqui pelo app é só:"
    And validar conteudo (ballon 5) "Ir na tela inicial do app"
    And validar conteudo (ballon 5) "Escolher a opção Meus Cartões"
    And validar conteudo (ballon 5) "Tocar nos três pontos do canto superior direito → Informações gerais → Limites e taxas"

    #Seg via de contrato

  Scenario: Solicitar segunda via de contrato através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Agora só me conta se você tem um contrato ou mais de um com o BV."
    And validar conteudo (ballon 3) "Apenas um"
    And validar conteudo (ballon 3) "Mais de um"
    And validar conteudo (ballon 3) "Contrato quitado"

    Examples:
      | intent                              |
      | Quero minha segunda via de contrato |
      | Preciso da 2 via do meu contrato    |
      | 2 via do contrato                   |

    #Transbordo
  Scenario: Solicitar boleto do financiamento através de intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Eu consigo te ajudar com vários assuntos de forma rápida! 😉"

    Examples:
      | intent                    |
      | Atendimento humano        |
      | Quero falar com um humano |
      | Me transfere pra humano   |

    #Transferencia de financiamento
  Scenario: Solicitar sobre transferência de dívida através das intenções
    Given que acessei o chatbot do eva (App)
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
    Given que acessei o chatbot do eva (App)
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
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "ted"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para fazer uma TED, você precisa:"
    And validar conteudo (ballon 3) "Acessar a tela inicial do app"
    And validar conteudo (ballon 3) "Tocar em Fazer transferência"
    And validar conteudo (ballon 3) "Colocar os dados solicitados na tela"
    And validar conteudo (ballon 3) "Escolher a forma da transferência em Via → TED"

    #Trocar data da fatura
  Scenario: Solicitar mudança da data de vencimento do cartão através das intenções
    Given que acessei o chatbot do eva (App)
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
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Alterar a data do vencimento do cartão de crédito "
    And enviar a mensagem
    And clicar no botao "Fatura do cartão"
    And validar conteudo (ballon 5) "Entendi que você quer falar sobre fatura do cartão."
    And clicar no botao "Consulta da fatura"
    Then validar conteudo (ballon 7) "Para acessar a fatura do seu Cartão BV, você precisa:"

    #Ver fatura

  Scenario: Solicitar a visualização da fatura através da intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para acessar a fatura do seu Cartão BV, você precisa:"
    And validar conteudo (ballon 3) "Acessar a tela inicial do app"
    And validar conteudo (ballon 3) "Ir em Meus cartões → Ver fatura"
    And validar conteudo (ballon 3) "Pronto! Ali você pode ver todos os lançamentos da sua fatura. Se quiser a segunda via da fatura, escolha abaixo a opção referente a segunda via."
    And validar conteudo (ballon 3) "Segunda via da fatura"
    And validar conteudo (ballon 3) "Deixar para depois"

    Examples:
      | intent                     |
      | Ver fatura                 |
      | visualizar a minha fatura  |
      | to precisando ver a fatura |

    #Emprestimo

  Scenario: Solicitar emprestimo (Refinanciamento de veículo)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Estou precisando de dinheiro"
    And enviar a mensagem
    And clicar no botao "Refinanciamento"
    And validar conteudo (ballon 5) "Me conta, você quer refinanciar o seu:"
    And eu digitar a intencao "Veículo"
    And enviar a mensagem
    Then validar conteudo (ballon 7) "O BV refinancia veículos leves com até 15 anos de uso e caminhões com até 20 anos. Você pode ter um crédito de até 80% do valor do seu veículo e parcelar em até 48 vezes."
    And validar conteudo (ballon 7) "É importante lembrar que, para fazer um refinanciamento, o veículo precisa estar financiado no seu nome e é preciso ter quitado, no mínimo, 50% das parcelas do contrato."

  Scenario: Solicitar refinanciamento através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Me conta, você quer refinanciar o seu:"

    Examples:
      | intent                       |
      | Refinanciar                  |
      | quero refinanciar meu carro  |
      | quero refinanciar minha moto |

  Scenario: Solicitar emprestimo, opção crédito pessoal
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Estou precisando de dinheiro"
    And enviar a mensagem
    And clicar no botao "Crédito Pessoal"
    Then validar conteudo (ballon 5) "Você pode simular e contratar o crédito pessoal pelo app ou pelo site."

    # Carne digital
  Scenario: Carnê digital (intenções)
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para pegar a 2ª via do carnê você precisa:"
    And validar conteudo (ballon 3) "Acessar o site da Minha BV com CPF e senha"
    And validar conteudo (ballon 3) "Clicar em Financiamento → 2ª via do carnê"

    Examples:
      | intent                  |
      | Quero carne             |
      | Quero meu carne digital |
      | Carnê                   |

  Scenario: Solicitar carnê digital, até o transbordo
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "Quero carne"
    And enviar a mensagem
    And clicar no botao "Já tentei isso"
    Then validar conteudo (ballon 5) "Hmm, entendi! Vou chamar uma pessoa do time BV aqui pra te ajudar, tudo bem? 😉"

#    Cancelamento do cartao

  Scenario: Cancelamento de cartão através das intenções
    Given que acessei o chatbot do eva (App)
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

  Scenario: Cancelamento de cartão e optar pela continuidade do cartão
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "gostaria de cancelar o cartão"
    And enviar a mensagem
    And clicar no botao "Sim"
    Then validar conteudo (ballon 6) "Que bom que você decidiu manter o seu cartão."
    And validar conteudo (ballon 6) "Continue aproveitando todos os benefícios e conte com a gente sempre que precisar!"
    And validar conteudo (ballon 6) "Se quiser conversar sobre mais alguma coisa, é só me falar aqui."

#    Compensação de pagamentos

  Scenario: Solicitar compensação de pagamento através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Para que eu possa te ajudar melhor, me fale, qual boleto você pagou?"

    Examples:
      | intent                                         |
      | Tá falando que nao está pago, mas eu já paguei |
      | ta falando que nao esta pago, mas eu ja paguei |
      | não consta meu pagamento                       |

  Scenario: Solicitar compensação de pagamento da fatura do cartão bv (Passou do prazo), até o transbordo
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "não consta meu pagamento"
    And enviar a mensagem
    And clicar no botao "Cartão BV"
    And validar conteudo (ballon 5) "A compensação do pagamento acontece em até dois dias úteis, se ainda não passou desse prazo, aguarde, logo sua fatura aparecerá como paga."
    And validar conteudo (ballon 5) "Se o prazo de compensação passou, clique em"
    And validar conteudo (ballon 5) "Agora, se quiser saber mais sobre como funciona o limite do seu cartão, clique no botão"
    And clicar no botao "Passou do prazo"
    Then validar conteudo (ballon 7) "Nesse caso, alguém do time BV pode te ajudar. Para facilitar o atendimento tenha em mãos o boleto pago e o comprovante do seu pagamento."

  Scenario: Solicitar acompanhamento do cartão através das intenções
    Given que acessei o chatbot do eva (App)
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
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "gostaria de cancelar o cartão"
    And enviar a mensagem
    And clicar no botao "Sim"
    Then validar conteudo (ballon 6) "Que bom que você decidiu manter o seu cartão."
    And validar conteudo (ballon 6) "Continue aproveitando todos os benefícios e conte com a gente sempre que precisar!"
    And validar conteudo (ballon 6) "Se quiser conversar sobre mais alguma coisa, é só me falar aqui."

  Scenario: Solicitar credito pessoal e saber informações sobre o App BV
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "contratar credito pessoal"
    And enviar a mensagem
    And clicar no botao "App BV"
    Then validar conteudo (ballon 6) "Aqui no app, quem tem conta no BV consegue conferir qual é o seu limite pré aprovado."
    And validar conteudo (ballon 6) "clicar em Créditos e selecionar a opção Crédito pessoal"
    And validar conteudo (ballon 6) "E a tela vai mostrar o valor pré aprovado de acordo com análise do seu perfil."
    And validar conteudo (ballon 6) "Ao clicar no botão Simular você escolhe o número de parcelas e a data de pagamento."
    And validar conteudo (ballon 7) "A simulação mostra o valor que você solicitou de crédito pessoal e detalha"
    And validar conteudo (ballon 7) "o número e o valor das parcelas fixas"
    And validar conteudo (ballon 7) "a taxa de juros do crédito"
    And validar conteudo (ballon 7) "e o valor final que você vai pagar."
    And validar conteudo (ballon 7) "Dá pra simular quantas vezes precisar, até achar uma parcela que caiba no seu orçamento."
    And validar conteudo (ballon 7) "Pra contratar, é preciso confirmar o pedido com a senha do cartão."
    And validar conteudo (ballon 8) "Mas se você não encontrar o limite pré aprovado de Crédito Pessoal no seu perfil do app, tem outra opção: fazer a simulação pelo site."
    And validar conteudo (ballon 8) "Pode clicar aqui que te redireciono agora mesmo."
    And validar conteudo (ballon 8) "E se eu puder te ajudar com mais alguma coisa, só avisar!"

  Scenario: Perguntar sobre entrega amigável através das intenções
    Given que acessei o chatbot do eva (App)
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
    Given que acessei o chatbot do eva (App)
    And eu digitar a intencao "Quero devolver o carro pro banco"
    And enviar a mensagem
    And clicar no botao "Renegociar minha dívida"
    Then validar conteudo (ballon 5) "Vamos falar sobre renegociação. Primeiro me conta, o que você quer renegociar?"

  Scenario: Solicitar contatos bv através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Antes de te passar os telefones, me diz sobre qual assunto você quer falar. 😃"

    Examples:
      | intent                 |
      | qual telefone do BV    |
      | qual o numero de voces |
      | voces tem telefone     |

  Scenario: Solicitar contatos bv (Financiamento)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "qual telefone do BV"
    And enviar a mensagem
    And clicar no botao "Financiamento"
    Then validar conteudo (ballon 5) "Para falar sobre financiamento e empréstimos é só ligar para:"
    And validar conteudo (ballon 5) "📞 3003 1616"
    And validar conteudo (ballon 5) "Capitais e regiões metropolitanas"
    And validar conteudo (ballon 5) "📞 0800 701 8600"
    And validar conteudo (ballon 5) "Nós também temos um número especial para atender deficientes auditivos e de fala."
    And validar conteudo (ballon 5) "📞 0800 701 86 61"
    And validar conteudo (ballon 5) "É necessário usar um telefone adaptado neste caso."
    And validar conteudo (ballon 5) "⏰De segunda a sexta das 9h às 18h, menos em feriados nacionais."

  Scenario: Solicitar contatos bv (Cartao)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "qual é o telefone do bv"
    And enviar a mensagem
    And clicar no botao "Cartão"
    Then validar conteudo (ballon 5) "Para falar sobre os cartões BV e Dotz BV é só ligar para:"
    And validar conteudo (ballon 5) "📞 3003 7728"
    And validar conteudo (ballon 5) "Capitais e regiões metropolitanas"
    And validar conteudo (ballon 5) "📞 0800 777 2828"
    And validar conteudo (ballon 5) "Outras regiões"
    And validar conteudo (ballon 6) "Já se for sobre cartão Platinum os telefones são:"
    And validar conteudo (ballon 6) "📞 3003 0086"
    And validar conteudo (ballon 5) "Capitais e regiões metropolitanas"
    And validar conteudo (ballon 6) "📞 0800 777 8686"
    And validar conteudo (ballon 6) "Outras regiões"
    And validar conteudo (ballon 7) "Nós também temos um número especial para atender deficientes auditivos e de fala."
    And validar conteudo (ballon 7) "📞 0800 771 0755"
    And validar conteudo (ballon 7) "É necessário usar um telefone adaptado neste caso."
    And validar conteudo (ballon 7) "⏰ Estamos prontos para te atender 24 horas, todos os dias"

  Scenario: Solicitar empréstimo (Crédito veículo garantia) optando pelo simulação
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "Empréstimo com meu carro em garantia"
    And enviar a mensagem
    And clicar no botao "Crédito Veículo Garantia"
    Then validar conteudo (ballon 5) "No BV, você pode usar seu veículo para conseguir crédito com taxas mais baixas"
    And validar conteudo (ballon 5) "Você pode conseguir até 90% do valor do veículo e pagar em até 5 anos, com parcelas fixas"
    And validar conteudo (ballon 6) "Para conseguir o crédito você precisa:"
    And validar conteudo (ballon 6) "Estar com o contrato de financiamento ativo;"
    And validar conteudo (ballon 6) "Ter no mínimo 3 parcelas pagas;"
    And validar conteudo (ballon 6) "Não ter pagamentos atrasados;"
    And validar conteudo (ballon 6) "Documentação do veículo no nome do titular do contrato;"
    And validar conteudo (ballon 6) "E não ter débitos pendentes, como multa, IPVA ou alienação."
    And validar conteudo (ballon 7) "Ah! Importante:"
    And validar conteudo (ballon 7) "Se o veículo teve algum sinistro, informe no momento da solicitação de crédito o número do Boletim de Ocorrência, ok? Esse documento será importante para a avaliação"
    And validar conteudo (ballon 8) "Entre em contato para solicitar sua proposta"
    And validar conteudo (ballon 8) "3003 7888"
    And validar conteudo (ballon 8) "Capitais e regiões metropolitanas"
    And validar conteudo (ballon 8) "0800 011 7888"
    And validar conteudo (ballon 8) "Outras Localidades"
    And validar conteudo (ballon 8) "Segunda a Sexta, de 8h às 20h40 e Sábado, de 10h às 16h"
    And validar conteudo (ballon 9) "Ou, se preferir, encontre a loja BV mais próxima e fale com a gerência de relacionamento. Você também pode simular o financiamento no site."
