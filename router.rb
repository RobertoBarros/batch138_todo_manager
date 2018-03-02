class Router

  def initialize(controller)
    @controller = controller
  end


  def run
    loop do
      print_actions
      action = gets.chomp.to_i
      dispatch(action)
    end
  end


  private

  def print_actions
    puts "\n-----------------------"
    puts "1. Criar nova tarefa"
    puts "2. Listar todas as tarefas"
    puts "3. Marcar tarefa como feita"
    puts "4. Remover uma tarefa"
    puts "\n-----------------------"
    puts "Escolha uma opção:"
  end

  def dispatch(action)
    case action
    when 1 then @controller.create
    when 2 then @controller.list
    when 3 then @controller.mark_as_done
    when 4 then @controller.destroy
    end

  end

end
