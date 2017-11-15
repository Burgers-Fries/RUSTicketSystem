class Ticket < ApplicationRecord
  belongs_to :customer, required: false
  validates :title, presence: true, length: { minimum: 1 }
end
