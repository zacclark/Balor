require File.dirname(__FILE__) + '/../test_helper'

class CareersControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:careers)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_career
    assert_difference('Career.count') do
      post :create, :career => { }
    end

    assert_redirected_to career_path(assigns(:career))
  end

  def test_should_show_career
    get :show, :id => careers(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => careers(:one).id
    assert_response :success
  end

  def test_should_update_career
    put :update, :id => careers(:one).id, :career => { }
    assert_redirected_to career_path(assigns(:career))
  end

  def test_should_destroy_career
    assert_difference('Career.count', -1) do
      delete :destroy, :id => careers(:one).id
    end

    assert_redirected_to careers_path
  end
end
