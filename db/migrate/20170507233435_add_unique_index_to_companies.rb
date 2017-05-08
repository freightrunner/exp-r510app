class AddUniqueIndexToCompanies < ActiveRecord::Migration[5.1]
  def change
  	add_index :companies, :website_address, unique: true
  end
end
