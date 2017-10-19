class Student < ApplicationRecord
    has_many :incidents
    
    #search method for finding student by name field(first,last)"
    def self.search(search)
        where("lower(name) LIKE lower(?)", "%#{search}%")
    end

end
