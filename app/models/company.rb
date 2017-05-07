class Company < ApplicationRecord
  belongs_to :user, optional: true

  validates :name, presence: true

  enum status: [ :is_available, :is_lead, :do_not_call, :is_contracted ]
end