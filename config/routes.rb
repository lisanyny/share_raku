Rails.application.routes.draw do


 # 顧客用
  # URL/customers/sign_in ...
  devise_for :customers,skip: [:passwards], controllers:{
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  # 管理者用
  # URL/admin/sign_in ...
  devise_for :admin, skip: [:registrations, :passwards], controllers:{
   sessions: "admin/sessions"
  }

  # 顧客用
  scope module: :public do

    root to: 'homes#about'
    get 'homes/top'
    get 'customers/my_page', to: 'customers#show', as: 'my_page'
    resources :customers, only:[:edit, :update, :confirm, :thanks]
    resources :events, only:[:index, :edit, :update, :new, :create, :confirm, :destroy, :show]
    resources :albums, only:[:index, :show]

  end

  # 管理者用
  namespace :admin do

    resources :customers, only:[:index, :show, :edit, :update]
    resources :events, only:[:index, :show, :edit, :update, :confirm, :destroy]
    resources :comments, only:[:index, :destroy]

  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
