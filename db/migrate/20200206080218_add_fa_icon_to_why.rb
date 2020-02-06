class AddFaIconToWhy < ActiveRecord::Migration[6.0]
  def change
    add_column :whies, :faicon, :string
  end
end
