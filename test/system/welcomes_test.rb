require "application_system_test_case"

class WelcomesTest < ApplicationSystemTestCase
  setup do
    @welcome = welcomes(:one)
  end

  test "visiting the index" do
    visit welcomes_url
    assert_selector "h1", text: "Welcomes"
  end

  test "creating a Welcome" do
    visit welcomes_url
    click_on "New Welcome"

    fill_in "Body", with: @welcome.body
    fill_in "Status", with: @welcome.status
    fill_in "Subbody", with: @welcome.subbody
    fill_in "Subtitle", with: @welcome.subtitle
    fill_in "Title", with: @welcome.title
    fill_in "User", with: @welcome.user_id
    click_on "Create Welcome"

    assert_text "Welcome was successfully created"
    click_on "Back"
  end

  test "updating a Welcome" do
    visit welcomes_url
    click_on "Edit", match: :first

    fill_in "Body", with: @welcome.body
    fill_in "Status", with: @welcome.status
    fill_in "Subbody", with: @welcome.subbody
    fill_in "Subtitle", with: @welcome.subtitle
    fill_in "Title", with: @welcome.title
    fill_in "User", with: @welcome.user_id
    click_on "Update Welcome"

    assert_text "Welcome was successfully updated"
    click_on "Back"
  end

  test "destroying a Welcome" do
    visit welcomes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Welcome was successfully destroyed"
  end
end
