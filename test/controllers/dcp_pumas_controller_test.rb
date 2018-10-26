require 'test_helper'

class DcpPumasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dcp_pumas_index_url
    assert_response :success
  end

  test "should get new" do
    get dcp_pumas_new_url
    assert_response :success
  end

  test "should get create" do
    get dcp_pumas_create_url
    assert_response :success
  end

  test "should get edit" do
    get dcp_pumas_edit_url
    assert_response :success
  end

  test "should get update" do
    get dcp_pumas_update_url
    assert_response :success
  end

  test "should get show" do
    get dcp_pumas_show_url
    assert_response :success
  end

  test "should get destroy" do
    get dcp_pumas_destroy_url
    assert_response :success
  end

end
