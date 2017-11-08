class Ticket < ApplicationRecord
  belongs_to :customer, required: false
end
