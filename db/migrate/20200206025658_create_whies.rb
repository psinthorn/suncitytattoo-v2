class CreateWhies < ActiveRecord::Migration[6.0]
  def change
    create_table :whies do |t|
      t.string :title
      t.text :body
      t.boolean :status, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
