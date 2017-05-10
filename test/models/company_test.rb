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
	
	test "if company status is open then user is removed" do
    #@user = User.new
    #@user.save
    #comp = Company.new(name: "A Company", website_address: "somewebsite.org", phone_number: "1234567890", user: nil, status: 0)
    #comp.save!
    #assert_equal "is_available", comp.status
    #comp.update!(user: @user, status: 1)
    #comp.update!(status: 0)
    assert_equal false, @company.user.nil?
    assert_equal "is_lead", @company.status
    @company.update(status: 0)
    @company.save!
    assert_equal true, @company.user.nil?
  end
	

end
