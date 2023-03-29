class House < ApplicationRecord
    has_many :reviews,  dependent: :destroy
    has_many :users, through: :reviews

    validates :title, presence: true
    validates :desc, presence: true
    validates :location, presence: true
    validates :image, presence: true
    validates :category, presence: true
    validates :price, presence: true
end
