require 'test_helper'

class RuisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rui = ruis(:one)
  end

  test "should get index" do
    get ruis_url
    assert_response :success
  end

  test "should get new" do
    get new_rui_url
    assert_response :success
  end

  test "should create rui" do
    assert_difference('Rui.count') do
      post ruis_url, params: { rui: { knowledge: @rui.knowledge, time: @rui.time } }
    end

    assert_redirected_to rui_url(Rui.last)
  end

  test "should show rui" do
    get rui_url(@rui)
    assert_response :success
  end

  test "should get edit" do
    get edit_rui_url(@rui)
    assert_response :success
  end

  test "should update rui" do
    patch rui_url(@rui), params: { rui: { knowledge: @rui.knowledge, time: @rui.time } }
    assert_redirected_to rui_url(@rui)
  end

  test "should destroy rui" do
    assert_difference('Rui.count', -1) do
      delete rui_url(@rui)
    end

    assert_redirected_to ruis_url
  end
end
