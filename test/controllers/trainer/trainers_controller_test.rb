require 'test_helper'

class Trainer::TrainersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get trainer_trainers_show_url
    assert_response :success
  end

  test "should get edit" do
    get trainer_trainers_edit_url
    assert_response :success
  end

  test "should get update" do
    get trainer_trainers_update_url
    assert_response :success
  end

  test "should get history" do
    get trainer_trainers_history_url
    assert_response :success
  end

end
