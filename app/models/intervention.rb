class Intervention < ApplicationRecord
    belongs_to :challenge, counter_cache: true
end
