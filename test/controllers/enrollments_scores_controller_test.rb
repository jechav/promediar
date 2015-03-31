require 'test_helper'

class EnrollmentsScoresControllerTest < ActionController::TestCase
  setup do
    @enrollments_score = enrollments_scores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:enrollments_scores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create enrollments_score" do
    assert_difference('EnrollmentsScore.count') do
      post :create, enrollments_score: { id_enrollment: @enrollments_score.id_enrollment, id_score: @enrollments_score.id_score }
    end

    assert_redirected_to enrollments_score_path(assigns(:enrollments_score))
  end

  test "should show enrollments_score" do
    get :show, id: @enrollments_score
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @enrollments_score
    assert_response :success
  end

  test "should update enrollments_score" do
    patch :update, id: @enrollments_score, enrollments_score: { id_enrollment: @enrollments_score.id_enrollment, id_score: @enrollments_score.id_score }
    assert_redirected_to enrollments_score_path(assigns(:enrollments_score))
  end

  test "should destroy enrollments_score" do
    assert_difference('EnrollmentsScore.count', -1) do
      delete :destroy, id: @enrollments_score
    end

    assert_redirected_to enrollments_scores_path
  end
end
