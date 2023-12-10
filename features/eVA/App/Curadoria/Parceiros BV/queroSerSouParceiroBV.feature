Feature: quero ser parceiro bv app

  @CT1-SER-PARCEIRO-APP
  Scenario: Solicitar parceria BV através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Se você quer ser um parceiro BV acesse nosso site e preencha o formulário, nós entraremos em contato com você!"
    And validar conteudo (ballon 3) "Agora, se você já é um parceiro BV, acesse nosso site e entre na área do cliente."
    And validar conteudo (ballon 3) "Acesse nosso site"

    Examples:
      | intent                                            |
      | quero ser parceiro BV                             |
      | Sou um parceiro BV                                |
      | como faco para ser parceiro BV?                   |
      | tenho uma loja parceira                           |
      | como faz para ter uma loja parceira?              |
      | onde encontro informacoes para abrir uma loja bv? |