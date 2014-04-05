class Tag < ActiveRecord::Base
    has_and_belongs_to_many :tasks, join_table: 'tasks_tags'
end
