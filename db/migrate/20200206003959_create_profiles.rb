class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :suffix
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :age
      t.text :body
      t.string :mobile
      t.string :email
      t.string :website
      t.string :facebook
      t.string :instagram
      t.string :line
      t.string :whatsapp
      t.string :roles
      t.string :nick_name
      t.boolean :status, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
