#language: pt
#UTF-8
Funcionalidade: Criar tarefa no site da SuiteCRM

Contexto: Login
    Dado que tenha efetuado o login no site
    Quando clico em criar tarefa

@criar
Esquema do Cenario: Criar tarefa     
    Quando preencho os dados "<subject>", "<description>"
    Entao valido que a task foi criada com "<sucesso>"

    Exemplos:
      |   subject   | description |  sucesso    |
      | Fall Guys   |  Gabumaster |  Fall Guys  |         
      |  Among us   |  Denizera   |  Among us   |
      | The Witcher |  Staguera   | The Witcher |
      |  Fortnite   |  Adelmera   |  Fortnite   |

Cenario: Editar tarefa
    Quando edito os dados da task criada
    Entao valido que a task foi editada com sucesso


Cenario: Deletar tarefa
    Quando deleto a task
    Entao valido que a task foi deletada com sucesso