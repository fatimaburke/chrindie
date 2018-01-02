require 'test_helper'

class ArtistControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get artist_index_url
    assert_response :success
  end

  test "should get update" do
    get artist_update_url
    assert_response :success
  end

  test "should get new" do
    get artist_new_url
    assert_response :success
  end

end
