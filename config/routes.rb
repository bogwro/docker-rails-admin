Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/', as: 'rails_admin'
  # root to: 'rails_admin::Main#dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
