require "application_system_test_case"

class RohansTest < ApplicationSystemTestCase
  setup do
    @rohan = rohans(:one)
  end

  test "visiting the index" do
    visit rohans_url
    assert_selector "h1", text: "Rohans"
  end

  test "creating a Rohan" do
    visit rohans_url
    click_on "New Rohan"

    fill_in "Age", with: @rohan.age
    fill_in "Name", with: @rohan.name
    click_on "Create Rohan"

    assert_text "Rohan was successfully created"
    click_on "Back"
  end

  test "updating a Rohan" do
    visit rohans_url
    click_on "Edit", match: :first

    fill_in "Age", with: @rohan.age
    fill_in "Name", with: @rohan.name
    click_on "Update Rohan"

    assert_text "Rohan was successfully updated"
    click_on "Back"
  end

  test "destroying a Rohan" do
    visit rohans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rohan was successfully destroyed"
  end
end
