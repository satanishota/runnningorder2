Rails.application.routes.draw do
  devise_for :admins,:controllers => {
 :registrations => 'admin/registrations',
 :sessions => 'admin/sessions'}
  
end
