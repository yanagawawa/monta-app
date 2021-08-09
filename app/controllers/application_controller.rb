class ApplicationController < ActionController::Base

   # ログイン後の遷移先の指定
  def after_sign_in_path_for(resource)
    case resource
    when Trainer
      trainer_trainer_path
    when User
      customers_my_page_path
    end
  end

  # ログアウト後の遷移先の指定
  def after_sign_out_path_for(resource)
    if resource == :trainer_trainer
      new_trainer_trainer_session_path
    else
      root_path
    end
  end

end
