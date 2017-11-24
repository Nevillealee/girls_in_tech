class Student < ApplicationRecord
    validates :name, :dob, :service_program, :studentId, :grade, presence: true
    has_many :incident_reports, dependent: :destroy
    has_many :challenges, dependent: :destroy
    has_many :incident_reports, :through => :challenges
    
    #search method for finding student by name field(first,last)"
    def self.search(search)
        where("lower(name) LIKE lower(?)", "%#{search}%")
    end
    
    # def self.getReport
    #     Student.includes(:reports).count()
    # end
end
