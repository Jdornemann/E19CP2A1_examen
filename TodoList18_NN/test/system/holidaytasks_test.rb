require "application_system_test_case"

class HolidaytasksTest < ApplicationSystemTestCase
  setup do
    @holidaytask = holidaytasks(:one)
  end

  test "visiting the index" do
    visit holidaytasks_url
    assert_selector "h1", text: "Holidaytasks"
  end

  test "creating a Holidaytask" do
    visit holidaytasks_url
    click_on "New Holidaytask"

    fill_in "Description", with: @holidaytask.description
    fill_in "Done", with: @holidaytask.done
    fill_in "Name", with: @holidaytask.name
    click_on "Create Holidaytask"

    assert_text "Holidaytask was successfully created"
    click_on "Back"
  end

  test "updating a Holidaytask" do
    visit holidaytasks_url
    click_on "Edit", match: :first

    fill_in "Description", with: @holidaytask.description
    fill_in "Done", with: @holidaytask.done
    fill_in "Name", with: @holidaytask.name
    click_on "Update Holidaytask"

    assert_text "Holidaytask was successfully updated"
    click_on "Back"
  end

  test "destroying a Holidaytask" do
    visit holidaytasks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Holidaytask was successfully destroyed"
  end
end
