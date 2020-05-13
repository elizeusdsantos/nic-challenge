class Conglomerate < ApplicationRecord
    validates :name, uniqueness: true 
end
