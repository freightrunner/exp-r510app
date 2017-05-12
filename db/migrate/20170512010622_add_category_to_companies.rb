class AddCategoryToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :segment_category, :string
  end
end
