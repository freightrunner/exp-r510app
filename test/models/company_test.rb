require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
	setup do
		@user = users(:one)
		@company = companies(:one)
	end

	test "Company phone number has all dashes and dots removed" do
		comp = Company.new(name: "A company", website_address: "xyz.com", phone_number: "123-456-7890")
		comp.save
		assert_equal "1234567890", comp.phone_number
	end

	

end
