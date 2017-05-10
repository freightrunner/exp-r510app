class Company < ApplicationRecord
  belongs_to :user, optional: true
  has_many :contacts

  validates :name, presence: true
  validates :website_address, presence: true

  before_validation :format_phone_number
  before_save :remove_user, if: :company_is_available?


  enum status: [ :is_available, :is_lead, :do_not_call, :is_contracted ]

  def company_is_available?
  	self.is_available?
  end

  private

  	def format_phone_number
  		self.phone_number = phone_number.gsub(/[^0-9]/, "") if attribute_present?("phone_number")
  	end
  	
    def remove_user
      self.user = nil
    end
end