require 'test_helper'

class UtilizacoesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get utilizacoes_index_url
    assert_response :success
  end

  test "should get show" do
    get utilizacoes_show_url
    assert_response :success
  end

  test "should get new" do
    get utilizacoes_new_url
    assert_response :success
  end

  test "should get update" do
    get utilizacoes_update_url
    assert_response :success
  end

  test "should get create" do
    get utilizacoes_create_url
    assert_response :success
  end

  test "should get delete" do
    get utilizacoes_delete_url
    assert_response :success
  end

end
