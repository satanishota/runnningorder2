Rails.application.routes.draw do

  
  devise_for :users,:controllers => {
 :registrations => 'public/registrations',
 :sessions => 'public/sessions'}

  devise_for :admins,path: 'admin',:controllers => {
 :registrations => 'admin/registrations',
 :sessions => 'admin/sessions'}
 
  namespace :admin do
    get 'top' => 'homes#top'
    root to: 'homes#top'
    resources :events
  end


 scope module: :public do
 get 'top' => 'homes#top'
 root to: 'homes#top'
 get 'about' => 'homes#about'

  end
end
