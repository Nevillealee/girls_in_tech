class Challenge < ApplicationRecord
    has_many :interventions, dependent: :destroy
    belongs_to :student, :incident_reports, counter_cache: true
end
