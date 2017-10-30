class Student < ApplicationRecord
    has_many :incidents, dependent: :destroy
    
    #search method for finding student by name field(first,last)"
    def self.search(search)
        where("lower(name) LIKE lower(?)", "%#{search}%")
    end

    def getStrategy
        Student.includes(:incidents).count("DISTINCT strategies")
    end
end