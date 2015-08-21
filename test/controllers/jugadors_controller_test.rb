require 'test_helper'

class JugadorsControllerTest < ActionController::TestCase
  setup do
    @jugador = jugadors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jugadors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jugador" do
    assert_difference('Jugador.count') do
      post :create, jugador: { cama_dominant: @jugador.cama_dominant, categoria: @jugador.categoria, cognoms: @jugador.cognoms, data_neix: @jugador.data_neix, entrenador_id: @jugador.entrenador_id, equips: @jugador.equips, foto: @jugador.foto, nom: @jugador.nom, posicio: @jugador.posicio }
    end

    assert_redirected_to jugador_path(assigns(:jugador))
  end

  test "should show jugador" do
    get :show, id: @jugador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jugador
    assert_response :success
  end

  test "should update jugador" do
    patch :update, id: @jugador, jugador: { cama_dominant: @jugador.cama_dominant, categoria: @jugador.categoria, cognoms: @jugador.cognoms, data_neix: @jugador.data_neix, entrenador_id: @jugador.entrenador_id, equips: @jugador.equips, foto: @jugador.foto, nom: @jugador.nom, posicio: @jugador.posicio }
    assert_redirected_to jugador_path(assigns(:jugador))
  end

  test "should destroy jugador" do
    assert_difference('Jugador.count', -1) do
      delete :destroy, id: @jugador
    end

    assert_redirected_to jugadors_path
  end
end
