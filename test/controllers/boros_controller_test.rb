require 'test_helper'

class BorosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get boros_index_url
    assert_response :success
  end

  test "should get new" do
    get boros_new_url
    assert_response :success
  end

  test "should get create" do
    get boros_create_url
    assert_response :success
  end

  test "should get edit" do
    get boros_edit_url
    assert_response :success
  end

  test "should get update" do
    get boros_update_url
    assert_response :success
  end

  test "should get show" do
    get boros_show_url
    assert_response :success
  end

  test "should get destroy" do
    get boros_destroy_url
    assert_response :success
  end

end
