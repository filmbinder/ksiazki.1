require 'test_helper'

class IbuksControllerTest < ActionController::TestCase
  setup do
    @ibuk = ibuks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ibuks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ibuk" do
    assert_difference('Ibuk.count') do
      post :create, ibuk: { price: @ibuk.price, title: @ibuk.title, uid: @ibuk.uid, user_id: @ibuk.user_id }
    end

    assert_redirected_to ibuk_path(assigns(:ibuk))
  end

  test "should show ibuk" do
    get :show, id: @ibuk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ibuk
    assert_response :success
  end

  test "should update ibuk" do
    patch :update, id: @ibuk, ibuk: { price: @ibuk.price, title: @ibuk.title, uid: @ibuk.uid, user_id: @ibuk.user_id }
    assert_redirected_to ibuk_path(assigns(:ibuk))
  end

  test "should destroy ibuk" do
    assert_difference('Ibuk.count', -1) do
      delete :destroy, id: @ibuk
    end

    assert_redirected_to ibuks_path
  end
end
