class TasksView

  def ask_task_description
    puts "Qual a descrição da tarefa?"
    return gets.chomp
  end

  def display(tasks)
    puts "-------- Lista de Tarefas -----------------"
    tasks.each_with_index do |task, index|
      status = task.done? ? '[X]' : '[ ]'
      puts "#{index + 1}: #{status} #{task.description}"
    end
    puts "-------------------------------------------"
  end

  def ask_task_index
    puts "Qual o número da tarefa?"
    gets.chomp.to_i - 1
  end

end