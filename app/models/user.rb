class User < ActiveRecord::Base
    has_many :projects

    validates :email, presence: true
    validates :username, presence: true

end
