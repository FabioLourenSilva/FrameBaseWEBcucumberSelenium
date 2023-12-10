Feature: ChitChat 2 no site

  Scenario: ChitChat idade do bot (Intenções)
    Given que acessei o chatbot do eva (Web)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Vou te contar um segredo: aqui no mundo virtual, o tempo é infinito, então não contamos a idade. Demais, né? Posso viver pra sempre, mas te garanto que não sou um vampiro. 😅 Já no mundo real, sei que o tempo passa rápido e é precioso. Por isso, o BV tem produtos e serviços que te ajudam a ter mais tempo para o que realmente importa na vida. ⏰ Posso te ajudar com algum assunto do BV?"

    Examples:
      | intent                 |
      | Quantos anos você tem? |
#      | Qtos anos vc tem?      |
#      | Qual a sua idade       |
#      | Você tem quantos anos? |
#      | Vc tem quantos anos?   |
#      | Qual tua idade?        |