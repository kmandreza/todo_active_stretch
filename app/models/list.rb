require_relative '../../db/config'

class List < ActiveRecord::Base

  has_many :tasks

# belongs_to :user
 
end
