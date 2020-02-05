class AddUserIdToWelcome < ActiveRecord::Migration[6.0]
  def change
    add_reference :welcomes, :user, null: true, foreign_key: true
  end
end
