class WelcomesController < ApplicationController
  def redirect_to_sign_up
    if signed_in?.blank?
      redirect_to new_user_registration_path
    else
      redirect_to url_shorteners_path
    end
  end
end
