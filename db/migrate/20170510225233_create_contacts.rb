class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.references :company, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :office_phone_number
      t.string :office_phone_extension
      t.string :cell_phone_number
      t.string :email

      t.timestamps
    end
  end
end
