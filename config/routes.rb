Rails.application.routes.draw do
  get 'products/index'

  get 'products/show'

  devise_for :users
  resources :tags, except: :show
  resources :books
  
  resources :products, only: [:index, :show]
  resources :orders, only: [:new, :create] do
    collection do
      post :confirm
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #[注文]１行目ブロック： 入力、完了、一覧画面のルーティング、２行目ブロック：確認画面
  resources :articles, only: [:index, :new, :create] do
      collection do
          get :confirm
      end
  end
      
  
   devise_scope :user do
     get'/user/sign_out' => 'deveise/sessions#destroy'
   end
  
  root to:'mypage#index'
  get :mypage, to: 'products#index'
  #get :mypage, to: 'mypage#index'
end
