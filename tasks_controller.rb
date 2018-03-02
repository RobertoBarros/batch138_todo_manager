require_relative 'task'
require_relative 'tasks_view'

class TasksController

  def initialize(repository)
    @repository = repository
    @view = TasksView.new
  end

  def create
    # 1. Perguntar qual a description
    description = @view.ask_task_description

    # 2. Instaciar um nova task
    task = Task.new(description)

    # 3. Adionar a task no repositorio
    @repository.add(task)
  end

  def list
    display_tasks
  end

  def mark_as_done
    # 1. Mostrar todas as tarefas
    display_tasks
    # 2. Perguntar qual o index tarefa
    index = @view.ask_task_index
    # 3. Recuperar a tarefa do repositorio
    task = @repository.find(index)
    # 4. Marcar a tarefa recuperada como feita
    task.mark_as_done!
  end

  def destroy
    # 1. Mostrar todas as tarefas
    display_tasks
    # 2. Perguntar qual o index tarefa
    index = @view.ask_task_index
    # 3. Remover a tarefa do repositorio
    @repository.remove(index)
  end

  private

  def display_tasks
    # 1. Recuperar todas as tarefas do repositorio
    tasks = @repository.all
    # 2. Enviar para a view mostrar as tarefas
    @view.display(tasks)
  end

end