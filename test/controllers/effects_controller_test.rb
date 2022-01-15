require "test_helper"

class EffectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get effects_index_url
    assert_response :success
  end
end
