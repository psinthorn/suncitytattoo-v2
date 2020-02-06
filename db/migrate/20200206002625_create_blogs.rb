class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :subtitle
      t.text :body
      t.boolean :status, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
