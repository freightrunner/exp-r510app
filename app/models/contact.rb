class Contact < ApplicationRecord
  belongs_to :company
  
  before_validation :format_contact_numbers
  
  private
    def format_contact_numbers
      self.office_phone_number = office_phone_number.gsub(/[^0-9]/, "") if attribute_present?("office_phone_number")
      self.cell_phone_number = cell_phone_number.gsub(/[^0-9]/, "") if attribute_present?("cell_phone_number")
    end
end
