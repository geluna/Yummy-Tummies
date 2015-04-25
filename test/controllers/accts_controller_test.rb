require 'test_helper'

class AcctsControllerTest < ActionController::TestCase
  setup do
    @acct = accts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create acct" do
    assert_difference('Acct.count') do
      post :create, acct: { balance: @acct.balance, credit: @acct.credit, debit: @acct.debit, user_id: @acct.user_id }
    end

    assert_redirected_to acct_path(assigns(:acct))
  end

  test "should show acct" do
    get :show, id: @acct
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @acct
    assert_response :success
  end

  test "should update acct" do
    patch :update, id: @acct, acct: { balance: @acct.balance, credit: @acct.credit, debit: @acct.debit, user_id: @acct.user_id }
    assert_redirected_to acct_path(assigns(:acct))
  end

  test "should destroy acct" do
    assert_difference('Acct.count', -1) do
      delete :destroy, id: @acct
    end

    assert_redirected_to accts_path
  end
end
