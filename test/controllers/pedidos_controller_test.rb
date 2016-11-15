require 'test_helper'

class PedidosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pedidos_index_url
    assert_response :success
  end

  test "should get show" do
    get pedidos_show_url
    assert_response :success
  end

  test "should get new" do
    get pedidos_new_url
    assert_response :success
  end

  test "should get update" do
    get pedidos_update_url
    assert_response :success
  end

  test "should get create" do
    get pedidos_create_url
    assert_response :success
  end

  test "should get delete" do
    get pedidos_delete_url
    assert_response :success
  end

end
