#language:pt

Funcionalidade: Cadastro de tarefas
    Para que eu possa eu possa organizar minha vida
    Sendo um usuário cadastrado
    Possa adicionar novas tarefas no meu Painel

  Cenário: Nova tarefa

      Dado que o nome da minha tarefa é "Fazer Compras"
      E a data de finalização será "20/08/2018"
      E quero taguear esta tarefa com:
        | tag          |
        | Compras      |
        | SuperMercado |
        | Ketchup      |      
      Quando faço o cadastrado desta tarefa
      Então devo ver esta tarefa com o status "Em andamento"

  Cenário: Tarefa com nome muito curto

      Dado que o nome da minha tarefa é "Ler"
      E a data de finalização será "21/08/2018"
      Quando faço o cadastro desta tarefa
      Então devo ver a seguinte mensagem:
      """
      10 caracteres é o minimo permitido.
      """
  
  Cenário: Tarefa não pode ser duplicada

      Dado que o nome da minha tarefa é "Ler um livro de MongoDB"
      E a data de finalização será "22/08/2018"
      Mas eu já cadastrei esta tarefa e esqueci
      Quando faço o cadastro desta tarefa
      Então devo ver a seguinte mensagem:
      """
      Tarefa duplicada
      """