require "application_system_test_case"

class UniversesTest < ApplicationSystemTestCase
  setup do
    @universe = universes(:one)
  end

  test "visiting the index" do
    visit universes_url
    assert_selector "h1", text: "Universes"
  end

  test "should create universe" do
    visit universes_url
    click_on "New universe"

    fill_in "Description universe", with: @universe.description_universe
    fill_in "Name", with: @universe.name
    fill_in "Release date", with: @universe.release_date
    click_on "Create Universe"

    assert_text "Universe was successfully created"
    click_on "Back"
  end

  test "should update Universe" do
    visit universe_url(@universe)
    click_on "Edit this universe", match: :first

    fill_in "Description universe", with: @universe.description_universe
    fill_in "Name", with: @universe.name
    fill_in "Release date", with: @universe.release_date
    click_on "Update Universe"

    assert_text "Universe was successfully updated"
    click_on "Back"
  end

  test "should destroy Universe" do
    visit universe_url(@universe)
    click_on "Destroy this universe", match: :first

    assert_text "Universe was successfully destroyed"
  end
end
