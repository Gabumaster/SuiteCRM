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
  expect(@task.selection1.text).to eq(sucesso)
  # @task.selection.assert_text sucesso
  # @task.selection.has_text? sucesso
  # expect(@task.selection.assert_text sucesso).to eq(sucesso)
end

Quando("edito os dados da task criada") do
  @task.tasklist
  @task.selection1.click_on
  sleep 3
  @task.action.click
  @task.edit.click
  @task.editDes.set "Gabu"
end 

Entao("valido que a task foi editada com sucesso") do
  @task.save.click
end

Entao("deleto a task") do
  @task.tasklist
  @task.selection1.click_on
  sleep 3
  @task.action.click
  @task.delete.click
end

Entao("valido que a task foi deletada com sucesso") do
  @task.alert
end