require 'test_helper'

class FarmersProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @farmers_profile = farmers_profiles(:one)
  end

  test "should get index" do
    get farmers_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_farmers_profile_url
    assert_response :success
  end

  test "should create farmers_profile" do
    assert_difference('FarmersProfile.count') do
      post farmers_profiles_url, params: { farmers_profile: { bio: @farmers_profile.bio, image: @farmers_profile.image, market_id: @farmers_profile.market_id, profile_id: @farmers_profile.profile_id, stall_name: @farmers_profile.stall_name } }
    end

    assert_redirected_to farmers_profile_url(FarmersProfile.last)
  end

  test "should show farmers_profile" do
    get farmers_profile_url(@farmers_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_farmers_profile_url(@farmers_profile)
    assert_response :success
  end

  test "should update farmers_profile" do
    patch farmers_profile_url(@farmers_profile), params: { farmers_profile: { bio: @farmers_profile.bio, image: @farmers_profile.image, market_id: @farmers_profile.market_id, profile_id: @farmers_profile.profile_id, stall_name: @farmers_profile.stall_name } }
    assert_redirected_to farmers_profile_url(@farmers_profile)
  end

  test "should destroy farmers_profile" do
    assert_difference('FarmersProfile.count', -1) do
      delete farmers_profile_url(@farmers_profile)
    end

    assert_redirected_to farmers_profiles_url
  end
end
