require_relative '../../db/config'

class TaskTags < ActiveRecord::Base

  has_many :tasks
  has_many :tags

# belongs_to :user
 
end
