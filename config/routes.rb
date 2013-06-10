Profile::Application.routes.draw do
  devise_for :users, :controllers => 
    { :registrations => "user_registrations",
      :passwords => "user_passwords"
    }
 
  namespace 'user' do
    resources 'dashboard', :only => [:index]
    resource 'profile', :only => [:show, :destroy] do
      put :change_password
      get :edit_password
      put :change_username
      get :edit_username
    end
  end
    
  root :to => 'home#index'
end
