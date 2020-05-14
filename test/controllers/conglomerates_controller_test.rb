require 'test_helper'

class ConglomeratesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get conglomerates_index_url
    assert_response :success
  end

  test "should get show" do
    get conglomerates_show_url
    assert_response :success
  end

end
