class Project < ActiveRecord::Base
  belongs_to :user
  has_many :tasklists
  has_many :tasks, through: :tasklists
end
