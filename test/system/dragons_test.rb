require "application_system_test_case"

class DragonsTest < ApplicationSystemTestCase
  setup do
    @dragon = dragons(:one)
  end

  test "visiting the index" do
    visit dragons_url
    assert_selector "h1", text: "Dragons"
  end

  test "should create dragon" do
    visit dragons_url
    click_on "New dragon"

    fill_in "Description", with: @dragon.description
    fill_in "Image", with: @dragon.image
    fill_in "Name", with: @dragon.name
    fill_in "Size", with: @dragon.size
    fill_in "Universe", with: @dragon.universe_id
    click_on "Create Dragon"

    assert_text "Dragon was successfully created"
    click_on "Back"
  end

  test "should update Dragon" do
    visit dragon_url(@dragon)
    click_on "Edit this dragon", match: :first

    fill_in "Description", with: @dragon.description
    fill_in "Image", with: @dragon.image
    fill_in "Name", with: @dragon.name
    fill_in "Size", with: @dragon.size
    fill_in "Universe", with: @dragon.universe_id
    click_on "Update Dragon"

    assert_text "Dragon was successfully updated"
    click_on "Back"
  end

  test "should destroy Dragon" do
    visit dragon_url(@dragon)
    click_on "Destroy this dragon", match: :first

    assert_text "Dragon was successfully destroyed"
  end
end
