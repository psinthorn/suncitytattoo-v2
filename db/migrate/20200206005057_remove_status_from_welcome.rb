class RemoveStatusFromWelcome < ActiveRecord::Migration[6.0]
  def change
    remove_column :welcomes, :status
  end
end
