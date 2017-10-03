class Student < ApplicationRecord
    has_many :incidents
    
    def self.search(search)
        where("lower(name) LIKE lower(?)", "%#{search}%")
    end
end
