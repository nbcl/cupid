require 'test_helper'

class PlatosControllerTest < ActionDispatch::IntegrationTest
  test 'should get new' do
    get platos_new_url
    assert_response :success
  end

  test 'should get index' do
    get platos_index_url
    assert_response :success
  end

  test 'should get show' do
    get platos_show_url
    assert_response :success
  end

  test 'should get edit' do
    get platos_edit_url
    assert_response :success
  end
end
