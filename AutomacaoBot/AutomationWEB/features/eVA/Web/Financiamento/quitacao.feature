Feature: Quitação no site

  Scenario: Solicitar quitação através das intenções
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Legal!"
    And validar conteudo (ballon 3) "Ao quitar o financiamento antes do prazo, você recebe um desconto proporcional ao tempo de antecipação"
    And validar conteudo (ballon 4) "Aqui pelo chat, eu calculo o valor total para quitação antecipada e gero uma linha digitável para pagamento"
    And validar conteudo (ballon 4) "Linha digitável corresponde aos números que compõe o código de barras do seu boleto"
    And validar conteudo (ballon 4) "Podemos continuar por aqui?"
    And validar conteudo (ballon 4) "Linha digitável do boleto"
    And validar conteudo (ballon 4) "Deixar para depois"

    Examples:
      | intent                               |
      | Quitar o financiamento               |
#      | Pagar por completo meu financiamento |
#      | Zerar a dívida                       |
#      | pagar tudo o que devo                |
#      | fazer uma quitação                   |
#      | Quitação                             |
#      | pagar todo valor restante            |
#      | pagar o que resta                    |
#      | quitar o carro                       |
#      | quitar o veículo                     |
#      | quitar a moto                        |
#      | quero quitar o meu financiamento     |
#      | quitar meu financiamento             |

  Scenario: Solicitar quitação de financiamento de veículos
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "quero quitar"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Claro!"
    And validar conteudo (ballon 3) "Me conta o que você quer quitar hoje:"
    And clicar no botao "Financiamento de veículos"
    Then validar conteudo (ballon 5) "Legal!"
    And validar conteudo (ballon 5) "Ao quitar o financiamento antes do prazo, você recebe um desconto proporcional ao tempo de antecipação"
    And validar conteudo (ballon 6) "Aqui pelo chat, eu calculo o valor total para quitação antecipada e gero uma linha digitável para pagamento"
    And validar conteudo (ballon 6) "Linha digitável corresponde aos números que compõe o código de barras do seu boleto"
    And validar conteudo (ballon 6) "Podemos continuar por aqui?"
    And validar conteudo (ballon 6) "Linha digitável do boleto"
    And validar conteudo (ballon 6) "Deixar para depois"

  Scenario: Solicitar quitação (outros financiamentos - simular pelo site)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "quero quitar"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Claro!"
    And validar conteudo (ballon 3) "Me conta o que você quer quitar hoje:"
    And clicar no botao "Outros financiamentos"
    And validar conteudo (ballon 5) "Ótimo!"
    And validar conteudo (ballon 5) "Você pode simular os valores, pegar o boleto para quitação (de um financiamento ou de crédito) e receber um desconto proporcional ao tempo de antecipação."
    And validar conteudo (ballon 5) "Você deseja fazer a simulação aqui pelo site ou pelo app banco BV?"
    And clicar no botao "Quero pelo site"
    And validar conteudo (ballon 7) "Ah, tudo bem. Para simular no site, siga o passo a passo"
    And validar conteudo (ballon 7) "Acessar a Minha BV com CPF e senha"
    And validar conteudo (ballon 7) "Ir em Financiamento, no canto superior esquerdo"
    And validar conteudo (ballon 7) "Se tiver mais de um contrato, selecione o que deseja quitar"
    And validar conteudo (ballon 7) "Clicar em Quitar contrato"
    And validar conteudo (ballon 7) "Lá você vai ver quantas parcelas faltam e o valor para quitação"
    And validar conteudo (ballon 7) "Para quitar, clicar em Gerar boleto"
    And validar conteudo (ballon 7) "Pronto! Agora é só copiar o código de barras ou baixar o PDF do seu boleto"

  Scenario: Solicitar quitação (outros financiamentos - simular pelo app)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "quero quitar"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Claro!"
    And validar conteudo (ballon 3) "Me conta o que você quer quitar hoje:"
    And clicar no botao "Outros financiamentos"
    And validar conteudo (ballon 5) "Ótimo!"
    And validar conteudo (ballon 5) "Você pode simular os valores, pegar o boleto para quitação (de um financiamento ou de crédito) e receber um desconto proporcional ao tempo de antecipação."
    And validar conteudo (ballon 5) "Você deseja fazer a simulação aqui pelo site ou pelo app banco BV?"
    And clicar no botao "Quero pelo app"
    And validar conteudo (ballon 7) "Ah, tudo bem. Para simular pelo app, siga o passo a passo"
    And validar conteudo (ballon 7) "Na tela inicial, acessar a opção Créditos e soluções"
    And validar conteudo (ballon 7) "Ir em Quitar contrato"
    And validar conteudo (ballon 7) "Lá você vai ver um resumo com a quantidade de parcelas pagas, próxima data de vencimento e as parcelas em aberto"
    And validar conteudo (ballon 7) "Por fim, toque em Gerar boleto para efetuar o pagamento"
    And validar conteudo (ballon 7) "No final, vai aparecer o valor total a pagar, a opção de gerar o boleto, ou se deseja utilizar o saldo da sua conta BV para quitação."
