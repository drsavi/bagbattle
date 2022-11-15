class Bagmon < ApplicationRecord
    has_one :first_type
    has_one :second_type
    has_one :third_type
end
