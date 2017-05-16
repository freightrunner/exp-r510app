require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    sign_in users(:admin)
    @contact = contacts(:one)
  end

  #test "should get index" do
  #  @company = companies(:one)
  #  get company_contacts_url(company_id: @contact.company_id)
  #  assert_response :success
  #end

  #test "should get new" do
  #  get "contacts#show", :company_id=> 1
  #  assert_response :success
  #end

  #test "should create contact" do
  #  assert_difference('Contact.count') do
  #    post company_contacts_url, params: { contact: { company_id: @contact.company_id, email: @contact.email, title: @contact.title, first_name: @contact.first_name, last_name: @contact.last_name, office_phone_number: @contact.office_phone_number, office_phone_extension: @contact.office_phone_extension, cell_phone_number: @contact.cell_phone_number } }
  #  end

  #  assert_redirected_to company_contact_url(Contact.last)
  #end

  #test "should show contact" do
  #  get company_contact_url(@contact)
  #  assert_response :success
  #end

  #test "should get edit" do
  #  get edit_company_contact_url(@contact)
  #  assert_response :success
  #end

  #test "should update contact" do
  #  patch company_contact_url(@contact), params: { contact: { company_id: @contact.company_id, email: @contact.email, title: @contact.title, first_name: @contact.first_name, last_name: @contact.last_name, office_phone_number: @contact.office_phone_number, office_phone_extension: @contact.office_phone_extension, cell_phone_number: @contact.cell_phone_number } }
  #  assert_redirected_to contact_url(@contact)
  #end

  #test "should destroy contact" do
  #  assert_difference('Contact.count', -1) do
  #    delete comapny_contact_url(@contact)
  #  end

  #  assert_redirected_to company_contacts_url
  #end
end
