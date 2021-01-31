class Meeting < ApplicationRecord
    belongs_to :user, foreign_key: :user_id 

    validates :title, :user, presence: true
end
