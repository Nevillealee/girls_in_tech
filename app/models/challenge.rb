class Challenge < ApplicationRecord
    has_many :interventions, dependent: :destroy
    belongs_to :student, counter_cache: true
    belongs_to :incident_report,  counter_cache: true
end
