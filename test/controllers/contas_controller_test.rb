require 'test_helper'

class ContasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contas_index_url
    assert_response :success
  end

  test "should get show" do
    get contas_show_url
    assert_response :success
  end

  test "should get new" do
    get contas_new_url
    assert_response :success
  end

  test "should get update" do
    get contas_update_url
    assert_response :success
  end

  test "should get create" do
    get contas_create_url
    assert_response :success
  end

  test "should get delete" do
    get contas_delete_url
    assert_response :success
  end

end
