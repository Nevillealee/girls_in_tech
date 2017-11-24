class IncidentReport < ApplicationRecord
    has_many :challenges
    belongs_to :student, counter_cache: true
end
