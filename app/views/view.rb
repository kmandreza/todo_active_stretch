module Output
  def print_beautiful(tasks)
    tasks.each do |task|
      puts "#{task.id}. #{task.text} |Completed?: #{task.completed_at}| "
    end
  end

  def delete_notification(task)
    puts "Deleted '#{task.text}' from your TODO list..."
  end

  def add_notification(task)
    puts "Added '#{task.text}' to your TODO list..."
  end

  def complete_notification(task)
    puts "Marked '#{task.text}' as 'complete' in your TODO list..."
  end
  
end
