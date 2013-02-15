#include this file in the driver code view

#include view
#include class tasks
require_relatiave '../views/view.rb'
require_relatiave '../models/task.rb'

class Controller

  def complete(parsed_command)
    task_id = parsed_command[1]
    task = Task.find(task_id)
    task.update_attribute(:completed_at, Time.now)
    complete_notification(task)
  end

  def add(parsed_command)
    new_task = Task.create(:task_name, parsed_command[1])
    add_notification(new_task)
  end

  def delete(parsed_command)
    task_id = parsed_command[1]
    task = Task.find(task_id)
    delete_notification(task)
    Task.destroy(task_id)
  end

  def list
    tasks = Task.all
    print_beautiful(tasks)
  end

end
