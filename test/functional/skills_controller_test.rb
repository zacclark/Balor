require File.dirname(__FILE__) + '/../test_helper'

class SkillsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:skills)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_skill
    assert_difference('Skill.count') do
      post :create, :skill => { }
    end

    assert_redirected_to skill_path(assigns(:skill))
  end

  def test_should_show_skill
    get :show, :id => skills(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => skills(:one).id
    assert_response :success
  end

  def test_should_update_skill
    put :update, :id => skills(:one).id, :skill => { }
    assert_redirected_to skill_path(assigns(:skill))
  end

  def test_should_destroy_skill
    assert_difference('Skill.count', -1) do
      delete :destroy, :id => skills(:one).id
    end

    assert_redirected_to skills_path
  end
end
