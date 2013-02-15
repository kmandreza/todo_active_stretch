require_relative '../../db/config'

class Task < ActiveRecord::Base

  def initialize
    if our_unique_method
      self.save
      @save = 1
    else
      @save = 0
    end
  end

  def our_unique_method
    list = List.find(@list_id)
    if list.tasks.where("task_name = #{@task_name}").length == 0 
      return true
    else
      return false
    end
  end
# belongs_to :user
 
end
