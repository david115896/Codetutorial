require 'test_helper'

class TutosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tuto = tutos(:one)
  end

  test "should get index" do
    get tutos_url
    assert_response :success
  end

  test "should get new" do
    get new_tuto_url
    assert_response :success
  end

  test "should create tuto" do
    assert_difference('Tuto.count') do
      post tutos_url, params: { tuto: {  } }
    end

    assert_redirected_to tuto_url(Tuto.last)
  end

  test "should show tuto" do
    get tuto_url(@tuto)
    assert_response :success
  end

  test "should get edit" do
    get edit_tuto_url(@tuto)
    assert_response :success
  end

  test "should update tuto" do
    patch tuto_url(@tuto), params: { tuto: {  } }
    assert_redirected_to tuto_url(@tuto)
  end

  test "should destroy tuto" do
    assert_difference('Tuto.count', -1) do
      delete tuto_url(@tuto)
    end

    assert_redirected_to tutos_url
  end
end
