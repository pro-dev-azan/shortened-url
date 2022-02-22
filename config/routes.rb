Rails.application.routes.draw do
  authenticate :user, lambda { |u| u.admin? } do
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  end

  root to: 'welcomes#redirect_to_sign_up'

  devise_for :users

  resources :url_shorteners

  get '/r/:url_shortener', to: 'url_shorteners#redirect', as: 'redirect'
end
