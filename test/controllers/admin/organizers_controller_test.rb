require 'test_helper'

class Admin::OrganizersControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get admin_organizers_edit_url
    assert_response :success
  end

end
