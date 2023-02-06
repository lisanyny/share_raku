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
    get 'customers/confirm', to: 'customers#confirm', as: 'customer_confirm'
    patch 'customer/thanks', to: 'customers#thanks', as: 'thanks'
    get 'customers/information/edit/:id', to: 'customers#edit', as: 'edit_information'
    patch 'customers/information', to: 'customers#update', as: 'update_information'
    get 'events/:id/confirm', to: 'events#confirm', as: 'event_confirm'
    get 'events/:id/guests', to: 'events#guests', as: 'event_guests'
    resources :events, only:[:create, :index, :edit, :update, :new, :destroy, :show] do
     resources :guests, only:[:edit, :update, :create]
     resources :comments, only:[:create, :destroy]
    end

  end

  # 管理者用
  namespace :admin do

    resources :customers, only:[:index, :show, :edit, :update]
    get 'events/:id/confirm', to: 'events#confirm', as: 'event_confirm'
    resources :events, only:[:index, :show, :edit, :update, :destroy] do
     resources :guests, only:[:edit, :update]
    end
    resources :comments, only:[:index, :destroy]
    resources :places, only:[:new, :create, :edit, :update, :index, :destroy]

  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
