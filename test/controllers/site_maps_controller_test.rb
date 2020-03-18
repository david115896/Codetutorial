require 'test_helper'

class SiteMapsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get site_maps_index_url
    assert_response :success
  end

end
