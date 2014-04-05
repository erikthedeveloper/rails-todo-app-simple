class Task < ActiveRecord::Base
  belongs_to :tasklist
  has_and_belongs_to_many :tag
end
