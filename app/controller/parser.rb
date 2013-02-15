require_relative 'task_controller.rb'



class Parser
  include Controller

  def initialize(command)
    parse_input(command)

  end

  def parse_input(command)
    action = command[0]
    task_name = command[1..-1].join(' ') unless action == 'list'
   
    case action
      when 'list' then 
        list
      when 'add' then
        add(task_name)
      when 'delete' then
        delete(task_name)
      when 'complete' then
        complete(task_name)
    end
  end
end

 #shows list of all existing tasks, 
              #also reorder list if a task is completed or deleted
 #adds task to the bottom of the list
 #deletes task, removes from list, reorders list
 #displays list as completed listed among all tasks

 # Parser.new(ARGV)
