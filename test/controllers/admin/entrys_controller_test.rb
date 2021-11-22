require 'test_helper'

class Admin::EntrysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_entrys_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_entrys_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_entrys_edit_url
    assert_response :success
  end

end
