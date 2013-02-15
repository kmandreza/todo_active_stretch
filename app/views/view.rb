module Output
  def print_beautiful(tasks)
    tasks.each do |task|
      if task.completed_at == nil
        puts "#{task.id}. #{task.task_name}"
      else
        puts "#{task.id}. #{task.task_name} |Completed?: #{task.completed_at}| "
      end
      
    end
  end

  def delete_notification(task)
    puts "Deleted '#{task.task_name}' from your TODO list..."
  end

  def add_notification(task)
    puts "Added '#{task.task_name}' to your TODO list..."
  end

  def complete_notification(task)
    puts "Marked '#{task.task_name}' as 'complete' in your TODO list..."
  end
  
end
