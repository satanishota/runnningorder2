require 'test_helper'

class Public::EntrysControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get public_entrys_new_url
    assert_response :success
  end

  test "should get index" do
    get public_entrys_index_url
    assert_response :success
  end

  test "should get show" do
    get public_entrys_show_url
    assert_response :success
  end

end
