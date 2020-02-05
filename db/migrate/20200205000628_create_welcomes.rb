class CreateWelcomes < ActiveRecord::Migration[6.0]
  def change
    create_table :welcomes do |t|
      t.string :title
      t.string :subtitle
      t.string :body
      t.string :subbody
      t.string :status
      # t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
