Rails.application.routes.draw do
  devise_for :users
  resources :tags, except: :show
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
   devise_scope :user do
     get'/user/sign_out' => 'deveise/sessions#destroy'
   end
  
  root to:'mypage#index'
  get :mypage, to: 'mypage#index'
end
