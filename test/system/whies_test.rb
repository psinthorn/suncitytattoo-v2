require "application_system_test_case"

class WhiesTest < ApplicationSystemTestCase
  setup do
    @why = whies(:one)
  end

  test "visiting the index" do
    visit whies_url
    assert_selector "h1", text: "Whies"
  end

  test "creating a Why" do
    visit whies_url
    click_on "New Why"

    fill_in "Body", with: @why.body
    check "Status" if @why.status
    fill_in "Title", with: @why.title
    fill_in "User", with: @why.user
    click_on "Create Why"

    assert_text "Why was successfully created"
    click_on "Back"
  end

  test "updating a Why" do
    visit whies_url
    click_on "Edit", match: :first

    fill_in "Body", with: @why.body
    check "Status" if @why.status
    fill_in "Title", with: @why.title
    fill_in "User", with: @why.user
    click_on "Update Why"

    assert_text "Why was successfully updated"
    click_on "Back"
  end

  test "destroying a Why" do
    visit whies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Why was successfully destroyed"
  end
end
