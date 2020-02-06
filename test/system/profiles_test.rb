require "application_system_test_case"

class ProfilesTest < ApplicationSystemTestCase
  setup do
    @profile = profiles(:one)
  end

  test "visiting the index" do
    visit profiles_url
    assert_selector "h1", text: "Profiles"
  end

  test "creating a Profile" do
    visit profiles_url
    click_on "New Profile"

    fill_in "Age", with: @profile.age
    fill_in "Body", with: @profile.body
    fill_in "Email", with: @profile.email
    fill_in "Facebook", with: @profile.facebook
    fill_in "First name", with: @profile.first_name
    fill_in "Gender", with: @profile.gender
    fill_in "Instagram", with: @profile.instagram
    fill_in "Last name", with: @profile.last_name
    fill_in "Line", with: @profile.line
    fill_in "Mobile", with: @profile.mobile
    fill_in "Nick name", with: @profile.nick_name
    fill_in "Roles", with: @profile.roles
    check "Status" if @profile.status
    fill_in "Suffix", with: @profile.suffix
    fill_in "User", with: @profile.user_id
    fill_in "Website", with: @profile.website
    fill_in "Whatsapp", with: @profile.whatsapp
    click_on "Create Profile"

    assert_text "Profile was successfully created"
    click_on "Back"
  end

  test "updating a Profile" do
    visit profiles_url
    click_on "Edit", match: :first

    fill_in "Age", with: @profile.age
    fill_in "Body", with: @profile.body
    fill_in "Email", with: @profile.email
    fill_in "Facebook", with: @profile.facebook
    fill_in "First name", with: @profile.first_name
    fill_in "Gender", with: @profile.gender
    fill_in "Instagram", with: @profile.instagram
    fill_in "Last name", with: @profile.last_name
    fill_in "Line", with: @profile.line
    fill_in "Mobile", with: @profile.mobile
    fill_in "Nick name", with: @profile.nick_name
    fill_in "Roles", with: @profile.roles
    check "Status" if @profile.status
    fill_in "Suffix", with: @profile.suffix
    fill_in "User", with: @profile.user_id
    fill_in "Website", with: @profile.website
    fill_in "Whatsapp", with: @profile.whatsapp
    click_on "Update Profile"

    assert_text "Profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Profile" do
    visit profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Profile was successfully destroyed"
  end
end
