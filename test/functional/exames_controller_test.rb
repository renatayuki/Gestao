require 'test_helper'

class ExamesControllerTest < ActionController::TestCase
  setup do
    @exame = exames(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exame" do
    assert_difference('Exame.count') do
      post :create, :exame => @exame.attributes
    end

    assert_redirected_to exame_path(assigns(:exame))
  end

  test "should show exame" do
    get :show, :id => @exame
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @exame
    assert_response :success
  end

  test "should update exame" do
    put :update, :id => @exame, :exame => @exame.attributes
    assert_redirected_to exame_path(assigns(:exame))
  end

  test "should destroy exame" do
    assert_difference('Exame.count', -1) do
      delete :destroy, :id => @exame
    end

    assert_redirected_to exames_path
  end
end
