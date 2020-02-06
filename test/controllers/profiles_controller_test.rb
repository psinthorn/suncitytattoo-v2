require 'test_helper'

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_url
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post profiles_url, params: { profile: { age: @profile.age, body: @profile.body, email: @profile.email, facebook: @profile.facebook, first_name: @profile.first_name, gender: @profile.gender, instagram: @profile.instagram, last_name: @profile.last_name, line: @profile.line, mobile: @profile.mobile, nick_name: @profile.nick_name, roles: @profile.roles, status: @profile.status, suffix: @profile.suffix, user_id: @profile.user_id, website: @profile.website, whatsapp: @profile.whatsapp } }
    end

    assert_redirected_to profile_url(Profile.last)
  end

  test "should show profile" do
    get profile_url(@profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_url(@profile)
    assert_response :success
  end

  test "should update profile" do
    patch profile_url(@profile), params: { profile: { age: @profile.age, body: @profile.body, email: @profile.email, facebook: @profile.facebook, first_name: @profile.first_name, gender: @profile.gender, instagram: @profile.instagram, last_name: @profile.last_name, line: @profile.line, mobile: @profile.mobile, nick_name: @profile.nick_name, roles: @profile.roles, status: @profile.status, suffix: @profile.suffix, user_id: @profile.user_id, website: @profile.website, whatsapp: @profile.whatsapp } }
    assert_redirected_to profile_url(@profile)
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete profile_url(@profile)
    end

    assert_redirected_to profiles_url
  end
end
