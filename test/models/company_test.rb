require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
	setup do
		@user = users(:one)
		@company = companies(:one)
	end
	
	test "company must have website address to be saved" do
	  comp = Company.new(name: "A Name", website_address: nil)
		refute comp.valid?, "Company saved without website address"
	end
	
	test "new company should have status[0]" do
    comp = Company.new
    assert_equal("is_available", comp.status)
  end

  test "company must have name to be saved" do
    comp = Company.new(name: nil, website_address: "address.com")
    refute comp.valid?, 'company is valid without a name'
  end

	test "Company phone number has all dashes and dots removed" do
		comp = Company.new(name: "A company", website_address: "xyz.com", phone_number: "123-456-7890")
		comp.save
		assert_equal "1234567890", comp.phone_number
	end
	
	test "if company status is changed to is_available then user is removed" do
	  @company.update!(status: 0)
	  assert_equal true, @company.user.nil?
	end
end