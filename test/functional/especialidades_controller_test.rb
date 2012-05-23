require 'test_helper'

class EspecialidadesControllerTest < ActionController::TestCase
  setup do
    @especialidade = especialidades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:especialidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create especialidade" do
    assert_difference('Especialidade.count') do
      post :create, :especialidade => @especialidade.attributes
    end

    assert_redirected_to especialidade_path(assigns(:especialidade))
  end

  test "should show especialidade" do
    get :show, :id => @especialidade
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @especialidade
    assert_response :success
  end

  test "should update especialidade" do
    put :update, :id => @especialidade, :especialidade => @especialidade.attributes
    assert_redirected_to especialidade_path(assigns(:especialidade))
  end

  test "should destroy especialidade" do
    assert_difference('Especialidade.count', -1) do
      delete :destroy, :id => @especialidade
    end

    assert_redirected_to especialidades_path
  end
end
