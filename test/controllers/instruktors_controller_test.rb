require 'test_helper'

class InstruktorsControllerTest < ActionController::TestCase
  setup do
    @instruktor = instruktors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instruktors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instruktor" do
    assert_difference('Instruktor.count') do
      post :create, instruktor: { name: @instruktor.name }
    end

    assert_redirected_to instruktor_path(assigns(:instruktor))
  end

  test "should show instruktor" do
    get :show, id: @instruktor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instruktor
    assert_response :success
  end

  test "should update instruktor" do
    patch :update, id: @instruktor, instruktor: { name: @instruktor.name }
    assert_redirected_to instruktor_path(assigns(:instruktor))
  end

  test "should destroy instruktor" do
    assert_difference('Instruktor.count', -1) do
      delete :destroy, id: @instruktor
    end

    assert_redirected_to instruktors_path
  end
end
