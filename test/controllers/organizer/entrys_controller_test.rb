require 'test_helper'

class Organizer::EntrysControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get organizer_entrys_edit_url
    assert_response :success
  end

  test "should get index" do
    get organizer_entrys_index_url
    assert_response :success
  end

end
