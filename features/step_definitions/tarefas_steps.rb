Dado('que o nome da minha tarefa é {string}') do |nome_tarefa|
  @nome_tarefa = nome_tarefa
  DAO.new.remover_tarefa(@nome_tarefa, @usuario[:email])
end

Dado('a data de finalização será {string}') do |data_finalizacao|
  @data_tarefa = data_finalizacao
end

Dado('quero taguear esta tarefa com:') do |tags|
  @tags = tags.hashes
end

Dado('eu já cadastrei esta tarefa e esqueci') do
 steps %(
  Quando faço o cadastro desta tarefa
 )
end

Quando('faço o cadastro desta tarefa') do
  @tarefas_pages.cadastrar(@nome_tarefa, @data_tarefa)
end

Então('devo ver esta tarefa com o status {string}') do |status_tarefa|
  tr = @tarefas_pages.buscar_tr(@nome_tarefa)
  expect(tr).to have_content status_tarefa
end

Então('devo ver a seguinte mensagem {string}') do |mensagem_alerta|
  expect(@tarefas_pages.alerta).to eql mensagem_alerta
end

Então('devo ver somente {int} tarefa com o nome cadastrado') do |quantidade|
 res = DAO.new.buscar_tarefa(@nome_tarefa, @usuario[:email])
 expect(res.count).to eql quantidade
end
