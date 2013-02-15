#include this file in the driver code view

#include view
#include class tasks
require_relative '../views/view.rb'
require_relative '../models/task.rb'

module Controller
  include Output

  def complete(command_input)
    task_id = command_input.to_i
    task = Task.find(task_id)
    task.update_attribute(:completed_at, Time.now)
    complete_notification(task)
  end

  def add(command_input)
    list = List.find(list_id)
    new_task = Task.new(command_input)
    if new_task.save == 0
      duplicate_notification
    else
      add_notification(new_task)
    end
  end

  def delete(command_input)
    task_id = command_input.to_i
    task = Task.find(task_id)
    delete_notification(task)
    Task.destroy(task_id)
  end

  def list
    tasks = Task.all
    print_beautiful(tasks)
  end

  def add_tag(command_input)
    new_tag = Tag.new(command_input)
    if new_tag == nil
      duplicate_notification
    else
      add_tag_notification(new_tag)
    end
    #print something
  end

end
