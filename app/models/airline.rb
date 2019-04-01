class Airline < ApplicationRecord
    has_many :flights
    has_and_belongs_to_many  :passengers
    has_many :crews
end
