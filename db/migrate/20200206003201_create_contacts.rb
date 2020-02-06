class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :title
      t.string :address
      t.string :city
      t.string :province
      t.string :country
      t.string :postcode
      t.string :tel
      t.string :mobile
      t.string :email
      t.string :website
      t.string :facebook
      t.string :instagram
      t.string :whatsapp
      t.string :line
      t.boolean :status, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
