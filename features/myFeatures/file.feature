@AUTOMATION_FULL

  Feature: Gerenciamento de customers

@TEST1
    Scenario: Usuário edita customer na aplicação web

      Given que acessei a url \Web
      And   visualizo o customer "Signal Gift Stores"
      When  clico no botão editar do customer "Signal Gift Stores"
      And   visualizo a tela de edição
      And   edito a lista
      Then  clico em go back to list e o sistema exibe a lista novamente



