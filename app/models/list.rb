require_relative '../../db/config'

class List < ActiveRecord::Base
  validates :name, :uniqueness => true

  has_many :tasks

# belongs_to :user
 
end
