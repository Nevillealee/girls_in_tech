class Challenge < ApplicationRecord
    has_many :interventions
    belongs_to :student, counter_cache: true, dependent: :destroy
    belongs_to :incident_report,  counter_cache: true
end
