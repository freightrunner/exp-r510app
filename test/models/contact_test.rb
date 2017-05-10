require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  setup do
    @contact = contacts(:one)
  end
  
  test "all phone numbers have hypens and other characters removed" do
    @contact.save
    assert_equal "5555555555", @contact.office_phone_number
    assert_equal "6666666666", @contact.cell_phone_number
  end
end
