class Incident < ApplicationRecord
    belongs_to :student, counter_cache: true
end
