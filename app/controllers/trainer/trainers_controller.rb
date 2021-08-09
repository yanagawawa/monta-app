class Trainer::TrainersController < ApplicationController
  def show
  end

  def edit
  end

  def update
  end

  def history
  end

  private
    def trainer_params
      params.require(:trainer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :profile_image, :pr_image, :pr_comment, :prefectures, :email)
    end

end
