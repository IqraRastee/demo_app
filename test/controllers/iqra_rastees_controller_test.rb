require 'test_helper'

class IqraRasteesControllerTest < ActionController::TestCase
  setup do
    @iqra_rastee = iqra_rastees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:iqra_rastees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create iqra_rastee" do
    assert_difference('IqraRastee.count') do
      post :create, iqra_rastee: {  }
    end

    assert_redirected_to iqra_rastee_path(assigns(:iqra_rastee))
  end

  test "should show iqra_rastee" do
    get :show, id: @iqra_rastee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @iqra_rastee
    assert_response :success
  end

  test "should update iqra_rastee" do
    patch :update, id: @iqra_rastee, iqra_rastee: {  }
    assert_redirected_to iqra_rastee_path(assigns(:iqra_rastee))
  end

  test "should destroy iqra_rastee" do
    assert_difference('IqraRastee.count', -1) do
      delete :destroy, id: @iqra_rastee
    end

    assert_redirected_to iqra_rastees_path
  end
end
