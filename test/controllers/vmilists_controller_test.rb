require 'test_helper'

class VmilistsControllerTest < ActionController::TestCase
  setup do
    @vmilist = vmilists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vmilists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vmilist" do
    assert_difference('Vmilist.count') do
      post :create, vmilist: { name: @vmilist.name }
    end

    assert_redirected_to vmilist_path(assigns(:vmilist))
  end

  test "should show vmilist" do
    get :show, id: @vmilist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vmilist
    assert_response :success
  end

  test "should update vmilist" do
    patch :update, id: @vmilist, vmilist: { name: @vmilist.name }
    assert_redirected_to vmilist_path(assigns(:vmilist))
  end

  test "should destroy vmilist" do
    assert_difference('Vmilist.count', -1) do
      delete :destroy, id: @vmilist
    end

    assert_redirected_to vmilists_path
  end
end
