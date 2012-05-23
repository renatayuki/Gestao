require 'test_helper'

class ProntuariosControllerTest < ActionController::TestCase
  setup do
    @prontuario = prontuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prontuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prontuario" do
    assert_difference('Prontuario.count') do
      post :create, :prontuario => @prontuario.attributes
    end

    assert_redirected_to prontuario_path(assigns(:prontuario))
  end

  test "should show prontuario" do
    get :show, :id => @prontuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @prontuario
    assert_response :success
  end

  test "should update prontuario" do
    put :update, :id => @prontuario, :prontuario => @prontuario.attributes
    assert_redirected_to prontuario_path(assigns(:prontuario))
  end

  test "should destroy prontuario" do
    assert_difference('Prontuario.count', -1) do
      delete :destroy, :id => @prontuario
    end

    assert_redirected_to prontuarios_path
  end
end
