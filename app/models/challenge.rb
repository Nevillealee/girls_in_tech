class Challenge < ApplicationRecord
    has_many :interventions, dependent: :destroy
end
