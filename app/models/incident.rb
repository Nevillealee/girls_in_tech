class Incident < ApplicationRecord
    # COUNTER_CACHE OPTION PREVENTS EXCESS DB CALLS TO PERFORM COUNT
    belongs_to :student, counter_cache: true
end
