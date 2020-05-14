require 'test_helper'

class ConglomeratesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get conglomerates_path
    assert_response :success
  end

  test "should get show" do
    get conglomerate_path(Conglomerate.first)
    assert_response :success
  end

end
