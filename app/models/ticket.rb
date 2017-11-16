class Ticket < ApplicationRecord
  belongs_to :customer, required: false
  validates :title, presence: true, length: { minimum: 6 }
  validates :body, presence: true, length: { minimum: 15 }
end
