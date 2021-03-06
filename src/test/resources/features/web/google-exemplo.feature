#language: pt
#encoding: UTF-8
#author: Feliphe Jesus

@web @evidence
Funcionalidade: Teste de execução do site https://www.google.com.br

  Contexto: Acessar website
    Dado que acesso o site "https://www.google.com.br"

  @chrome @CT-001
  Cenario: Cenário ok
    E estou executando o teste
      | Teste ID | Teste                                      | Executor | Sprint   |
      | CT-001   | Validar funcionamento da barra de pesquisa | F. Jesus | Sprint 1 |
    E insiro no campo "Barra de busca" o valor "GitHub"
    Quando aperto a tecla "Enter"
    Então visualizo o site "GitHub" na lista de resultados

  @chrome @CT-002
  Cenario: Cenário com falha
    E estou executando o teste
      | Teste ID | Teste                                      | Executor | Sprint   |
      | CT-002   | Validar funcionamento da barra de pesquisa | F. Jesus | Sprint 1 |
    E insiro no campo "Barra de busca" o valor "Abacaxi com hortelã"
    Quando aperto a tecla "Enter"
    Então visualizo o site "GitHub" na lista de resultados