class IncidentReport < ApplicationRecord
    has_many :challenges
    belongs_to :student, counter_cache: true
    has_many :students, :through => challenges
end
