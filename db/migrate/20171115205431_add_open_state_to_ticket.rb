class AddOpenStateToTicket < ActiveRecord::Migration[5.1]
  def change
    add_column :tickets, :open, :binary
  end
end
