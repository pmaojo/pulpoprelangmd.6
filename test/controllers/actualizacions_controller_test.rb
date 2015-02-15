require 'test_helper'

class ActualizacionsControllerTest < ActionController::TestCase
  setup do
    @actualizacion = actualizacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:actualizacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create actualizacion" do
    assert_difference('Actualizacion.count') do
      post :create, actualizacion: { cardio: @actualizacion.cardio, dieta: @actualizacion.dieta, muscular: @actualizacion.muscular, peso: @actualizacion.peso, talla: @actualizacion.talla, user_id: @actualizacion.user_id, user_id: @actualizacion.user_id }
    end

    assert_redirected_to actualizacion_path(assigns(:actualizacion))
  end

  test "should show actualizacion" do
    get :show, id: @actualizacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @actualizacion
    assert_response :success
  end

  test "should update actualizacion" do
    patch :update, id: @actualizacion, actualizacion: { cardio: @actualizacion.cardio, dieta: @actualizacion.dieta, muscular: @actualizacion.muscular, peso: @actualizacion.peso, talla: @actualizacion.talla, user_id: @actualizacion.user_id, user_id: @actualizacion.user_id }
    assert_redirected_to actualizacion_path(assigns(:actualizacion))
  end

  test "should destroy actualizacion" do
    assert_difference('Actualizacion.count', -1) do
      delete :destroy, id: @actualizacion
    end

    assert_redirected_to actualizacions_path
  end
end
