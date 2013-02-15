input = ARGV # where ARGV is the command

#action = parse(input) #create method to return an array of [add, text] or [delete, id] or [list]
  #have parese tells us the action and then call that data on that action

#example

class Parser

  def initialize(ARGV)
    @input = ARGV
  end

  def parse_input(input)
    @action = @input[0]
    @task_name = @input[1..-1].join(' ') unless action == 'list'
    end
  end
  
  
  case @action
    when 'list' then
      list
    when 'add' then
      add(@task_name)
    when 'delete' then
      delete(@task_name)
    when 'complete' then
      complete(@task_name)
  end

end

 #shows list of all existing tasks, 
              #also reorder list if a task is completed or deleted
 #adds task to the bottom of the list
 #deletes task, removes from list, reorders list
 #displays list as completed listed among all tasks
