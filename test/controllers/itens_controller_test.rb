require 'test_helper'

class ItensControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get itens_index_url
    assert_response :success
  end

  test "should get show" do
    get itens_show_url
    assert_response :success
  end

  test "should get new" do
    get itens_new_url
    assert_response :success
  end

  test "should get update" do
    get itens_update_url
    assert_response :success
  end

  test "should get create" do
    get itens_create_url
    assert_response :success
  end

  test "should get delete" do
    get itens_delete_url
    assert_response :success
  end

end
