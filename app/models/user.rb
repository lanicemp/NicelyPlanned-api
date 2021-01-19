class User < ApplicationRecord
    has_secure_password
    has_many :meetings
    has_many :my_meetings
end
