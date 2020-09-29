Dado("que tenha efetuado o login no site") do
  @task = Task.new
  @task.load
  @task.login("will", "will")
end

Quando("clico em criar tarefa") do
  @task.taskopen
end

Quando("preencho os dados {string}, {string}") do |subject, description|
  @task.taskcreate(subject, description)
end

Entao("valido que a task foi criada com {string}") do |sucesso|
  @task.view.click
  @task.selection.assert_text sucesso
  # @task.selection.has_text? sucesso
  # expect(@task.selection.assert_text sucesso).to eq(sucesso)
  # expect(@task.selection.text).to eq(sucesso)
end

Quando("edito os dados da task criada") do
  @task.tasklist
  binding.pry
end

Entao("valido que a task foi editada com sucesso") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("deleto a task") do
  pending # Write code here that turns the phrase above into concrete actions
end

Entao("valido que a task foi deletada com sucesso") do
  pending # Write code here that turns the phrase above into concrete actions
end