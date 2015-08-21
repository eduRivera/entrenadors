require 'test_helper'

class PartitsJugadorsControllerTest < ActionController::TestCase
  setup do
    @partits_jugador = partits_jugadors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:partits_jugadors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create partits_jugador" do
    assert_difference('PartitsJugador.count') do
      post :create, partits_jugador: { gols: @partits_jugador.gols, jugador_id: @partits_jugador.jugador_id, min_disp: @partits_jugador.min_disp, no_convocat: @partits_jugador.no_convocat, partit_id: @partits_jugador.partit_id, partit_no_disp: @partits_jugador.partit_no_disp, targetes_grogues: @partits_jugador.targetes_grogues, targetes_vermelles: @partits_jugador.targetes_vermelles, titular: @partits_jugador.titular }
    end

    assert_redirected_to partits_jugador_path(assigns(:partits_jugador))
  end

  test "should show partits_jugador" do
    get :show, id: @partits_jugador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @partits_jugador
    assert_response :success
  end

  test "should update partits_jugador" do
    patch :update, id: @partits_jugador, partits_jugador: { gols: @partits_jugador.gols, jugador_id: @partits_jugador.jugador_id, min_disp: @partits_jugador.min_disp, no_convocat: @partits_jugador.no_convocat, partit_id: @partits_jugador.partit_id, partit_no_disp: @partits_jugador.partit_no_disp, targetes_grogues: @partits_jugador.targetes_grogues, targetes_vermelles: @partits_jugador.targetes_vermelles, titular: @partits_jugador.titular }
    assert_redirected_to partits_jugador_path(assigns(:partits_jugador))
  end

  test "should destroy partits_jugador" do
    assert_difference('PartitsJugador.count', -1) do
      delete :destroy, id: @partits_jugador
    end

    assert_redirected_to partits_jugadors_path
  end
end
