require File.dirname(__FILE__) + '/../test_helper'

class SpellsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:spells)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_spell
    assert_difference('Spell.count') do
      post :create, :spell => { }
    end

    assert_redirected_to spell_path(assigns(:spell))
  end

  def test_should_show_spell
    get :show, :id => spells(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => spells(:one).id
    assert_response :success
  end

  def test_should_update_spell
    put :update, :id => spells(:one).id, :spell => { }
    assert_redirected_to spell_path(assigns(:spell))
  end

  def test_should_destroy_spell
    assert_difference('Spell.count', -1) do
      delete :destroy, :id => spells(:one).id
    end

    assert_redirected_to spells_path
  end
end
