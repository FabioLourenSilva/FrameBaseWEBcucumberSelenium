Feature: Número oficial WhatsApp

  @CT1-NUMERO-OFICIAL-WPP
  Scenario: Perguntar sobre o número oficial BV através das intenções
    Given que acessei o chatbot do eva (WhatsApp)
    And eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Aqui é um canal oficial do banco BV verificado pelo Whatsapp, então não precisa se preocupar. 💙"
    Then validar conteudo (ballon 3) "Eu posso te ajudar com o código de barras do boleto em dia ou em atraso do seu financiamento de veículo."
    Then validar conteudo (ballon 3) "Quero meu boleto"

    Examples:
      | intent                                |
      | Esse WhatsApp é do BV?                |
      | Esse número é oficial?                |
      | Esse número é valido?                 |
      | Posso falar com o BV por aqui?        |
      | Consigo falar com o BV pelo WhatsApp? |
      | Esse WhatsApp é real?                 |
      | Como sei que esse WhatsApp é do BV?   |
      | Esse número é do BV?                  |