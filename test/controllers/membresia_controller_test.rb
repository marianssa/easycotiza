require 'test_helper'

class MembresiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @membresium = membresia(:one)
  end

  test "should get index" do
    get membresia_url
    assert_response :success
  end

  test "should get new" do
    get new_membresium_url
    assert_response :success
  end

  test "should create membresium" do
    assert_difference('Membresium.count') do
      post membresia_url, params: { membresium: {  } }
    end

    assert_redirected_to membresium_url(Membresium.last)
  end

  test "should show membresium" do
    get membresium_url(@membresium)
    assert_response :success
  end

  test "should get edit" do
    get edit_membresium_url(@membresium)
    assert_response :success
  end

  test "should update membresium" do
    patch membresium_url(@membresium), params: { membresium: {  } }
    assert_redirected_to membresium_url(@membresium)
  end

  test "should destroy membresium" do
    assert_difference('Membresium.count', -1) do
      delete membresium_url(@membresium)
    end

    assert_redirected_to membresia_url
  end
end
