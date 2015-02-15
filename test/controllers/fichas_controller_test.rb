require 'test_helper'

class FichasControllerTest < ActionController::TestCase
  setup do
    @ficha = fichas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fichas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ficha" do
    assert_difference('Ficha.count') do
      post :create, ficha: { altura: @ficha.altura, ejercicio: @ficha.ejercicio, idm: @ficha.idm, peso_ideal: @ficha.peso_ideal, peso_inicial: @ficha.peso_inicial, peso_objetivo: @ficha.peso_objetivo, talla_inicial: @ficha.talla_inicial, talla_objetivo: @ficha.talla_objetivo, user_id: @ficha.user_id }
    end

    assert_redirected_to ficha_path(assigns(:ficha))
  end

  test "should show ficha" do
    get :show, id: @ficha
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ficha
    assert_response :success
  end

  test "should update ficha" do
    patch :update, id: @ficha, ficha: { altura: @ficha.altura, ejercicio: @ficha.ejercicio, idm: @ficha.idm, peso_ideal: @ficha.peso_ideal, peso_inicial: @ficha.peso_inicial, peso_objetivo: @ficha.peso_objetivo, talla_inicial: @ficha.talla_inicial, talla_objetivo: @ficha.talla_objetivo, user_id: @ficha.user_id }
    assert_redirected_to ficha_path(assigns(:ficha))
  end

  test "should destroy ficha" do
    assert_difference('Ficha.count', -1) do
      delete :destroy, id: @ficha
    end

    assert_redirected_to fichas_path
  end
end
