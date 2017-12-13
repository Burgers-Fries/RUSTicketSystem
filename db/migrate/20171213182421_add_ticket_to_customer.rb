class AddTicketToCustomer < ActiveRecord::Migration[5.1]
  def change
    add_reference :customers, :ticket, foreign_key: true
  end
end
