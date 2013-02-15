require_relative '../../db/config'

class Task < ActiveRecord::Base

  belongs_to :list
  has_many :task_tags
  has_many :tags, :through => :task_tags

# belongs_to :user
 
end
