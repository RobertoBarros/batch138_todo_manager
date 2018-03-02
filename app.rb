require_relative 'tasks_repository'
require_relative 'tasks_controller'
require_relative 'router'

repository = TasksRepository.new
controller = TasksController.new(repository)

router = Router.new(controller)

router.run
