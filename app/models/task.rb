class Task < ActiveRecord::Base
  belongs_to :tasklist
  has_and_belongs_to_many :tags, join_table: 'tasks_tags'
end
