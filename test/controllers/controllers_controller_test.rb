require 'test_helper'

class ControllersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get controllers_new_url
    assert_response :success
  end

  test "should get create" do
    get controllers_create_url
    assert_response :success
  end

  test "should get edit" do
    get controllers_edit_url
    assert_response :success
  end

  test "should get update" do
    get controllers_update_url
    assert_response :success
  end

  test "should get index" do
    get controllers_index_url
    assert_response :success
  end

  test "should get show" do
    get controllers_show_url
    assert_response :success
  end

  test "should get destroy" do
    get controllers_destroy_url
    assert_response :success
  end

end
