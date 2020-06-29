require 'test_helper'

class ValoracionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get valoracions_new_url
    assert_response :success
  end

  test "should get index" do
    get valoracions_index_url
    assert_response :success
  end

  test "should get show" do
    get valoracions_show_url
    assert_response :success
  end

  test "should get edit" do
    get valoracions_edit_url
    assert_response :success
  end

end
