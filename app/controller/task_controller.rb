#include this file in the driver code view

#include view
#include class tasks
require_relative '../views/view.rb'
require_relative '../models/task.rb'

module Controller
  include Output

  def complete(parsed_command)
    task_id = parsed_command
    task = Task.find(task_id)
    task.update_attribute(:completed_at, Time.now)
    complete_notification(task)
  end

  def add(parsed_command)
    puts parsed_command
    new_task = Task.create({:task_name => parsed_command})
    add_notification(new_task)
  end

  def delete(parsed_command)
    task_id = parsed_command
    task = Task.find(task_id)
    delete_notification(task)
    Task.destroy(task_id)
  end

  def list
    tasks = Task.all
    print_beautiful(tasks)
  end

end
