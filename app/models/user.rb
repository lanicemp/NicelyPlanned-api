class User < ApplicationRecord
    has_secure_password
    has_many :meetings

    validates :name, :email, presence:true 
    validates :email, uniqueness: true

end
