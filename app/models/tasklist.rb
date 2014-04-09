class Tasklist < ActiveRecord::Base
  belongs_to :project
  has_many :tasks
end
