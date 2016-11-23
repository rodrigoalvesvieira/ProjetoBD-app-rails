require 'test_helper'

class TransacoesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get transacoes_index_url
    assert_response :success
  end

  test "should get show" do
    get transacoes_show_url
    assert_response :success
  end

  test "should get new" do
    get transacoes_new_url
    assert_response :success
  end

  test "should get update" do
    get transacoes_update_url
    assert_response :success
  end

  test "should get create" do
    get transacoes_create_url
    assert_response :success
  end

  test "should get delete" do
    get transacoes_delete_url
    assert_response :success
  end

end
