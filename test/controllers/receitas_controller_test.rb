require 'test_helper'

class ReceitasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get receitas_index_url
    assert_response :success
  end

  test "should get show" do
    get receitas_show_url
    assert_response :success
  end

  test "should get new" do
    get receitas_new_url
    assert_response :success
  end

  test "should get update" do
    get receitas_update_url
    assert_response :success
  end

  test "should get create" do
    get receitas_create_url
    assert_response :success
  end

  test "should get delete" do
    get receitas_delete_url
    assert_response :success
  end

end
