require 'test_helper'

class RecipelistsControllerTest < ActionController::TestCase
  setup do
    @recipelist = recipelists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipelists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recipelist" do
    assert_difference('Recipelist.count') do
      post :create, recipelist: { ingredients: @recipelist.ingredients, name: @recipelist.name, price: @recipelist.price }
    end

    assert_redirected_to recipelist_path(assigns(:recipelist))
  end

  test "should show recipelist" do
    get :show, id: @recipelist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recipelist
    assert_response :success
  end

  test "should update recipelist" do
    patch :update, id: @recipelist, recipelist: { ingredients: @recipelist.ingredients, name: @recipelist.name, price: @recipelist.price }
    assert_redirected_to recipelist_path(assigns(:recipelist))
  end

  test "should destroy recipelist" do
    assert_difference('Recipelist.count', -1) do
      delete :destroy, id: @recipelist
    end

    assert_redirected_to recipelists_path
  end
end
