require 'test_helper'

class WhiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @why = whies(:one)
  end

  test "should get index" do
    get whies_url
    assert_response :success
  end

  test "should get new" do
    get new_why_url
    assert_response :success
  end

  test "should create why" do
    assert_difference('Why.count') do
      post whies_url, params: { why: { body: @why.body, status: @why.status, title: @why.title, user: @why.user } }
    end

    assert_redirected_to why_url(Why.last)
  end

  test "should show why" do
    get why_url(@why)
    assert_response :success
  end

  test "should get edit" do
    get edit_why_url(@why)
    assert_response :success
  end

  test "should update why" do
    patch why_url(@why), params: { why: { body: @why.body, status: @why.status, title: @why.title, user: @why.user } }
    assert_redirected_to why_url(@why)
  end

  test "should destroy why" do
    assert_difference('Why.count', -1) do
      delete why_url(@why)
    end

    assert_redirected_to whies_url
  end
end
