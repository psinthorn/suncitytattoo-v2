require "application_system_test_case"

class ContactsTest < ApplicationSystemTestCase
  setup do
    @contact = contacts(:one)
  end

  test "visiting the index" do
    visit contacts_url
    assert_selector "h1", text: "Contacts"
  end

  test "creating a Contact" do
    visit contacts_url
    click_on "New Contact"

    fill_in "Address", with: @contact.address
    fill_in "City", with: @contact.city
    fill_in "Country", with: @contact.country
    fill_in "Email", with: @contact.email
    fill_in "Facebook", with: @contact.facebook
    fill_in "Instagram", with: @contact.instagram
    fill_in "Line", with: @contact.line
    fill_in "Mobile", with: @contact.mobile
    fill_in "Postcode", with: @contact.postcode
    fill_in "Province", with: @contact.province
    fill_in "Status", with: @contact.status
    fill_in "Tel", with: @contact.tel
    fill_in "Title", with: @contact.title
    fill_in "User", with: @contact.user_id
    fill_in "Website", with: @contact.website
    fill_in "Whatsapp", with: @contact.whatsapp
    click_on "Create Contact"

    assert_text "Contact was successfully created"
    click_on "Back"
  end

  test "updating a Contact" do
    visit contacts_url
    click_on "Edit", match: :first

    fill_in "Address", with: @contact.address
    fill_in "City", with: @contact.city
    fill_in "Country", with: @contact.country
    fill_in "Email", with: @contact.email
    fill_in "Facebook", with: @contact.facebook
    fill_in "Instagram", with: @contact.instagram
    fill_in "Line", with: @contact.line
    fill_in "Mobile", with: @contact.mobile
    fill_in "Postcode", with: @contact.postcode
    fill_in "Province", with: @contact.province
    fill_in "Status", with: @contact.status
    fill_in "Tel", with: @contact.tel
    fill_in "Title", with: @contact.title
    fill_in "User", with: @contact.user_id
    fill_in "Website", with: @contact.website
    fill_in "Whatsapp", with: @contact.whatsapp
    click_on "Update Contact"

    assert_text "Contact was successfully updated"
    click_on "Back"
  end

  test "destroying a Contact" do
    visit contacts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contact was successfully destroyed"
  end
end
