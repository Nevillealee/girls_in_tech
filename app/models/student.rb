class Student < ApplicationRecord
    validates :name, :dob, :service_program, :studentId, :grade, presence: true
    has_many :interventions, :through => :challenges, dependent: :destroy
    has_many :challenges
    has_many :incident_reports, :through => :challenges, dependent: :destroy
    
    #search method for finding student by name field(first,last)"
    def self.search(search)
        where("lower(name) LIKE lower(?)", "%#{search}%")
    end
    
    def self.getInterventions
        Student.includes(:challenges).count(:interventions_count)
    end
end
