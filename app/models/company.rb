class Company < ApplicationRecord
  belongs_to :user, optional: true
end