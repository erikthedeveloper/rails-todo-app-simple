class User < ActiveRecord::Base
    has_many :projects
    has_many :tasklists, through: :projects
    has_many :tasks, through: :tasklists

    validates :email, presence: true
    validates :username, presence: true

end
