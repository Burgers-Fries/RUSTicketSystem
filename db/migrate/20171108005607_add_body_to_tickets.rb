class AddBodyToTickets < ActiveRecord::Migration[5.1]
  def change
    add_column :tickets, :body, :text
  end
end
