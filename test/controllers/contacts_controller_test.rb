require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact = contacts(:one)
  end

  test "should get index" do
    get contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_url
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Contact.count') do
      post contacts_url, params: { contact: { company_id: @contact.company_id, email: @contact.email, title: @contact.title, first_name: @contact.first_name, last_name: @contact.last_name, office_phone_number: @contact.office_phone_number, office_phone_extension: @contact.office_phone_extension, cell_phone_number: @contact.cell_phone_number } }
    end

    assert_redirected_to contact_url(Contact.last)
  end

  test "should show contact" do
    get contact_url(@contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_url(@contact)
    assert_response :success
  end

  test "should update contact" do
    patch contact_url(@contact), params: { contact: { company_id: @contact.company_id, email: @contact.email, title: @contact.title, first_name: @contact.first_name, last_name: @contact.last_name, office_phone_number: @contact.office_phone_number, office_phone_extension: @contact.office_phone_extension, cell_phone_number: @contact.cell_phone_number } }
    assert_redirected_to contact_url(@contact)
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete contact_url(@contact)
    end

    assert_redirected_to contacts_url
  end
end
