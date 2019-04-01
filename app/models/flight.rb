class Flight < ApplicationRecord
    belongs_to :airline
    has_and_belongs_to_many  :passengers
    has_and_belongs_to_many  :crews
end
