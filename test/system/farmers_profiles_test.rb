require "application_system_test_case"

class FarmersProfilesTest < ApplicationSystemTestCase
  setup do
    @farmers_profile = farmers_profiles(:one)
  end

  test "visiting the index" do
    visit farmers_profiles_url
    assert_selector "h1", text: "Farmers Profiles"
  end

  test "creating a Farmers profile" do
    visit farmers_profiles_url
    click_on "New Farmers Profile"

    fill_in "Bio", with: @farmers_profile.bio
    fill_in "Image", with: @farmers_profile.image
    fill_in "Market", with: @farmers_profile.market_id
    fill_in "Profile", with: @farmers_profile.profile_id
    fill_in "Stall name", with: @farmers_profile.stall_name
    click_on "Create Farmers profile"

    assert_text "Farmers profile was successfully created"
    click_on "Back"
  end

  test "updating a Farmers profile" do
    visit farmers_profiles_url
    click_on "Edit", match: :first

    fill_in "Bio", with: @farmers_profile.bio
    fill_in "Image", with: @farmers_profile.image
    fill_in "Market", with: @farmers_profile.market_id
    fill_in "Profile", with: @farmers_profile.profile_id
    fill_in "Stall name", with: @farmers_profile.stall_name
    click_on "Update Farmers profile"

    assert_text "Farmers profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Farmers profile" do
    visit farmers_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Farmers profile was successfully destroyed"
  end
end
