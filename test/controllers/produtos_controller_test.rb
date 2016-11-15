require 'test_helper'

class ProdutosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get produtos_index_url
    assert_response :success
  end

  test "should get show" do
    get produtos_show_url
    assert_response :success
  end

  test "should get create" do
    get produtos_create_url
    assert_response :success
  end

  test "should get new" do
    get produtos_new_url
    assert_response :success
  end

  test "should get update" do
    get produtos_update_url
    assert_response :success
  end

  test "should get delete" do
    get produtos_delete_url
    assert_response :success
  end

end
