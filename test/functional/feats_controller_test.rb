require File.dirname(__FILE__) + '/../test_helper'

class FeatsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:feats)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_feat
    assert_difference('Feat.count') do
      post :create, :feat => { }
    end

    assert_redirected_to feat_path(assigns(:feat))
  end

  def test_should_show_feat
    get :show, :id => feats(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => feats(:one).id
    assert_response :success
  end

  def test_should_update_feat
    put :update, :id => feats(:one).id, :feat => { }
    assert_redirected_to feat_path(assigns(:feat))
  end

  def test_should_destroy_feat
    assert_difference('Feat.count', -1) do
      delete :destroy, :id => feats(:one).id
    end

    assert_redirected_to feats_path
  end
end
