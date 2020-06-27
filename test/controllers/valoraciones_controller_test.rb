require 'test_helper'

class ValoracionesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get valoraciones_new_url
    assert_response :success
  end

  test "should get index" do
    get valoraciones_index_url
    assert_response :success
  end

  test "should get show" do
    get valoraciones_show_url
    assert_response :success
  end

  test "should get edit" do
    get valoraciones_edit_url
    assert_response :success
  end

end
