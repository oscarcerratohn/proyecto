require 'test_helper'

class CalificacionesControllerTest < ActionController::TestCase
  setup do
    @calificacione = calificaciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:calificaciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create calificacione" do
    assert_difference('Calificacione.count') do
      post :create, calificacione: { Asignatura: @calificacione.Asignatura, Catedratico: @calificacione.Catedratico, Nota: @calificacione.Nota, Observaciones: @calificacione.Observaciones }
    end

    assert_redirected_to calificacione_path(assigns(:calificacione))
  end

  test "should show calificacione" do
    get :show, id: @calificacione
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @calificacione
    assert_response :success
  end

  test "should update calificacione" do
    put :update, id: @calificacione, calificacione: { Asignatura: @calificacione.Asignatura, Catedratico: @calificacione.Catedratico, Nota: @calificacione.Nota, Observaciones: @calificacione.Observaciones }
    assert_redirected_to calificacione_path(assigns(:calificacione))
  end

  test "should destroy calificacione" do
    assert_difference('Calificacione.count', -1) do
      delete :destroy, id: @calificacione
    end

    assert_redirected_to calificaciones_path
  end
end
