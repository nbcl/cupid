require 'test_helper'

class MatchesControllerTest < ActionDispatch::IntegrationTest
  test 'should get create' do
    get matches_create_url
    assert_response :success
  end
end
