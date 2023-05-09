Feature: Problema generico no app

  Scenario: Informar insatisfação com o bot através das intenções
    Given que acessei o chatbot do eva (App)
    When eu digitar a intencao "<intent>"
    And enviar a mensagem
    Then validar conteudo (ballon 3) "Desculpe por não poder te ajudar dessa vez. 😩"

    Examples:
      | intent                                 |
      | meu ovo                                |
      | robô nojento                           |
      | Toma no cu                             |
      | Vai tomar no cu                        |
      | Robo burro                             |
      | aplicativo não funciona                |
      | Muito ruim                             |
      | Reclamação                             |
      | nunca mais ser cliente                 |
      | Tnc                                    |
      | vai a merda                            |
      | eu estou falando com idiota            |
      | eu quero ajuda pelo amor de Deus       |
      | Vai pra puta que o pariu               |
      | Vc é burro                             |
      | Vai se fude                            |
      | Lazarento                              |
      | Filho da puta                          |
      | Você não entende nada                  |
      | Você não está me entendendo            |
      | Te lascar                              |
      | Qual é a linguagem dos robôs           |
      | Vão se foder                           |
      | porra                                  |
      | você não intende                       |
      | Não estou conseguindo acessar          |
      | não estou conseguindo                  |
      | Lixo de chat                           |
      | Vai para o inferno                     |
      | vc ñ resolve e BOSTA nenhuma           |
      | vc é um robô q faltou a todas as aulas |
      | vc n me ajudou em nada                 |
      | Não me ajudou em nada                  |
      | Quer fazer graça                       |
      | Toma no cuh                            |
      | Vá se lascar                           |
      | pra que isso serve                     |
      | Te larguei                             |
      | abe ler não                            |
      | Não sabe ler                           |
      | Você é burra                           |
      | O site não entra                       |
      | Robô burra                             |
      | Vc é burro ou burra                    |
      | Tomar no xy                            |
      | não tô entendendo                      |
      | Desiste                                |
      | Desisti                                |
      | vc não resolve nada                    |
      | entende merda nenhum                   |
      | Cazzo                                  |
      | não gostei                             |
      | Esse banco é uma perca de tempo        |
      | Caspita                                |
      | Saco essa bosta                        |
      | Palhaçada                              |
      | Eu não sou palhaço                     |
      | Lixo                                   |
      | falta de respeito com o cliente        |
      | Site ruim                              |
      | App ruim                               |
      | vou processar vocês                    |
      | Burra                                  |
      | Burro                                  |
      | Tonto                                  |
      | Escroto                                |
      | Jumento                                |
      | Idiota                                 |
      | Não está resolvendo nada               |
      | Péssimo atendimento                    |
      | Deixa pra la                           |
      | s.o.s                                  |
      | Sos                                    |
      | Socorro                                |
      | Insatisfeito                           |
      | Pqp                                    |
      | Estou com problema                     |
      | Problemas para acessar                 |
      | Não consigo                            |
      | Bosta                                  |
      | porcaria                               |
      | Desgraça                               |
      | Desgraçado                             |
      | Disgraça                               |
      | Tô com problema                        |
      | Pobrema                                |
      | Estúpido                               |
      | Reclamação                             |
      | Quero fazer reclamação                 |