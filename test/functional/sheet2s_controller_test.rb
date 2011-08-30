require 'test_helper'

class Sheet2sControllerTest < ActionController::TestCase
  setup do
    @sheet2 = sheet2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sheet2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sheet2" do
    assert_difference('Sheet2.count') do
      post :create, :sheet2 => @sheet2.attributes
    end

    assert_redirected_to sheet2_path(assigns(:sheet2))
  end

  test "should show sheet2" do
    get :show, :id => @sheet2.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sheet2.to_param
    assert_response :success
  end

  test "should update sheet2" do
    put :update, :id => @sheet2.to_param, :sheet2 => @sheet2.attributes
    assert_redirected_to sheet2_path(assigns(:sheet2))
  end

  test "should destroy sheet2" do
    assert_difference('Sheet2.count', -1) do
      delete :destroy, :id => @sheet2.to_param
    end

    assert_redirected_to sheet2s_path
  end
end
