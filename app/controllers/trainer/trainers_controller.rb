class Trainer::TrainersController < ApplicationController
  def show
    @trainer = current_trainer_trainer
  end

  def edit
    @trainer = current_trainer_trainer
  end

  def update
    @trainer = current_trainer_trainer
    if @customer.update(trainer_params)
      redirect_to  trainer_trainer_path(@trainer)
    else
      render 'edit'
    end
  end

  def history
  end

  private
    def trainer_params
      params.require(:trainer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :profile_image, :pr_image, :pr_comment, :prefectures, :email)
    end

end
