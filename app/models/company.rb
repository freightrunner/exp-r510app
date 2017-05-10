class Company < ApplicationRecord
  belongs_to :user, optional: true

  validates :name, presence: true
  validates :website_address, presence: true

  before_validation :format_phone_number
  before_validation :remove_user_if_company_status_is_available


  enum status: [ :is_available, :is_lead, :do_not_call, :is_contracted ]


  private

  	def format_phone_number
  		self.phone_number = phone_number.gsub(/[^0-9]/, "") if attribute_present?("phone_number")
  	end

  	def remove_user_if_company_status_is_available
  		if status == 0
  			self.user = nil
  		end
  	end
end