require "application_system_test_case"

class TutosTest < ApplicationSystemTestCase
  setup do
    @tuto = tutos(:one)
  end

  test "visiting the index" do
    visit tutos_url
    assert_selector "h1", text: "Tutos"
  end

  test "creating a Tuto" do
    visit tutos_url
    click_on "New Tuto"

    click_on "Create Tuto"

    assert_text "Tuto was successfully created"
    click_on "Back"
  end

  test "updating a Tuto" do
    visit tutos_url
    click_on "Edit", match: :first

    click_on "Update Tuto"

    assert_text "Tuto was successfully updated"
    click_on "Back"
  end

  test "destroying a Tuto" do
    visit tutos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tuto was successfully destroyed"
  end
end
