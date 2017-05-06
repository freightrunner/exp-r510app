class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :phone_number
      t.string :website_address
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
