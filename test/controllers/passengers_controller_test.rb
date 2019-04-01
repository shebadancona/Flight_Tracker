require 'test_helper'

class PassengersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get passengers_create_url
    assert_response :success
  end

  test "should get new" do
    get passengers_new_url
    assert_response :success
  end

  test "should get index" do
    get passengers_index_url
    assert_response :success
  end

end
