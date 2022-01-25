Rails.application.routes.draw do



  devise_for :organizers,:controllers => {
 :registrations => 'organizer/registrations',
 :sessions => 'organizer/sessions'}

  devise_for :users,:controllers => {
 :registrations => 'public/registrations',
 :sessions => 'public/sessions'}

  devise_for :admins,path: 'admin',:controllers => {
 :registrations => 'admin/registrations',
 :sessions => 'admin/sessions'}

 namespace :organizer do
    get 'top' => 'homes#top'
    root to: 'homes#top'
    resources :events
    resources :users, only: [ :index, :show, :edit, :update]
    resources :entrys, only: [ :index, :show, :edit, :update,:create,:destroy]
    resources :maps, only: [ :edit, :update]
     get "rank" => "entrys#rank"

  end

  namespace :admin do
    get 'top' => 'homes#top'
    root to: 'homes#top'
    resources :events
    resources :users, only: [ :index, :show, :edit, :update]
    resources :organizers, only: [ :index, :edit, :update]
     get "rank" => "entrys#rank"

  end


 scope module: :public do
 resources :entrys, only: [ :index, :show, :new, :create]
 resources :users, only: [ :show, :edit, :update]
 resources :events, only: [ :index, :show]
 resource :favorites, only: [:create, :destroy]
 get 'top' => 'homes#top'
 root to: 'homes#top'
 get 'about' => 'homes#about'
 get "rank" => "entrys#rank"
 get "result" => "entrys#result"
 get "search" => "entrys#search"
 get "search_event" => "events#search_event"
 get "search2_event" => "events#search2_event"
 
 get "about" => "homes#about"
 get "running" => "homes#running"
 get "comp" => "entrys#comp"


  end

end
