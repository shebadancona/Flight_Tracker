class Crew < ApplicationRecord
    has_and_belongs_to_many :flights
    belongs_to :airline
end
