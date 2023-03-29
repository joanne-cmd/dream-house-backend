class Review < ApplicationRecord
    belongs_to :house
    belongs_to :user
    
    validates :comment, presence: true, length:{minimum: 100}
end
