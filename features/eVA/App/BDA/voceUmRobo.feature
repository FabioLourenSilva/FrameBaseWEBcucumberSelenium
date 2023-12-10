Feature: Chitchat no app

  Scenario: ChitChat Voce e um robo (Intenções)
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Sou um assistente virtual com uma motivação real de deixar o seu dia a dia mais leve. 💙"

    Examples:
      | intent                  |
      | Quem é você?            |
      | Com quem estou falando? |
      | Você é um robô?         |
      | Você é humano?          |
      | Estou falando com quem? |
      | Quem tá falando?        |
      | Quem é vc?              |
      | Vc é humano?            |
      | To falando com quem?    |