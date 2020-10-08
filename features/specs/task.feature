#language: pt
#UTF-8
Funcionalidade: Criar tarefa no site da SuiteCRM

Contexto: Login
    Dado que tenha efetuado o login no site
    
@criar
Esquema do Cenario: Criar tarefa   
    Quando clico em criar tarefa
    E preencho os dados "<subject>", "<description>"
    Entao valido que a task foi criada com "<sucesso>"

    Exemplos:
      |   subject   | description |  sucesso    |
      | Fall Guys   |  Gabumaster |  Fall Guys  |
      |  Among us   |  Denizera   |  Among us   |
      | The Witcher |  Staguera   | The Witcher |  
      |  Fortnite   |  Adelmera   |  Fortnite   |

# Esquema do Cenario: Editar tarefa
    # Quando "<editar>" os dados da task criada 

    # Exemplos:
    # | editar  |
    # |  Gabu   |
    # | Dennis  |
    # |  Stag   |
    # | Adelmo  |

@editar_deletar
Cenario: Editar e deletar a tarefa
    Quando edito os dados da task criada
    Entao valido que a task foi editada com sucesso
    E deleto a task
    Entao valido que a task foi deletada com sucesso