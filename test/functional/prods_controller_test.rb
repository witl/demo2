require 'test_helper'

class ProdsControllerTest < ActionController::TestCase
  setup do
    @prod = prods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prod" do
    assert_difference('Prod.count') do
      post :create, :prod => @prod.attributes
    end

    assert_redirected_to prod_path(assigns(:prod))
  end

  test "should show prod" do
    get :show, :id => @prod.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @prod.to_param
    assert_response :success
  end

  test "should update prod" do
    put :update, :id => @prod.to_param, :prod => @prod.attributes
    assert_redirected_to prod_path(assigns(:prod))
  end

  test "should destroy prod" do
    assert_difference('Prod.count', -1) do
      delete :destroy, :id => @prod.to_param
    end

    assert_redirected_to prods_path
  end
end
