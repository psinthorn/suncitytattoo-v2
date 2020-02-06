class AddStatusToWelcome < ActiveRecord::Migration[6.0]
  def change
    add_column :welcomes, :status, :boolean
  end
end
