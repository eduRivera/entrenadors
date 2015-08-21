require 'test_helper'

class PartitsControllerTest < ActionController::TestCase
  setup do
    @partit = partits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:partits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create partit" do
    assert_difference('Partit.count') do
      post :create, partit: { comentaris: @partit.comentaris, data_partit: @partit.data_partit, entrenador_id: @partit.entrenador_id, jornada: @partit.jornada, rival: @partit.rival }
    end

    assert_redirected_to partit_path(assigns(:partit))
  end

  test "should show partit" do
    get :show, id: @partit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @partit
    assert_response :success
  end

  test "should update partit" do
    patch :update, id: @partit, partit: { comentaris: @partit.comentaris, data_partit: @partit.data_partit, entrenador_id: @partit.entrenador_id, jornada: @partit.jornada, rival: @partit.rival }
    assert_redirected_to partit_path(assigns(:partit))
  end

  test "should destroy partit" do
    assert_difference('Partit.count', -1) do
      delete :destroy, id: @partit
    end

    assert_redirected_to partits_path
  end
end
