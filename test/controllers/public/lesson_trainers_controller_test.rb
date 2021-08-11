require 'test_helper'

class Public::LessonTrainersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get public_lesson_trainers_show_url
    assert_response :success
  end

  test "should get index" do
    get public_lesson_trainers_index_url
    assert_response :success
  end

end
