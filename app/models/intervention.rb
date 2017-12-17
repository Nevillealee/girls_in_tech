class Intervention < ApplicationRecord
    belongs_to :challenge, counter_cache: true, dependent: :destroy
end
