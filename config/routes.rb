Rails.application.routes.draw do
  get '/' => 'students#index'
  get '/students' => 'students#index'
  get '/students/:id' => 'students#show'
end
