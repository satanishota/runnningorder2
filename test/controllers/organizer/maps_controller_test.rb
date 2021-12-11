require 'test_helper'

class Organizer::MapsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get organizer_maps_edit_url
    assert_response :success
  end

end
