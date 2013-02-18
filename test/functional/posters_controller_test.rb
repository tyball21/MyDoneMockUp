require 'test_helper'

class PostersControllerTest < ActionController::TestCase
  setup do
    @poster = posters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poster" do
    assert_difference('Poster.count') do
      post :create, poster: { about: @poster.about, address: @poster.address, city: @poster.city, message_id: @poster.message_id, name: @poster.name, phone: @poster.phone, runner_id: @poster.runner_id, state: @poster.state, task_id: @poster.task_id, zip: @poster.zip }
    end

    assert_redirected_to poster_path(assigns(:poster))
  end

  test "should show poster" do
    get :show, id: @poster
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @poster
    assert_response :success
  end

  test "should update poster" do
    put :update, id: @poster, poster: { about: @poster.about, address: @poster.address, city: @poster.city, message_id: @poster.message_id, name: @poster.name, phone: @poster.phone, runner_id: @poster.runner_id, state: @poster.state, task_id: @poster.task_id, zip: @poster.zip }
    assert_redirected_to poster_path(assigns(:poster))
  end

  test "should destroy poster" do
    assert_difference('Poster.count', -1) do
      delete :destroy, id: @poster
    end

    assert_redirected_to posters_path
  end
end
