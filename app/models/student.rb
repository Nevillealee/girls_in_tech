class Student < ApplicationRecord
    has_many :incident_reports, dependent: :destroy
    has_many :challenges, dependent: :destroy
    
    #search method for finding student by name field(first,last)"
    def self.search(search)
        where("lower(name) LIKE lower(?)", "%#{search}%")
    end
    
    # def self.getReport
    #     Student.includes(:reports).count()
    # end
end
