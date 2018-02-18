require 'test_helper'

class FinalordersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @finalorder = finalorders(:one)
  end

  test "should get index" do
    get finalorders_url
    assert_response :success
  end

  test "should get new" do
    get new_finalorder_url
    assert_response :success
  end

  test "should create finalorder" do
    assert_difference('Finalorder.count') do
      post finalorders_url, params: { finalorder: { address: @finalorder.address, delivery: @finalorder.delivery, email: @finalorder.email, gift: @finalorder.gift, payment: @finalorder.payment, phonenumber: @finalorder.phonenumber, username: @finalorder.username } }
    end

    assert_redirected_to finalorder_url(Finalorder.last)
  end

  test "should show finalorder" do
    get finalorder_url(@finalorder)
    assert_response :success
  end

  test "should get edit" do
    get edit_finalorder_url(@finalorder)
    assert_response :success
  end

  test "should update finalorder" do
    patch finalorder_url(@finalorder), params: { finalorder: { address: @finalorder.address, delivery: @finalorder.delivery, email: @finalorder.email, gift: @finalorder.gift, payment: @finalorder.payment, phonenumber: @finalorder.phonenumber, username: @finalorder.username } }
    assert_redirected_to finalorder_url(@finalorder)
  end

  test "should destroy finalorder" do
    assert_difference('Finalorder.count', -1) do
      delete finalorder_url(@finalorder)
    end

    assert_redirected_to finalorders_url
  end
end
