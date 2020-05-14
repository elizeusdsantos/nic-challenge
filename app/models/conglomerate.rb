class Conglomerate < ApplicationRecord
    has_many :companies
    validates :name, uniqueness: true 
end
