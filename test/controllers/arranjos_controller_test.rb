require 'test_helper'

class ArranjosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get arranjos_index_url
    assert_response :success
  end

  test "should get new" do
    get arranjos_new_url
    assert_response :success
  end

  test "should get edit" do
    get arranjos_edit_url
    assert_response :success
  end

  test "should get show" do
    get arranjos_show_url
    assert_response :success
  end

end
