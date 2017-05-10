require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
	test "Company phone number has all dashes and dots removed" do
		comp = Company.new(name: "A company", website_address: "xyz.com", phone_number: "123-456-7890")
		comp.save
		assert_equal "1234567890", comp.phone_number
	end

	test "if company status is open then user is removed" do
		@user = User.new
		@user.save
		comp = Company.new(name: "A Company", website_address: "somewebsite.org", phone_number: "1234567890", user: nil, status: 0)
		comp.save
		assert_equal "is_available", comp.status
		comp.update!(user: @user, status: 1)
		comp.update!(status: 0)
		assert comp.user = nil, "Company status updated to 0 but still has user assigned"
	end

end
