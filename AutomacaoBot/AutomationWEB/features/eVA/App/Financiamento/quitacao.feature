Feature: Quitação no app

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

  Scenario: Solicitar quitação de boleto (FIV)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "quero quitar"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Claro!"
    And validar conteudo (ballon 3) "Me conta o que você quer quitar hoje:"
    And clicar no botao "Financiamento de veículos"
    Then validar conteudo (ballon 5) "Ah, tudo bem. Você pode simular aqui mesmo pelo app, é só:"
    And validar conteudo (ballon 5) "Na tela inicial, acessar a opção Meus Veículos"
    And validar conteudo (ballon 5) "Lá você vai ver um resumo com a quantidade de parcelas pagas, próxima data de vencimento e a parcela em aberto"
    And validar conteudo (ballon 5) "Toque no botão +"
    And validar conteudo (ballon 5) "Por fim, toque em Quitar financiamento e selecione todas as parcelas"
    And validar conteudo (ballon 5) "No final, vai aparecer o valor total a pagar, a opção de gerar o boleto ou se deseja utilizar o saldo da sua conta BV para quitação"

  Scenario: Solicitar quitação de boleto (Outros financiamentos - Solar/Estudantil)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "quero quitar"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Claro!"
    And validar conteudo (ballon 3) "Me conta o que você quer quitar hoje:"
    And clicar no botao "Outros financiamentos"
    And validar conteudo (ballon 5) "Você deseja falar sobre:"
    And clicar no botao "Financiamento Solar ou Estudantil"
    Then validar conteudo (ballon 7) "Se você tiver Financiamento (Solar e/ou Estudantil), pode simular valores e pegar o boleto para quitação na Minha BV"
    And validar conteudo (ballon 7) "Ah, e ainda receber um desconto proporcional ao tempo de antecipação"
    And validar conteudo (ballon 7) "Para simular, siga o passo a passo:"
    And validar conteudo (ballon 7) "Acessar o site da Minha BV com CPF e senha"
    And validar conteudo (ballon 7) "Ir em Financiamento, no canto superior esquerdo"
    And validar conteudo (ballon 7) "Se tiver mais de um contrato, selecione o que deseja quitar"
    And validar conteudo (ballon 7) "Clicar em Quitar contrato"
    And validar conteudo (ballon 7) "Lá você vai ver quantas parcelas faltam e o valor para quitação"
    And validar conteudo (ballon 7) "Para quitar, clicar em Gerar boleto"
    And validar conteudo (ballon 7) "Pronto! Agora é só copiar o código de barras ou baixar o PDF do seu boleto."

  Scenario: Solicitar quitação de boleto (Outros financiamentos - Crédito e soluções)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "quero quitar"
    And enviar a mensagem
    And validar conteudo (ballon 3) "Claro!"
    And validar conteudo (ballon 3) "Me conta o que você quer quitar hoje:"
    And clicar no botao "Outros financiamentos"
    And validar conteudo (ballon 5) "Você deseja falar sobre:"
    And clicar no botao "Crédito BV"
    Then validar conteudo (ballon 7) "Se você tiver Crédito BV, pode simular valores e pegar o boleto para quitação aqui no app BV."
    And validar conteudo (ballon 7) "Ah, e ainda receber um desconto proporcional ao tempo de antecipação"
    And validar conteudo (ballon 7) "Para simular, siga o passo a passo:"
    And validar conteudo (ballon 7) "Na tela inicial, acessar a opção Créditos e soluções"
    And validar conteudo (ballon 7) "Ir em Quitar contrato"
    And validar conteudo (ballon 7) "Lá você você vai ver um resumo com a quantidade de parcelas pagas, próxima data de vencimento e as parcelas em aberto"
    And validar conteudo (ballon 7) "Por fim, toque em Gerar boleto para efetuar o pagamento"
    And validar conteudo (ballon 7) "No final, vai aparecer o valor total a pagar, a opção de gerar o boleto, ou se deseja utilizar o saldo da sua conta BV para quitação."
