require "test_helper"

class DragonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dragon = dragons(:one)
  end

  test "should get index" do
    get dragons_url
    assert_response :success
  end

  test "should get new" do
    get new_dragon_url
    assert_response :success
  end

  test "should create dragon" do
    assert_difference("Dragon.count") do
      post dragons_url, params: { dragon: { description: @dragon.description, image: @dragon.image, name: @dragon.name, size: @dragon.size, universe_id: @dragon.universe_id } }
    end

    assert_redirected_to dragon_url(Dragon.last)
  end

  test "should show dragon" do
    get dragon_url(@dragon)
    assert_response :success
  end

  test "should get edit" do
    get edit_dragon_url(@dragon)
    assert_response :success
  end

  test "should update dragon" do
    patch dragon_url(@dragon), params: { dragon: { description: @dragon.description, image: @dragon.image, name: @dragon.name, size: @dragon.size, universe_id: @dragon.universe_id } }
    assert_redirected_to dragon_url(@dragon)
  end

  test "should destroy dragon" do
    assert_difference("Dragon.count", -1) do
      delete dragon_url(@dragon)
    end

    assert_redirected_to dragons_url
  end
end
